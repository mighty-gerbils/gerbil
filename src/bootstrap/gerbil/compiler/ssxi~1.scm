(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210384_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210391_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210393_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210395_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210397_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210399_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210411_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210413_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210415_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210417_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210419_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203802%_)
        (let* ((_%g203806203824%_
                (lambda (_%g203807203820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203807203820%_))))
               (_%g203805203879%_
                (lambda (_%g203807203828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203807203828%_))
                      (let ((_%e203810203831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203807203828%_))))
                        (let ((_%hd203811203835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203810203831%_)))
                              (_%tl203812203838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203810203831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203812203838%_))
                              (let ((_%e203813203841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203812203838%_))))
                                (let ((_%hd203814203845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203813203841%_)))
                                      (_%tl203815203848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203813203841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203815203848%_))
                                      (let ((_%e203816203851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203815203848%_))))
                                        (let ((_%hd203817203855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203816203851%_)))
                                              (_%tl203818203858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203816203851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203818203858%_))
                                              ((lambda (_%L203861%_
                                                        _%L203863%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203863%_))
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
                               (cons _%L203863%_ '()))
                         (cons _%L203861%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203806203824%_
                                                      _%g203807203828%_)))
                                               _%hd203817203855%_
                                               _%hd203814203845%_)
                                              (_%g203806203824%_
                                               _%g203807203828%_))))
                                      (_%g203806203824%_ _%g203807203828%_))))
                              (_%g203806203824%_ _%g203807203828%_))))
                      (_%g203806203824%_ _%g203807203828%_)))))
          (_%g203805203879%_ _%$stx203802%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203883%_)
        (let* ((_%g203887203905%_
                (lambda (_%g203888203901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203888203901%_))))
               (_%g203886203960%_
                (lambda (_%g203888203909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203888203909%_))
                      (let ((_%e203891203912%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203888203909%_))))
                        (let ((_%hd203892203916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203891203912%_)))
                              (_%tl203893203919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203891203912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203893203919%_))
                              (let ((_%e203894203922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203893203919%_))))
                                (let ((_%hd203895203926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203894203922%_)))
                                      (_%tl203896203929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203894203922%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203896203929%_))
                                      (let ((_%e203897203932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203896203929%_))))
                                        (let ((_%hd203898203936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203897203932%_)))
                                              (_%tl203899203939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203897203932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203899203939%_))
                                              ((lambda (_%L203942%_
                                                        _%L203944%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203944%_))
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
                               (cons _%L203944%_ '()))
                         (cons _%L203942%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203887203905%_
                                                      _%g203888203909%_)))
                                               _%hd203898203936%_
                                               _%hd203895203926%_)
                                              (_%g203887203905%_
                                               _%g203888203909%_))))
                                      (_%g203887203905%_ _%g203888203909%_))))
                              (_%g203887203905%_ _%g203888203909%_))))
                      (_%g203887203905%_ _%g203888203909%_)))))
          (_%g203886203960%_ _%$stx203883%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx203964%_)
        (let* ((_%g203968203997%_
                (lambda (_%g203969203993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203969203993%_))))
               (_%g203967204097%_
                (lambda (_%g203969204001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203969204001%_))
                      (let ((_%e203972204004%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203969204001%_))))
                        (let ((_%hd203973204008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203972204004%_)))
                              (_%tl203974204011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203972204004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203974204011%_))
                              (let ((_g210362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203974204011%_
                                        '0))))
                                (begin
                                  (let ((_g210363_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210362_)
                                               (##values-length _g210362_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210363_ 2)))
                                        (error "Context expects 2 values"
                                               _g210363_)))
                                  (let ((_%target203975204014%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210362_ 0)))
                                        (_%tl203977204017%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210362_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203977204017%_))
                                        (letrec ((_%loop203978204020%_
                                                  (lambda (_%hd203976204024%_
                                                           _%type203982204027%_
                                                           _%symbol203983204029%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203976204024%_))
                                                        (let ((_%e203979204032%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203976204024%_))))
                  (let ((_%lp-hd203980204036%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203979204032%_)))
                        (_%lp-tl203981204039%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203979204032%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203980204036%_))
                        (let ((_%e203986204042%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203980204036%_))))
                          (let ((_%hd203987204046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203986204042%_)))
                                (_%tl203988204049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203986204042%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203988204049%_))
                                (let ((_%e203989204052%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203988204049%_))))
                                  (let ((_%hd203990204056%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203989204052%_)))
                                        (_%tl203991204059%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203989204052%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203991204059%_))
                                        (_%loop203978204020%_
                                         _%lp-tl203981204039%_
                                         (cons _%hd203990204056%_
                                               _%type203982204027%_)
                                         (cons _%hd203987204046%_
                                               _%symbol203983204029%_))
                                        (_%g203968203997%_
                                         _%g203969204001%_))))
                                (_%g203968203997%_ _%g203969204001%_))))
                        (_%g203968203997%_ _%g203969204001%_))))
                (let ((_%type203984204062%_ (reverse _%type203982204027%_))
                      (_%symbol203985204065%_
                       (reverse _%symbol203983204029%_)))
                  ((lambda (_%L204068%_ _%L204070%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204068%_
                                _%L204070%_))
                             (let ((__tmp210364
                                    (lambda (_%g204085204089%_
                                             _%g204086204092%_
                                             _%g204087204094%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g204086204092%_
                                                        (cons _%g204085204089%_
                                                              '())))
                                            _%g204087204094%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210364
                                '()
                                _%L204068%_
                                _%L204070%_)))))
                   _%type203984204062%_
                   _%symbol203985204065%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203978204020%_
                                           _%target203975204014%_
                                           '()
                                           '()))
                                        (_%g203968203997%_
                                         _%g203969204001%_)))))
                              (_%g203968203997%_ _%g203969204001%_))))
                      (_%g203968203997%_ _%g203969204001%_)))))
          (_%g203967204097%_ _%$stx203964%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204102%_)
        (let* ((_%__stx209673209674%_ _%$stx204102%_)
               (_%g204107204149%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209673209674%_)))))
          (let ((_%__kont209676209677%_
                 (lambda (_%L204277%_ _%L204279%_ _%L204280%_ _%L204281%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204281%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204280%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204279%_ '()))
                                           (cons _%L204277%_ '())))))))
                (_%__kont209678209679%_
                 (lambda (_%L204196%_ _%L204198%_ _%L204199%_ _%L204200%_)
                   (cons _%L204200%_
                         (cons _%L204199%_
                               (cons _%L204198%_
                                     (cons _%L204196%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209712209713%_
                   (lambda (_%e204113204227%_
                            _%hd204114204231%_
                            _%tl204115204234%_
                            _%e204116204237%_
                            _%hd204117204241%_
                            _%tl204118204244%_
                            _%e204119204247%_
                            _%hd204120204251%_
                            _%tl204121204254%_
                            _%e204122204257%_
                            _%hd204123204261%_
                            _%tl204124204264%_
                            _%e204125204267%_
                            _%hd204126204271%_
                            _%tl204127204274%_)
                     (let ((_%L204277%_ _%hd204126204271%_)
                           (_%L204279%_ _%hd204123204261%_)
                           (_%L204280%_ _%hd204120204251%_)
                           (_%L204281%_ _%hd204117204241%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204281%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204280%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204279%_)))
                           (_%__kont209676209677%_
                            _%L204277%_
                            _%L204279%_
                            _%L204280%_
                            _%L204281%_)
                           (let ()
                             (declare (not safe))
                             (_%g204107204149%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209673209674%_))
                  (let ((_%e204113204227%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209673209674%_))))
                    (let ((_%tl204115204234%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204113204227%_)))
                          (_%hd204114204231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204113204227%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204115204234%_))
                          (let ((_%e204116204237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204115204234%_))))
                            (let ((_%tl204118204244%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204116204237%_)))
                                  (_%hd204117204241%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204116204237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204118204244%_))
                                  (let ((_%e204119204247%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204118204244%_))))
                                    (let ((_%tl204121204254%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204119204247%_)))
                                          (_%hd204120204251%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204119204247%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204121204254%_))
                                          (let ((_%e204122204257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204121204254%_))))
                                            (let ((_%tl204124204264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204122204257%_)))
                                                  (_%hd204123204261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204122204257%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204124204264%_))
                                                  (let ((_%e204125204267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204124204264%_))))
                                                    (let ((_%tl204127204274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204125204267%_)))
                                                          (_%hd204126204271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204125204267%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204127204274%_))
                                                          (_%__match209712209713%_
                                                           _%e204113204227%_
                                                           _%hd204114204231%_
                                                           _%tl204115204234%_
                                                           _%e204116204237%_
                                                           _%hd204117204241%_
                                                           _%tl204118204244%_
                                                           _%e204119204247%_
                                                           _%hd204120204251%_
                                                           _%tl204121204254%_
                                                           _%e204122204257%_
                                                           _%hd204123204261%_
                                                           _%tl204124204264%_
                                                           _%e204125204267%_
                                                           _%hd204126204271%_
                                                           _%tl204127204274%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204107204149%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204124204264%_))
                                                      (_%__kont209678209679%_
                                                       _%hd204123204261%_
                                                       _%hd204120204251%_
                                                       _%hd204117204241%_
                                                       _%hd204114204231%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204107204149%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204107204149%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204107204149%_)))))
                          (let () (declare (not safe)) (_%g204107204149%_)))))
                  (let () (declare (not safe)) (_%g204107204149%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204306%_)
        (let* ((_%g204310204345%_
                (lambda (_%g204311204341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204311204341%_))))
               (_%g204309204464%_
                (lambda (_%g204311204349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204311204349%_))
                      (let ((_%e204315204352%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204311204349%_))))
                        (let ((_%hd204316204356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204315204352%_)))
                              (_%tl204317204359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204315204352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204317204359%_))
                              (let ((_g210365_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204317204359%_
                                        '0))))
                                (begin
                                  (let ((_g210366_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210365_)
                                               (##values-length _g210365_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210366_ 2)))
                                        (error "Context expects 2 values"
                                               _g210366_)))
                                  (let ((_%target204318204362%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210365_ 0)))
                                        (_%tl204320204365%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210365_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204320204365%_))
                                        (letrec ((_%loop204321204368%_
                                                  (lambda (_%hd204319204372%_
                                                           _%symbol204325204375%_
                                                           _%method204326204377%_
                                                           _%type-t204327204379%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204319204372%_))
                                                        (let ((_%e204322204382%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204319204372%_))))
                  (let ((_%lp-hd204323204386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204322204382%_)))
                        (_%lp-tl204324204389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204322204382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204323204386%_))
                        (let ((_%e204331204392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204323204386%_))))
                          (let ((_%hd204332204396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204331204392%_)))
                                (_%tl204333204399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204331204392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204333204399%_))
                                (let ((_%e204334204402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204333204399%_))))
                                  (let ((_%hd204335204406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204334204402%_)))
                                        (_%tl204336204409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204334204402%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204336204409%_))
                                        (let ((_%e204337204412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204336204409%_))))
                                          (let ((_%hd204338204416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204337204412%_)))
                                                (_%tl204339204419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204337204412%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204339204419%_))
                                                (_%loop204321204368%_
                                                 _%lp-tl204324204389%_
                                                 (cons _%hd204338204416%_
                                                       _%symbol204325204375%_)
                                                 (cons _%hd204335204406%_
                                                       _%method204326204377%_)
                                                 (cons _%hd204332204396%_
                                                       _%type-t204327204379%_))
                                                (_%g204310204345%_
                                                 _%g204311204349%_))))
                                        (_%g204310204345%_
                                         _%g204311204349%_))))
                                (_%g204310204345%_ _%g204311204349%_))))
                        (_%g204310204345%_ _%g204311204349%_))))
                (let ((_%symbol204328204422%_ (reverse _%symbol204325204375%_))
                      (_%method204329204425%_ (reverse _%method204326204377%_))
                      (_%type-t204330204427%_
                       (reverse _%type-t204327204379%_)))
                  ((lambda (_%L204430%_ _%L204432%_ _%L204433%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204430%_
                                _%L204432%_
                                _%L204433%_))
                             (let ((__tmp210367
                                    (lambda (_%g204449204454%_
                                             _%g204450204457%_
                                             _%g204451204459%_
                                             _%g204452204461%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204451204459%_
                                                        (cons _%g204450204457%_
                                                              (cons _%g204449204454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204452204461%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210367
                                '()
                                _%L204430%_
                                _%L204432%_
                                _%L204433%_)))))
                   _%symbol204328204422%_
                   _%method204329204425%_
                   _%type-t204330204427%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204321204368%_
                                           _%target204318204362%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204310204345%_
                                         _%g204311204349%_)))))
                              (_%g204310204345%_ _%g204311204349%_))))
                      (_%g204310204345%_ _%g204311204349%_)))))
          (_%g204309204464%_ _%$stx204306%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204469%_)
        (let* ((_%g204473204506%_
                (lambda (_%g204474204502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204474204502%_))))
               (_%g204472204620%_
                (lambda (_%g204474204510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204474204510%_))
                      (let ((_%e204478204513%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204474204510%_))))
                        (let ((_%hd204479204517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204478204513%_)))
                              (_%tl204480204520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204478204513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204480204520%_))
                              (let ((_%e204481204523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204480204520%_))))
                                (let ((_%hd204482204527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204481204523%_)))
                                      (_%tl204483204530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204481204523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204483204530%_))
                                      (let ((_g210368_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204483204530%_
                                                '0))))
                                        (begin
                                          (let ((_g210369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210368_)
                                                       (##values-length
                                                        _g210368_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210369_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210369_)))
                                          (let ((_%target204484204533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210368_ 0)))
                                                (_%tl204486204536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210368_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204486204536%_))
                                                (letrec ((_%loop204487204539%_
                                                          (lambda (_%hd204485204543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204491204546%_
                           _%method204492204548%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204485204543%_))
                        (let ((_%e204488204551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204485204543%_))))
                          (let ((_%lp-hd204489204555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204488204551%_)))
                                (_%lp-tl204490204558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204488204551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204489204555%_))
                                (let ((_%e204495204561%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204489204555%_))))
                                  (let ((_%hd204496204565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204495204561%_)))
                                        (_%tl204497204568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204495204561%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204497204568%_))
                                        (let ((_%e204498204571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204497204568%_))))
                                          (let ((_%hd204499204575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204498204571%_)))
                                                (_%tl204500204578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204498204571%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204500204578%_))
                                                (_%loop204487204539%_
                                                 _%lp-tl204490204558%_
                                                 (cons _%hd204499204575%_
                                                       _%symbol204491204546%_)
                                                 (cons _%hd204496204565%_
                                                       _%method204492204548%_))
                                                (_%g204473204506%_
                                                 _%g204474204510%_))))
                                        (_%g204473204506%_
                                         _%g204474204510%_))))
                                (_%g204473204506%_ _%g204474204510%_))))
                        (let ((_%symbol204493204581%_
                               (reverse _%symbol204491204546%_))
                              (_%method204494204584%_
                               (reverse _%method204492204548%_)))
                          ((lambda (_%L204587%_ _%L204589%_ _%L204590%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204587%_
                                        _%L204589%_))
                                     (let ((__tmp210370
                                            (lambda (_%g204608204612%_
                                                     _%g204609204615%_
                                                     _%g204610204617%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204590%_
                                                                (cons _%g204609204615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204608204612%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204610204617%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210370
                                        '()
                                        _%L204587%_
                                        _%L204589%_)))))
                           _%symbol204493204581%_
                           _%method204494204584%_
                           _%hd204482204527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204487204539%_
                                                   _%target204484204533%_
                                                   '()
                                                   '()))
                                                (_%g204473204506%_
                                                 _%g204474204510%_)))))
                                      (_%g204473204506%_ _%g204474204510%_))))
                              (_%g204473204506%_ _%g204474204510%_))))
                      (_%g204473204506%_ _%g204474204510%_)))))
          (_%g204472204620%_ _%$stx204469%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204625%_)
        (let* ((_%g204629204643%_
                (lambda (_%g204630204639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204630204639%_))))
               (_%g204628204684%_
                (lambda (_%g204630204647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204630204647%_))
                      (let ((_%e204632204650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204630204647%_))))
                        (let ((_%hd204633204654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204632204650%_)))
                              (_%tl204634204657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204632204650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204634204657%_))
                              (let ((_%e204635204660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204634204657%_))))
                                (let ((_%hd204636204664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204635204660%_)))
                                      (_%tl204637204667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204635204660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204637204667%_))
                                      ((lambda (_%L204670%_)
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
                                                           (cons _%L204670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204636204664%_)
                                      (_%g204629204643%_ _%g204630204647%_))))
                              (_%g204629204643%_ _%g204630204647%_))))
                      (_%g204629204643%_ _%g204630204647%_)))))
          (_%g204628204684%_ _%$stx204625%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204688%_)
        (let* ((_%g204692204746%_
                (lambda (_%g204693204742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204693204742%_))))
               (_%g204691204927%_
                (lambda (_%g204693204750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204693204750%_))
                      (let ((_%e204705204753%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204693204750%_))))
                        (let ((_%hd204706204757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204705204753%_)))
                              (_%tl204707204760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204705204753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204707204760%_))
                              (let ((_%e204708204763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204707204760%_))))
                                (let ((_%hd204709204767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204708204763%_)))
                                      (_%tl204710204770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204708204763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204710204770%_))
                                      (let ((_%e204711204773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204710204770%_))))
                                        (let ((_%hd204712204777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204711204773%_)))
                                              (_%tl204713204780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204711204773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204713204780%_))
                                              (let ((_%e204714204783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204713204780%_))))
                                                (let ((_%hd204715204787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204714204783%_)))
                                                      (_%tl204716204790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204714204783%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204716204790%_))
                                                      (let ((_%e204717204793%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204716204790%_))))
                (let ((_%hd204718204797%_
                       (let () (declare (not safe)) (##car _%e204717204793%_)))
                      (_%tl204719204800%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204717204793%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204719204800%_))
                      (let ((_%e204720204803%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204719204800%_))))
                        (let ((_%hd204721204807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204720204803%_)))
                              (_%tl204722204810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204720204803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204722204810%_))
                              (let ((_%e204723204813%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204722204810%_))))
                                (let ((_%hd204724204817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204723204813%_)))
                                      (_%tl204725204820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204723204813%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204725204820%_))
                                      (let ((_%e204726204823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204725204820%_))))
                                        (let ((_%hd204727204827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204726204823%_)))
                                              (_%tl204728204830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204726204823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204728204830%_))
                                              (let ((_%e204729204833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204728204830%_))))
                                                (let ((_%hd204730204837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204729204833%_)))
                                                      (_%tl204731204840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204729204833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204731204840%_))
                                                      (let ((_%e204732204843%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204731204840%_))))
                (let ((_%hd204733204847%_
                       (let () (declare (not safe)) (##car _%e204732204843%_)))
                      (_%tl204734204850%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204732204843%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204734204850%_))
                      (let ((_%e204735204853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204734204850%_))))
                        (let ((_%hd204736204857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204735204853%_)))
                              (_%tl204737204860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204735204853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204737204860%_))
                              (let ((_%e204738204863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204737204860%_))))
                                (let ((_%hd204739204867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204738204863%_)))
                                      (_%tl204740204870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204738204863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204740204870%_))
                                      ((lambda (_%L204873%_
                                                _%L204875%_
                                                _%L204876%_
                                                _%L204877%_
                                                _%L204878%_
                                                _%L204879%_
                                                _%L204880%_
                                                _%L204881%_
                                                _%L204882%_
                                                _%L204883%_
                                                _%L204884%_)
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
                                                           (cons _%L204884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204883%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204882%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204881%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204880%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204879%_ '()))
                                           (cons _%L204878%_
                                                 (cons _%L204877%_
                                                       (cons _%L204876%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204875%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204873%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204739204867%_
                                       _%hd204736204857%_
                                       _%hd204733204847%_
                                       _%hd204730204837%_
                                       _%hd204727204827%_
                                       _%hd204724204817%_
                                       _%hd204721204807%_
                                       _%hd204718204797%_
                                       _%hd204715204787%_
                                       _%hd204712204777%_
                                       _%hd204709204767%_)
                                      (_%g204692204746%_ _%g204693204750%_))))
                              (_%g204692204746%_ _%g204693204750%_))))
                      (_%g204692204746%_ _%g204693204750%_))))
              (_%g204692204746%_ _%g204693204750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204692204746%_
                                               _%g204693204750%_))))
                                      (_%g204692204746%_ _%g204693204750%_))))
                              (_%g204692204746%_ _%g204693204750%_))))
                      (_%g204692204746%_ _%g204693204750%_))))
              (_%g204692204746%_ _%g204693204750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204692204746%_
                                               _%g204693204750%_))))
                                      (_%g204692204746%_ _%g204693204750%_))))
                              (_%g204692204746%_ _%g204693204750%_))))
                      (_%g204692204746%_ _%g204693204750%_)))))
          (_%g204691204927%_ _%$stx204688%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx204931%_)
        (let* ((_%g204935204949%_
                (lambda (_%g204936204945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204936204945%_))))
               (_%g204934204990%_
                (lambda (_%g204936204953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204936204953%_))
                      (let ((_%e204938204956%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204936204953%_))))
                        (let ((_%hd204939204960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204938204956%_)))
                              (_%tl204940204963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204938204956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204940204963%_))
                              (let ((_%e204941204966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204940204963%_))))
                                (let ((_%hd204942204970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204941204966%_)))
                                      (_%tl204943204973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204941204966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204943204973%_))
                                      ((lambda (_%L204976%_)
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
                                                           (cons _%L204976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204942204970%_)
                                      (_%g204935204949%_ _%g204936204953%_))))
                              (_%g204935204949%_ _%g204936204953%_))))
                      (_%g204935204949%_ _%g204936204953%_)))))
          (_%g204934204990%_ _%$stx204931%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204994%_)
        (let* ((_%g204998205012%_
                (lambda (_%g204999205008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204999205008%_))))
               (_%g204997205053%_
                (lambda (_%g204999205016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204999205016%_))
                      (let ((_%e205001205019%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204999205016%_))))
                        (let ((_%hd205002205023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205001205019%_)))
                              (_%tl205003205026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205001205019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205003205026%_))
                              (let ((_%e205004205029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205003205026%_))))
                                (let ((_%hd205005205033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205004205029%_)))
                                      (_%tl205006205036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205004205029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205006205036%_))
                                      ((lambda (_%L205039%_)
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
                                                           (cons _%L205039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205005205033%_)
                                      (_%g204998205012%_ _%g204999205016%_))))
                              (_%g204998205012%_ _%g204999205016%_))))
                      (_%g204998205012%_ _%g204999205016%_)))))
          (_%g204997205053%_ _%$stx204994%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx205057%_)
        (let* ((_%g205061205083%_
                (lambda (_%g205062205079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205062205079%_))))
               (_%g205060205152%_
                (lambda (_%g205062205087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205062205087%_))
                      (let ((_%e205066205090%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205062205087%_))))
                        (let ((_%hd205067205094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205066205090%_)))
                              (_%tl205068205097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205066205090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205068205097%_))
                              (let ((_%e205069205100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205068205097%_))))
                                (let ((_%hd205070205104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205069205100%_)))
                                      (_%tl205071205107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205069205100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205071205107%_))
                                      (let ((_%e205072205110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205071205107%_))))
                                        (let ((_%hd205073205114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205072205110%_)))
                                              (_%tl205074205117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205072205110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205074205117%_))
                                              (let ((_%e205075205120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205074205117%_))))
                                                (let ((_%hd205076205124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205075205120%_)))
                                                      (_%tl205077205127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205075205120%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205077205127%_))
                                                      ((lambda (_%L205130%_
                                                                _%L205132%_
                                                                _%L205133%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205133%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205132%_ '()))
                                   (cons _%L205130%_ '())))))
               _%hd205076205124%_
               _%hd205073205114%_
               _%hd205070205104%_)
              (_%g205061205083%_ _%g205062205087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205061205083%_
                                               _%g205062205087%_))))
                                      (_%g205061205083%_ _%g205062205087%_))))
                              (_%g205061205083%_ _%g205062205087%_))))
                      (_%g205061205083%_ _%g205062205087%_)))))
          (_%g205060205152%_ _%$stx205057%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205156%_)
        (let* ((_%g205160205182%_
                (lambda (_%g205161205178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205161205178%_))))
               (_%g205159205251%_
                (lambda (_%g205161205186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205161205186%_))
                      (let ((_%e205165205189%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205161205186%_))))
                        (let ((_%hd205166205193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205165205189%_)))
                              (_%tl205167205196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205165205189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205167205196%_))
                              (let ((_%e205168205199%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205167205196%_))))
                                (let ((_%hd205169205203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205168205199%_)))
                                      (_%tl205170205206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205168205199%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205170205206%_))
                                      (let ((_%e205171205209%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205170205206%_))))
                                        (let ((_%hd205172205213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205171205209%_)))
                                              (_%tl205173205216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205171205209%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205173205216%_))
                                              (let ((_%e205174205219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205173205216%_))))
                                                (let ((_%hd205175205223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205174205219%_)))
                                                      (_%tl205176205226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205174205219%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205176205226%_))
                                                      ((lambda (_%L205229%_
                                                                _%L205231%_
                                                                _%L205232%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205232%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205231%_ '()))
                                   (cons _%L205229%_ '())))))
               _%hd205175205223%_
               _%hd205172205213%_
               _%hd205169205203%_)
              (_%g205160205182%_ _%g205161205186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205160205182%_
                                               _%g205161205186%_))))
                                      (_%g205160205182%_ _%g205161205186%_))))
                              (_%g205160205182%_ _%g205161205186%_))))
                      (_%g205160205182%_ _%g205161205186%_)))))
          (_%g205159205251%_ _%$stx205156%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205255%_)
        (let* ((_%g205259205273%_
                (lambda (_%g205260205269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205260205269%_))))
               (_%g205258205314%_
                (lambda (_%g205260205277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205260205277%_))
                      (let ((_%e205262205280%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205260205277%_))))
                        (let ((_%hd205263205284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205262205280%_)))
                              (_%tl205264205287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205262205280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205264205287%_))
                              (let ((_%e205265205290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205264205287%_))))
                                (let ((_%hd205266205294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205265205290%_)))
                                      (_%tl205267205297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205265205290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205267205297%_))
                                      ((lambda (_%L205300%_)
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
                                                           (cons _%L205300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205266205294%_)
                                      (_%g205259205273%_ _%g205260205277%_))))
                              (_%g205259205273%_ _%g205260205277%_))))
                      (_%g205259205273%_ _%g205260205277%_)))))
          (_%g205258205314%_ _%$stx205255%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205318%_)
        (let* ((_%g205322205340%_
                (lambda (_%g205323205336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205323205336%_))))
               (_%g205321205395%_
                (lambda (_%g205323205344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205323205344%_))
                      (let ((_%e205326205347%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205323205344%_))))
                        (let ((_%hd205327205351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205326205347%_)))
                              (_%tl205328205354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205326205347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205328205354%_))
                              (let ((_%e205329205357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205328205354%_))))
                                (let ((_%hd205330205361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205329205357%_)))
                                      (_%tl205331205364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205329205357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205331205364%_))
                                      (let ((_%e205332205367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205331205364%_))))
                                        (let ((_%hd205333205371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205332205367%_)))
                                              (_%tl205334205374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205332205367%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205334205374%_))
                                              ((lambda (_%L205377%_
                                                        _%L205379%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205379%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205377%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205333205371%_
                                               _%hd205330205361%_)
                                              (_%g205322205340%_
                                               _%g205323205344%_))))
                                      (_%g205322205340%_ _%g205323205344%_))))
                              (_%g205322205340%_ _%g205323205344%_))))
                      (_%g205322205340%_ _%g205323205344%_)))))
          (_%g205321205395%_ _%$stx205318%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205399%_)
        (let* ((_%__stx209741209742%_ _%$stx205399%_)
               (_%g205406205467%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209741209742%_)))))
          (let ((_%__kont209744209745%_
                 (lambda (_%L205705%_ _%L205707%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205707%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205705%_ '()))
                                     '())))))
                (_%__kont209746209747%_
                 (lambda (_%L205644%_ _%L205646%_ _%L205647%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205647%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205646%_ '()))
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
                                 (cons _%L205644%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209748209749%_
                 (lambda (_%L205568%_ _%L205570%_)
                   (cons _%L205570%_ (cons _%L205568%_ (cons '#f '())))))
                (_%__kont209750209751%_
                 (lambda (_%L205518%_ _%L205520%_ _%L205521%_)
                   (cons _%L205521%_
                         (cons _%L205520%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205518%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209741209742%_))
                (let ((_%e205410205675%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209741209742%_))))
                  (let ((_%tl205412205682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205410205675%_)))
                        (_%hd205411205679%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205410205675%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205412205682%_))
                        (let ((_%e205413205685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205412205682%_))))
                          (let ((_%tl205415205692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205413205685%_)))
                                (_%hd205414205689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205413205685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205415205692%_))
                                (let ((_%e205416205695%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205415205692%_))))
                                  (let ((_%tl205418205702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205416205695%_)))
                                        (_%hd205417205699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205416205695%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205418205702%_))
                                        (_%__kont209744209745%_
                                         _%hd205417205699%_
                                         _%hd205414205689%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205418205702%_))
                                            (let ((_%e205431205620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205418205702%_))))
                                              (let ((_%tl205433205627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205431205620%_)))
                                                    (_%hd205432205624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205431205620%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205432205624%_))
                                                    (let ((_%e205434205630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205432205624%_))))
                                                      (if (equal? _%e205434205630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205433205627%_))
                      (let ((_%e205435205634%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205433205627%_))))
                        (let ((_%tl205437205641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205435205634%_)))
                              (_%hd205436205638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205435205634%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205437205641%_))
                              (_%__kont209746209747%_
                               _%hd205436205638%_
                               _%hd205417205699%_
                               _%hd205414205689%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205417205699%_))
                                  (let ((_%e205458205504%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205417205699%_))))
                                    (declare (not safe))
                                    (_%g205406205467%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205406205467%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205417205699%_))
                          (let ((_%e205458205504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205417205699%_))))
                            (if (equal? _%e205458205504%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205433205627%_))
                                    (_%__kont209750209751%_
                                     _%hd205432205624%_
                                     _%hd205414205689%_
                                     _%hd205411205679%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205406205467%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205406205467%_))))
                          (let () (declare (not safe)) (_%g205406205467%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205417205699%_))
                      (let ((_%e205458205504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205417205699%_))))
                        (if (equal? _%e205458205504%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205433205627%_))
                                (_%__kont209750209751%_
                                 _%hd205432205624%_
                                 _%hd205414205689%_
                                 _%hd205411205679%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205406205467%_)))
                            (let () (declare (not safe)) (_%g205406205467%_))))
                      (let () (declare (not safe)) (_%g205406205467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205417205699%_))
                                                        (let ((_%e205458205504%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205417205699%_))))
                  (if (equal? _%e205458205504%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205433205627%_))
                          (_%__kont209750209751%_
                           _%hd205432205624%_
                           _%hd205414205689%_
                           _%hd205411205679%_)
                          (let () (declare (not safe)) (_%g205406205467%_)))
                      (let () (declare (not safe)) (_%g205406205467%_))))
                (let () (declare (not safe)) (_%g205406205467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205417205699%_))
                                                (let ((_%e205458205504%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205417205699%_))))
                                                  (declare (not safe))
                                                  (_%g205406205467%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205406205467%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205415205692%_))
                                    (_%__kont209748209749%_
                                     _%hd205414205689%_
                                     _%hd205411205679%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205406205467%_))))))
                        (let () (declare (not safe)) (_%g205406205467%_)))))
                (let () (declare (not safe)) (_%g205406205467%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205726%_)
        (let* ((_%g205730205759%_
                (lambda (_%g205731205755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205731205755%_))))
               (_%g205729205868%_
                (lambda (_%g205731205763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205731205763%_))
                      (let ((_%e205733205766%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205731205763%_))))
                        (let ((_%hd205734205770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205733205766%_)))
                              (_%tl205735205773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205733205766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205735205773%_))
                              (let ((_g210371_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205735205773%_
                                        '0))))
                                (begin
                                  (let ((_g210372_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210371_)
                                               (##values-length _g210371_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210372_ 2)))
                                        (error "Context expects 2 values"
                                               _g210372_)))
                                  (let ((_%target205736205776%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210371_ 0)))
                                        (_%tl205738205779%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210371_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205738205779%_))
                                        (letrec ((_%loop205739205782%_
                                                  (lambda (_%hd205737205786%_
                                                           _%clause205743205789%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205737205786%_))
                                                        (let ((_%e205740205792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205737205786%_))))
                  (let ((_%lp-hd205741205796%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205740205792%_)))
                        (_%lp-tl205742205799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205740205792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205741205796%_))
                        (let ((_g210373_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205741205796%_
                                  '0))))
                          (begin
                            (let ((_g210374_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210373_)
                                         (##values-length _g210373_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210374_ 2)))
                                  (error "Context expects 2 values"
                                         _g210374_)))
                            (let ((_%target205745205802%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210373_ 0)))
                                  (_%tl205747205805%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210373_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205747205805%_))
                                  (letrec ((_%loop205748205808%_
                                            (lambda (_%hd205746205812%_
                                                     _%clause205752205815%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205746205812%_))
                                                  (let ((_%e205749205818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205746205812%_))))
                                                    (let ((_%lp-hd205750205822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205749205818%_)))
                                                          (_%lp-tl205751205825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205749205818%_))))
                                                      (_%loop205748205808%_
                                                       _%lp-tl205751205825%_
                                                       (cons _%lp-hd205750205822%_
                                                             _%clause205752205815%_))))
                                                  (let ((_%clause205753205828%_
                                                         (reverse _%clause205752205815%_)))
                                                    (_%loop205739205782%_
                                                     _%lp-tl205742205799%_
                                                     (cons _%clause205753205828%_
                                                           _%clause205743205789%_)))))))
                                    (_%loop205748205808%_
                                     _%target205745205802%_
                                     '()))
                                  (_%g205730205759%_ _%g205731205763%_)))))
                        (_%g205730205759%_ _%g205731205763%_))))
                (let ((_%clause205744205832%_
                       (reverse _%clause205743205789%_)))
                  ((lambda (_%L205836%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210375
                                              (lambda (_%g205851205856%_
                                                       _%g205852205859%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205853205862%_ _%g205854205865%_)
                             (cons _%g205853205862%_ _%g205854205865%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210376 '() _%g205851205856%_)))
              _%g205852205859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210375
                                          '()
                                          _%L205836%_)))
                                 '())))
                   _%clause205744205832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205739205782%_
                                           _%target205736205776%_
                                           '()))
                                        (_%g205730205759%_
                                         _%g205731205763%_)))))
                              (_%g205730205759%_ _%g205731205763%_))))
                      (_%g205730205759%_ _%g205731205763%_)))))
          (_%g205729205868%_ _%$stx205726%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205874%_)
        (let* ((_%g205878205896%_
                (lambda (_%g205879205892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205879205892%_))))
               (_%g205877205951%_
                (lambda (_%g205879205900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205879205900%_))
                      (let ((_%e205882205903%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205879205900%_))))
                        (let ((_%hd205883205907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205882205903%_)))
                              (_%tl205884205910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205882205903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205884205910%_))
                              (let ((_%e205885205913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205884205910%_))))
                                (let ((_%hd205886205917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205885205913%_)))
                                      (_%tl205887205920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205885205913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205887205920%_))
                                      (let ((_%e205888205923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205887205920%_))))
                                        (let ((_%hd205889205927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205888205923%_)))
                                              (_%tl205890205930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205888205923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205890205930%_))
                                              ((lambda (_%L205933%_
                                                        _%L205935%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205935%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205933%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205889205927%_
                                               _%hd205886205917%_)
                                              (_%g205878205896%_
                                               _%g205879205900%_))))
                                      (_%g205878205896%_ _%g205879205900%_))))
                              (_%g205878205896%_ _%g205879205900%_))))
                      (_%g205878205896%_ _%g205879205900%_)))))
          (_%g205877205951%_ _%$stx205874%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx205955%_)
        (let* ((_%g205959205977%_
                (lambda (_%g205960205973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205960205973%_))))
               (_%g205958206032%_
                (lambda (_%g205960205981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205960205981%_))
                      (let ((_%e205963205984%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205960205981%_))))
                        (let ((_%hd205964205988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205963205984%_)))
                              (_%tl205965205991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205963205984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205965205991%_))
                              (let ((_%e205966205994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205965205991%_))))
                                (let ((_%hd205967205998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205966205994%_)))
                                      (_%tl205968206001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205966205994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205968206001%_))
                                      (let ((_%e205969206004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205968206001%_))))
                                        (let ((_%hd205970206008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205969206004%_)))
                                              (_%tl205971206011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205969206004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205971206011%_))
                                              ((lambda (_%L206014%_
                                                        _%L206016%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206016%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206014%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205970206008%_
                                               _%hd205967205998%_)
                                              (_%g205959205977%_
                                               _%g205960205981%_))))
                                      (_%g205959205977%_ _%g205960205981%_))))
                              (_%g205959205977%_ _%g205960205981%_))))
                      (_%g205959205977%_ _%g205960205981%_)))))
          (_%g205958206032%_ _%$stx205955%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx206036%_)
        (let* ((_%g206040206069%_
                (lambda (_%g206041206065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206041206065%_))))
               (_%g206039206169%_
                (lambda (_%g206041206073%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206041206073%_))
                      (let ((_%e206044206076%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206041206073%_))))
                        (let ((_%hd206045206080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206044206076%_)))
                              (_%tl206046206083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206044206076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206046206083%_))
                              (let ((_g210377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206046206083%_
                                        '0))))
                                (begin
                                  (let ((_g210378_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210377_)
                                               (##values-length _g210377_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210378_ 2)))
                                        (error "Context expects 2 values"
                                               _g210378_)))
                                  (let ((_%target206047206086%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210377_ 0)))
                                        (_%tl206049206089%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210377_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206049206089%_))
                                        (letrec ((_%loop206050206092%_
                                                  (lambda (_%hd206048206096%_
                                                           _%rule206054206099%_
                                                           _%proc206055206101%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206048206096%_))
                                                        (let ((_%e206051206104%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206048206096%_))))
                  (let ((_%lp-hd206052206108%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206051206104%_)))
                        (_%lp-tl206053206111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206051206104%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd206052206108%_))
                        (let ((_%e206058206114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd206052206108%_))))
                          (let ((_%hd206059206118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206058206114%_)))
                                (_%tl206060206121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206058206114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206060206121%_))
                                (let ((_%e206061206124%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206060206121%_))))
                                  (let ((_%hd206062206128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206061206124%_)))
                                        (_%tl206063206131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206061206124%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206063206131%_))
                                        (_%loop206050206092%_
                                         _%lp-tl206053206111%_
                                         (cons _%hd206062206128%_
                                               _%rule206054206099%_)
                                         (cons _%hd206059206118%_
                                               _%proc206055206101%_))
                                        (_%g206040206069%_
                                         _%g206041206073%_))))
                                (_%g206040206069%_ _%g206041206073%_))))
                        (_%g206040206069%_ _%g206041206073%_))))
                (let ((_%rule206056206134%_ (reverse _%rule206054206099%_))
                      (_%proc206057206137%_ (reverse _%proc206055206101%_)))
                  ((lambda (_%L206140%_ _%L206142%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206140%_
                                _%L206142%_))
                             (let ((__tmp210379
                                    (lambda (_%g206157206161%_
                                             _%g206158206164%_
                                             _%g206159206166%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206158206164%_
                                                        (cons _%g206157206161%_
                                                              '())))
                                            _%g206159206166%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210379
                                '()
                                _%L206140%_
                                _%L206142%_)))))
                   _%rule206056206134%_
                   _%proc206057206137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206050206092%_
                                           _%target206047206086%_
                                           '()
                                           '()))
                                        (_%g206040206069%_
                                         _%g206041206073%_)))))
                              (_%g206040206069%_ _%g206041206073%_))))
                      (_%g206040206069%_ _%g206041206073%_)))))
          (_%g206039206169%_ _%$stx206036%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206174%_)
        (let* ((_%g206178206196%_
                (lambda (_%g206179206192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206179206192%_))))
               (_%g206177206251%_
                (lambda (_%g206179206200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206179206200%_))
                      (let ((_%e206182206203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206179206200%_))))
                        (let ((_%hd206183206207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206182206203%_)))
                              (_%tl206184206210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206182206203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206184206210%_))
                              (let ((_%e206185206213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206184206210%_))))
                                (let ((_%hd206186206217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206185206213%_)))
                                      (_%tl206187206220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206185206213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206187206220%_))
                                      (let ((_%e206188206223%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206187206220%_))))
                                        (let ((_%hd206189206227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206188206223%_)))
                                              (_%tl206190206230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206188206223%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206190206230%_))
                                              ((lambda (_%L206233%_
                                                        _%L206235%_)
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
                                                   (cons _%L206235%_ '()))
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
                 (cons _%L206233%_ '())))
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
                                   (cons _%L206235%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206189206227%_
                                               _%hd206186206217%_)
                                              (_%g206178206196%_
                                               _%g206179206200%_))))
                                      (_%g206178206196%_ _%g206179206200%_))))
                              (_%g206178206196%_ _%g206179206200%_))))
                      (_%g206178206196%_ _%g206179206200%_)))))
          (_%g206177206251%_ _%$stx206174%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206255%_)
        (let* ((_%__stx209859209860%_ _%$stx206255%_)
               (_%g206260206285%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209859209860%_)))))
          (let ((_%__kont209862209863%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209864209865%_
                 (lambda (_%L206332%_ _%L206334%_ _%L206335%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206335%_ (cons _%L206334%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206332%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209859209860%_))
                (let ((_%e206262206361%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209859209860%_))))
                  (let ((_%tl206264206368%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206262206361%_)))
                        (_%hd206263206365%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206262206361%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206264206368%_))
                        (_%__kont209862209863%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206264206368%_))
                            (let ((_%e206271206302%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206264206368%_))))
                              (let ((_%tl206273206309%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206271206302%_)))
                                    (_%hd206272206306%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206271206302%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206272206306%_))
                                    (let ((_%e206274206312%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206272206306%_))))
                                      (let ((_%tl206276206319%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206274206312%_)))
                                            (_%hd206275206316%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206274206312%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206276206319%_))
                                            (let ((_%e206277206322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206276206319%_))))
                                              (let ((_%tl206279206329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206277206322%_)))
                                                    (_%hd206278206326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206277206322%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206279206329%_))
                                                    (_%__kont209864209865%_
                                                     _%tl206273206309%_
                                                     _%hd206278206326%_
                                                     _%hd206275206316%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206260206285%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206260206285%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206260206285%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206260206285%_))))))
                (let () (declare (not safe)) (_%g206260206285%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206379%_)
        (let* ((_%__stx209903209904%_ _%$stx206379%_)
               (_%g206384206415%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209903209904%_)))))
          (let ((_%__kont209906209907%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209908209909%_
                 (lambda (_%L206482%_ _%L206484%_ _%L206485%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206485%_
                                           (let ((__tmp210380
                                                  (lambda (_%g206505206508%_
                                                           _%g206506206511%_)
                                                    (cons _%g206505206508%_
                                                          _%g206506206511%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210380
                                              '()
                                              _%L206484%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206482%_)
                                     '()))))))
            (let ((_%__match209946209947%_
                   (lambda (_%e206392206422%_
                            _%hd206393206426%_
                            _%tl206394206429%_
                            _%e206395206432%_
                            _%hd206396206436%_
                            _%tl206397206439%_
                            _%e206398206442%_
                            _%hd206399206446%_
                            _%tl206400206449%_
                            _%__splice209910209911%_
                            _%target206401206452%_
                            _%tl206403206455%_)
                     (letrec ((_%loop206404206458%_
                               (lambda (_%hd206402206462%_ _%sig206408206465%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206402206462%_))
                                     (let ((_%e206405206468%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206402206462%_))))
                                       (let ((_%lp-tl206407206475%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206405206468%_)))
                                             (_%lp-hd206406206472%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206405206468%_))))
                                         (_%loop206404206458%_
                                          _%lp-tl206407206475%_
                                          (cons _%lp-hd206406206472%_
                                                _%sig206408206465%_))))
                                     (let ((_%sig206409206478%_
                                            (reverse _%sig206408206465%_)))
                                       (_%__kont209908209909%_
                                        _%tl206397206439%_
                                        _%sig206409206478%_
                                        _%hd206399206446%_))))))
                       (_%loop206404206458%_ _%target206401206452%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209903209904%_))
                  (let ((_%e206386206521%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209903209904%_))))
                    (let ((_%tl206388206528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206386206521%_)))
                          (_%hd206387206525%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206386206521%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206388206528%_))
                          (_%__kont209906209907%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206388206528%_))
                              (let ((_%e206395206432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206388206528%_))))
                                (let ((_%tl206397206439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206395206432%_)))
                                      (_%hd206396206436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206395206432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206396206436%_))
                                      (let ((_%e206398206442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206396206436%_))))
                                        (let ((_%tl206400206449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206398206442%_)))
                                              (_%hd206399206446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206398206442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206400206449%_))
                                              (let ((_%__splice209910209911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206400206449%_
                                                        '0))))
                                                (let ((_%tl206403206455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209910209911%_
                                                          '1)))
                                                      (_%target206401206452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209910209911%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206403206455%_))
                                                      (_%__match209946209947%_
                                                       _%e206386206521%_
                                                       _%hd206387206525%_
                                                       _%tl206388206528%_
                                                       _%e206395206432%_
                                                       _%hd206396206436%_
                                                       _%tl206397206439%_
                                                       _%e206398206442%_
                                                       _%hd206399206446%_
                                                       _%tl206400206449%_
                                                       _%__splice209910209911%_
                                                       _%target206401206452%_
                                                       _%tl206403206455%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206384206415%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206384206415%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206384206415%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206384206415%_))))))
                  (let () (declare (not safe)) (_%g206384206415%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206540%_)
        (let* ((_%__stx209949209950%_ _%$stx206540%_)
               (_%g206545206592%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209949209950%_)))))
          (let ((_%__kont209952209953%_
                 (lambda (_%L206754%_ _%L206756%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206756%_
                               (let ((__tmp210381
                                      (lambda (_%g206776206779%_
                                               _%g206777206782%_)
                                        (cons _%g206776206779%_
                                              _%g206777206782%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210381 '() _%L206754%_))))))
                (_%__kont209956209957%_
                 (lambda (_%L206649%_ _%L206651%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206651%_
                               (let ((__tmp210382
                                      (lambda (_%g206668206671%_
                                               _%g206669206674%_)
                                        (cons _%g206668206671%_
                                              _%g206669206674%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210382 '() _%L206649%_)))))))
            (let* ((_%__match210016210017%_
                    (lambda (_%e206572206599%_
                             _%hd206573206603%_
                             _%tl206574206606%_
                             _%e206575206609%_
                             _%hd206576206613%_
                             _%tl206577206616%_
                             _%__splice209958209959%_
                             _%target206578206619%_
                             _%tl206580206622%_)
                      (letrec ((_%loop206581206625%_
                                (lambda (_%hd206579206629%_
                                         _%sig206585206632%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206579206629%_))
                                      (let ((_%e206582206635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206579206629%_))))
                                        (let ((_%lp-tl206584206642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206582206635%_)))
                                              (_%lp-hd206583206639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206582206635%_))))
                                          (_%loop206581206625%_
                                           _%lp-tl206584206642%_
                                           (cons _%lp-hd206583206639%_
                                                 _%sig206585206632%_))))
                                      (let ((_%sig206586206645%_
                                             (reverse _%sig206585206632%_)))
                                        (_%__kont209956209957%_
                                         _%sig206586206645%_
                                         _%hd206576206613%_))))))
                        (_%loop206581206625%_ _%target206578206619%_ '()))))
                   (_%__match210008210009%_
                    (lambda (_%e206572206599%_
                             _%hd206573206603%_
                             _%tl206574206606%_
                             _%e206575206609%_
                             _%hd206576206613%_
                             _%tl206577206616%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206577206616%_))
                          (let ((_%__splice209958209959%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl206577206616%_
                                    '0))))
                            (let ((_%tl206580206622%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209958209959%_
                                      '1)))
                                  (_%target206578206619%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209958209959%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206580206622%_))
                                  (_%__match210016210017%_
                                   _%e206572206599%_
                                   _%hd206573206603%_
                                   _%tl206574206606%_
                                   _%e206575206609%_
                                   _%hd206576206613%_
                                   _%tl206577206616%_
                                   _%__splice209958209959%_
                                   _%target206578206619%_
                                   _%tl206580206622%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206545206592%_)))))
                          (let () (declare (not safe)) (_%g206545206592%_)))))
                   (_%__match209996209997%_
                    (lambda (_%e206549206684%_
                             _%hd206550206688%_
                             _%tl206551206691%_
                             _%e206552206694%_
                             _%hd206553206698%_
                             _%tl206554206701%_
                             _%e206555206704%_
                             _%hd206556206708%_
                             _%tl206557206711%_
                             _%e206558206714%_
                             _%hd206559206718%_
                             _%tl206560206721%_
                             _%__splice209954209955%_
                             _%target206561206724%_
                             _%tl206563206727%_)
                      (letrec ((_%loop206564206730%_
                                (lambda (_%hd206562206734%_
                                         _%sig206568206737%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206562206734%_))
                                      (let ((_%e206565206740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206562206734%_))))
                                        (let ((_%lp-tl206567206747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206565206740%_)))
                                              (_%lp-hd206566206744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206565206740%_))))
                                          (_%loop206564206730%_
                                           _%lp-tl206567206747%_
                                           (cons _%lp-hd206566206744%_
                                                 _%sig206568206737%_))))
                                      (let ((_%sig206569206750%_
                                             (reverse _%sig206568206737%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206557206711%_))
                                            (_%__kont209952209953%_
                                             _%sig206569206750%_
                                             _%hd206553206698%_)
                                            (_%__match210008210009%_
                                             _%e206549206684%_
                                             _%hd206550206688%_
                                             _%tl206551206691%_
                                             _%e206552206694%_
                                             _%hd206553206698%_
                                             _%tl206554206701%_)))))))
                        (_%loop206564206730%_ _%target206561206724%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209949209950%_))
                  (let ((_%e206549206684%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209949209950%_))))
                    (let ((_%tl206551206691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206549206684%_)))
                          (_%hd206550206688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206549206684%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206551206691%_))
                          (let ((_%e206552206694%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206551206691%_))))
                            (let ((_%tl206554206701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206552206694%_)))
                                  (_%hd206553206698%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206552206694%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206554206701%_))
                                  (let ((_%e206555206704%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206554206701%_))))
                                    (let ((_%tl206557206711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206555206704%_)))
                                          (_%hd206556206708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206555206704%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206556206708%_))
                                          (let ((_%e206558206714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206556206708%_))))
                                            (let ((_%tl206560206721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206558206714%_)))
                                                  (_%hd206559206718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206558206714%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206559206718%_))
                                                  (if (let ((__tmp210383
                                                             |gxc[1]#_g210384_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210383
                                                         _%hd206559206718%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206560206721%_))
                                                          (let ((_%__splice209954209955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206560206721%_ '0))))
                    (let ((_%tl206563206727%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209954209955%_ '1)))
                          (_%target206561206724%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209954209955%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206563206727%_))
                          (_%__match209996209997%_
                           _%e206549206684%_
                           _%hd206550206688%_
                           _%tl206551206691%_
                           _%e206552206694%_
                           _%hd206553206698%_
                           _%tl206554206701%_
                           _%e206555206704%_
                           _%hd206556206708%_
                           _%tl206557206711%_
                           _%e206558206714%_
                           _%hd206559206718%_
                           _%tl206560206721%_
                           _%__splice209954209955%_
                           _%target206561206724%_
                           _%tl206563206727%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206554206701%_))
                              (let ((_%__splice209958209959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206554206701%_
                                        '0))))
                                (let ((_%tl206580206622%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209958209959%_
                                          '1)))
                                      (_%target206578206619%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209958209959%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206580206622%_))
                                      (_%__match210016210017%_
                                       _%e206549206684%_
                                       _%hd206550206688%_
                                       _%tl206551206691%_
                                       _%e206552206694%_
                                       _%hd206553206698%_
                                       _%tl206554206701%_
                                       _%__splice209958209959%_
                                       _%target206578206619%_
                                       _%tl206580206622%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206545206592%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206545206592%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206554206701%_))
                      (let ((_%__splice209958209959%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl206554206701%_
                                '0))))
                        (let ((_%tl206580206622%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209958209959%_ '1)))
                              (_%target206578206619%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209958209959%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206580206622%_))
                              (_%__match210016210017%_
                               _%e206549206684%_
                               _%hd206550206688%_
                               _%tl206551206691%_
                               _%e206552206694%_
                               _%hd206553206698%_
                               _%tl206554206701%_
                               _%__splice209958209959%_
                               _%target206578206619%_
                               _%tl206580206622%_)
                              (let ()
                                (declare (not safe))
                                (_%g206545206592%_)))))
                      (let () (declare (not safe)) (_%g206545206592%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206554206701%_))
                  (let ((_%__splice209958209959%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206554206701%_ '0))))
                    (let ((_%tl206580206622%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209958209959%_ '1)))
                          (_%target206578206619%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209958209959%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206580206622%_))
                          (_%__match210016210017%_
                           _%e206549206684%_
                           _%hd206550206688%_
                           _%tl206551206691%_
                           _%e206552206694%_
                           _%hd206553206698%_
                           _%tl206554206701%_
                           _%__splice209958209959%_
                           _%target206578206619%_
                           _%tl206580206622%_)
                          (let () (declare (not safe)) (_%g206545206592%_)))))
                  (let () (declare (not safe)) (_%g206545206592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206554206701%_))
                                                      (let ((_%__splice209958209959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl206554206701%_ '0))))
                (let ((_%tl206580206622%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209958209959%_ '1)))
                      (_%target206578206619%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209958209959%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206580206622%_))
                      (_%__match210016210017%_
                       _%e206549206684%_
                       _%hd206550206688%_
                       _%tl206551206691%_
                       _%e206552206694%_
                       _%hd206553206698%_
                       _%tl206554206701%_
                       _%__splice209958209959%_
                       _%target206578206619%_
                       _%tl206580206622%_)
                      (let () (declare (not safe)) (_%g206545206592%_)))))
              (let () (declare (not safe)) (_%g206545206592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206554206701%_))
                                              (let ((_%__splice209958209959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206554206701%_
                                                        '0))))
                                                (let ((_%tl206580206622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209958209959%_
                                                          '1)))
                                                      (_%target206578206619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209958209959%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206580206622%_))
                                                      (_%__match210016210017%_
                                                       _%e206549206684%_
                                                       _%hd206550206688%_
                                                       _%tl206551206691%_
                                                       _%e206552206694%_
                                                       _%hd206553206698%_
                                                       _%tl206554206701%_
                                                       _%__splice209958209959%_
                                                       _%target206578206619%_
                                                       _%tl206580206622%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206545206592%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206545206592%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206554206701%_))
                                      (let ((_%__splice209958209959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206554206701%_
                                                '0))))
                                        (let ((_%tl206580206622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209958209959%_
                                                  '1)))
                                              (_%target206578206619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209958209959%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206580206622%_))
                                              (_%__match210016210017%_
                                               _%e206549206684%_
                                               _%hd206550206688%_
                                               _%tl206551206691%_
                                               _%e206552206694%_
                                               _%hd206553206698%_
                                               _%tl206554206701%_
                                               _%__splice209958209959%_
                                               _%target206578206619%_
                                               _%tl206580206622%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206545206592%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206545206592%_))))))
                          (let () (declare (not safe)) (_%g206545206592%_)))))
                  (let () (declare (not safe)) (_%g206545206592%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx207939%_ _%id207941%_)
        (let ((_%proc207945%_
               (let ((__tmp210385
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207941%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210385))))
          (if (procedure? _%proc207945%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx207939%_
                 _%id207941%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx207930%_ _%id207932%_)
        (let ((_%klass207936%_
               (let ((__tmp210386
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207932%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210386))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass207936%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx207930%_
                 _%id207932%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207180%_ _%proc207182%_ _%sig207183%_)
        (letrec ((_%signature-arity207185%_
                  (lambda (_%args207862%_)
                    (let _%loop207865%_ ((_%rest207868%_ _%args207862%_)
                                         (_%count207870%_ '0))
                      (let* ((_%rest207871207882%_ _%rest207868%_)
                             (_%E207875207888%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207871207882%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207878207919%_
                               (lambda (_%rest207916%_)
                                 (_%loop207865%_
                                  _%rest207916%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207870%_ '1)))))
                              (_%K207877207908%_ (lambda () _%count207870%_))
                              (_%K207876207896%_
                               (lambda () (cons _%count207870%_ '()))))
                          (let ((_%try-match207873207912%_
                                 (lambda ()
                                   (if (null? _%rest207871207882%_)
                                       (_%K207877207908%_)
                                       (_%K207876207896%_)))))
                            (if (pair? _%rest207871207882%_)
                                (let* ((_%tl207880207923%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207871207882%_)))
                                       (_%rest207927%_ _%tl207880207923%_))
                                  (_%K207878207919%_ _%rest207927%_))
                                (_%try-match207873207912%_))))))))
                 (_%make-signature207187%_
                  (lambda (_%args207744%_
                           _%return207746%_
                           _%effect207747%_
                           _%unchecked207748%_)
                    (let ((__tmp210387
                           (lambda (_%g207749207751%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207180%_
                              _%g207749207751%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210387 _%args207744%_))
                    (|gxc[1]#verify-class!| _%ctx207180%_ _%return207746%_)
                    (if _%unchecked207748%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207180%_
                         _%unchecked207748%_)
                        '#!void)
                    (let ((_%arity207755%_
                           (_%signature-arity207185%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207744%_)))))
                      (if _%effect207747%_
                          (let ((_%effect207758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207747%_))))
                            (if (and (list? _%effect207758%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207758%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207180%_
                                   _%proc207182%_
                                   _%effect207758%_))))
                          '#!void)
                      (cons _%arity207755%_
                            (cons (let* ((_%g207761207784%_
                                          (lambda (_%g207762207780%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207762207780%_))))
                                         (_%g207760207858%_
                                          (lambda (_%g207762207788%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207762207788%_))
                                                (let ((_%e207767207791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207762207788%_))))
                                                  (let ((_%hd207768207795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207767207791%_)))
                                                        (_%tl207769207798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207767207791%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207769207798%_))
                                                        (let ((_%e207770207801%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207769207798%_))))
                  (let ((_%hd207771207805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207770207801%_)))
                        (_%tl207772207808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207770207801%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207772207808%_))
                        (let ((_%e207773207811%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207772207808%_))))
                          (let ((_%hd207774207815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207773207811%_)))
                                (_%tl207775207818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207773207811%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207775207818%_))
                                (let ((_%e207776207821%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207775207818%_))))
                                  (let ((_%hd207777207825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207776207821%_)))
                                        (_%tl207778207828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207776207821%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207778207828%_))
                                        ((lambda (_%L207831%_
                                                  _%L207833%_
                                                  _%L207834%_
                                                  _%L207835%_)
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
                           (cons _%L207835%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207834%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207833%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207831%_ '()))
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
                                         _%hd207777207825%_
                                         _%hd207774207815%_
                                         _%hd207771207805%_
                                         _%hd207768207795%_)
                                        (_%g207761207784%_
                                         _%g207762207788%_))))
                                (_%g207761207784%_ _%g207762207788%_))))
                        (_%g207761207784%_ _%g207762207788%_))))
                (_%g207761207784%_ _%g207762207788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207761207784%_
                                                 _%g207762207788%_)))))
                                    (_%g207760207858%_
                                     (list _%args207744%_
                                           _%return207746%_
                                           _%effect207747%_
                                           _%unchecked207748%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207180%_ _%proc207182%_)
          (let* ((_%__stx210027210028%_ _%sig207183%_)
                 (_%g207194207297%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx210027210028%_)))))
            (let ((_%__kont210030210031%_
                   (lambda (_%L207725%_ _%L207727%_)
                     (_%make-signature207187%_
                      _%L207727%_
                      _%L207725%_
                      '#f
                      '#f)))
                  (_%__kont210032210033%_
                   (lambda (_%L207676%_ _%L207678%_ _%L207679%_)
                     (_%make-signature207187%_
                      _%L207679%_
                      _%L207678%_
                      _%L207676%_
                      '#f)))
                  (_%__kont210034210035%_
                   (lambda (_%L207600%_ _%L207602%_ _%L207603%_)
                     (_%make-signature207187%_
                      _%L207603%_
                      _%L207602%_
                      _%L207600%_
                      (let ((__tmp210388
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207182%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210388)))))
                  (_%__kont210036210037%_
                   (lambda (_%L207506%_ _%L207508%_ _%L207509%_ _%L207510%_)
                     (_%make-signature207187%_
                      _%L207510%_
                      _%L207509%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207506%_)))))
                  (_%__kont210038210039%_
                   (lambda (_%L207413%_ _%L207415%_)
                     (_%make-signature207187%_
                      _%L207415%_
                      _%L207413%_
                      '#f
                      (let ((__tmp210389
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207182%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210389)))))
                  (_%__kont210040210041%_
                   (lambda (_%L207348%_ _%L207350%_ _%L207351%_)
                     (_%make-signature207187%_
                      _%L207351%_
                      _%L207350%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207348%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210027210028%_))
                  (let ((_%e207198207705%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210027210028%_))))
                    (let ((_%tl207200207712%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207198207705%_)))
                          (_%hd207199207709%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207198207705%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207200207712%_))
                          (let ((_%e207201207715%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207200207712%_))))
                            (let ((_%tl207203207722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207201207715%_)))
                                  (_%hd207202207719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207201207715%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207203207722%_))
                                  (_%__kont210030210031%_
                                   _%hd207202207719%_
                                   _%hd207199207709%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207203207722%_))
                                      (let ((_%e207213207652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207203207722%_))))
                                        (let ((_%tl207215207659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207213207652%_)))
                                              (_%hd207214207656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207213207652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207214207656%_))
                                              (let ((_%e207216207662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207214207656%_))))
                                                (if (equal? _%e207216207662%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207215207659%_))
                                                        (let ((_%e207217207666%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207215207659%_))))
                  (let ((_%tl207219207673%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207217207666%_)))
                        (_%hd207218207670%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207217207666%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207219207673%_))
                        (_%__kont210032210033%_
                         _%hd207218207670%_
                         _%hd207202207719%_
                         _%hd207199207709%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207219207673%_))
                            (let ((_%e207236207586%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207219207673%_))))
                              (let ((_%tl207238207593%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207236207586%_)))
                                    (_%hd207237207590%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207236207586%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207237207590%_))
                                    (let ((_%e207239207596%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207237207590%_))))
                                      (if (equal? _%e207239207596%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207238207593%_))
                                              (_%__kont210034210035%_
                                               _%hd207218207670%_
                                               _%hd207202207719%_
                                               _%hd207199207709%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207238207593%_))
                                                  (let ((_%e207261207496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207238207593%_))))
                                                    (let ((_%tl207263207503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207261207496%_)))
                                                          (_%hd207262207500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207261207496%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207263207503%_))
                                                          (_%__kont210036210037%_
                                                           _%hd207262207500%_
                                                           _%hd207218207670%_
                                                           _%hd207202207719%_
                                                           _%hd207199207709%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207194207297%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207194207297%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207194207297%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207194207297%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207194207297%_))))))
                (let () (declare (not safe)) (_%g207194207297%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207216207662%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207215207659%_))
                                                            (_%__kont210038210039%_
                                                             _%hd207202207719%_
                                                             _%hd207199207709%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207215207659%_))
                        (let ((_%e207289207338%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207215207659%_))))
                          (let ((_%tl207291207345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207289207338%_)))
                                (_%hd207290207342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207289207338%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207291207345%_))
                                (_%__kont210040210041%_
                                 _%hd207290207342%_
                                 _%hd207202207719%_
                                 _%hd207199207709%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207194207297%_)))))
                        (let () (declare (not safe)) (_%g207194207297%_))))
                (let () (declare (not safe)) (_%g207194207297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207194207297%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207194207297%_))))))
                          (let () (declare (not safe)) (_%g207194207297%_)))))
                  (let () (declare (not safe)) (_%g207194207297%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206791%_)
        (let* ((_%g206794206874%_
                (lambda (_%g206795206870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206795206870%_))))
               (_%g206793207176%_
                (lambda (_%g206795206878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206795206878%_))
                      (let ((_%e206801206881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206795206878%_))))
                        (let ((_%hd206802206885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206801206881%_)))
                              (_%tl206803206888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206801206881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206803206888%_))
                              (let ((_%e206804206891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206803206888%_))))
                                (let ((_%hd206805206895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206804206891%_)))
                                      (_%tl206806206898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206804206891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206805206895%_))
                                      (let ((_%e206807206901%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206805206895%_))))
                                        (if (equal? _%e206807206901%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206806206898%_))
                                                (let ((_%e206808206905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206806206898%_))))
                                                  (let ((_%hd206809206909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206808206905%_)))
                                                        (_%tl206810206912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206808206905%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206809206909%_))
                                                        (let ((_%e206811206915%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206809206909%_))))
                  (let ((_%hd206812206919%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206811206915%_)))
                        (_%tl206813206922%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206811206915%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206812206919%_))
                        (if (let ((__tmp210390 |gxc[1]#_g210391_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210390
                               _%hd206812206919%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206813206922%_))
                                (let ((_%e206814206925%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206813206922%_))))
                                  (let ((_%hd206815206929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206814206925%_)))
                                        (_%tl206816206932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206814206925%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206816206932%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206810206912%_))
                                            (let ((_%e206817206935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206810206912%_))))
                                              (let ((_%hd206818206939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206817206935%_)))
                                                    (_%tl206819206942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206817206935%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206818206939%_))
                                                    (let ((_%e206820206945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206818206939%_))))
                                                      (if (equal? _%e206820206945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206819206942%_))
                      (let ((_%e206821206949%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206819206942%_))))
                        (let ((_%hd206822206953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206821206949%_)))
                              (_%tl206823206956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206821206949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206822206953%_))
                              (let ((_%e206824206959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206822206953%_))))
                                (let ((_%hd206825206963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206824206959%_)))
                                      (_%tl206826206966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206824206959%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206825206963%_))
                                      (if (let ((__tmp210392
                                                 |gxc[1]#_g210393_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210392
                                             _%hd206825206963%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206826206966%_))
                                              (let ((_%e206827206969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206826206966%_))))
                                                (let ((_%hd206828206973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206827206969%_)))
                                                      (_%tl206829206976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206827206969%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206829206976%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206823206956%_))
                                                          (let ((_%e206830206979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206823206956%_))))
                    (let ((_%hd206831206983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206830206979%_)))
                          (_%tl206832206986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206830206979%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206831206983%_))
                          (let ((_%e206833206989%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206831206983%_))))
                            (if (equal? _%e206833206989%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206832206986%_))
                                    (let ((_%e206834206993%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206832206986%_))))
                                      (let ((_%hd206835206997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206834206993%_)))
                                            (_%tl206836207000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206834206993%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206835206997%_))
                                            (let ((_%e206837207003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206835206997%_))))
                                              (let ((_%hd206838207007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206837207003%_)))
                                                    (_%tl206839207010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206837207003%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206838207007%_))
                                                    (if (let ((__tmp210394
                                                               |gxc[1]#_g210395_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210394
                                                           _%hd206838207007%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206839207010%_))
                                                            (let ((_%e206840207013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206839207010%_))))
                      (let ((_%hd206841207017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206840207013%_)))
                            (_%tl206842207020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206840207013%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206842207020%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206836207000%_))
                                (let ((_%e206843207023%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206836207000%_))))
                                  (let ((_%hd206844207027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206843207023%_)))
                                        (_%tl206845207030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206843207023%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206844207027%_))
                                        (let ((_%e206846207033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206844207027%_))))
                                          (if (equal? _%e206846207033%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206845207030%_))
                                                  (let ((_%e206847207037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206845207030%_))))
                                                    (let ((_%hd206848207041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206847207037%_)))
                                                          (_%tl206849207044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206847207037%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206848207041%_))
                                                          (let ((_%e206850207047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206848207041%_))))
                    (let ((_%hd206851207051%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206850207047%_)))
                          (_%tl206852207054%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206850207047%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206851207051%_))
                          (if (let ((__tmp210396 |gxc[1]#_g210397_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210396
                                 _%hd206851207051%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206852207054%_))
                                  (let ((_%e206853207057%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206852207054%_))))
                                    (let ((_%hd206854207061%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206853207057%_)))
                                          (_%tl206855207064%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206853207057%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206855207064%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206849207044%_))
                                              (let ((_%e206856207067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206849207044%_))))
                                                (let ((_%hd206857207071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206856207067%_)))
                                                      (_%tl206858207074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206856207067%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206857207071%_))
                                                      (let ((_%e206859207077%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206857207071%_))))
                (if (equal? _%e206859207077%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206858207074%_))
                        (let ((_%e206860207081%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206858207074%_))))
                          (let ((_%hd206861207085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206860207081%_)))
                                (_%tl206862207088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206860207081%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206861207085%_))
                                (let ((_%e206863207091%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206861207085%_))))
                                  (let ((_%hd206864207095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206863207091%_)))
                                        (_%tl206865207098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206863207091%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206864207095%_))
                                        (if (let ((__tmp210398
                                                   |gxc[1]#_g210399_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210398
                                               _%hd206864207095%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206865207098%_))
                                                (let ((_%e206866207101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206865207098%_))))
                                                  (let ((_%hd206867207105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206866207101%_)))
                                                        (_%tl206868207108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206866207101%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206868207108%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206862207088%_))
                                                            ((lambda (_%L207111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207113%_
                              _%L207114%_
                              _%L207115%_
                              _%L207116%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207113%_))
                           (cons _%L207113%_
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
                       (cons _%L207115%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207111%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206867207105%_
                     _%hd206854207061%_
                     _%hd206841207017%_
                     _%hd206828206973%_
                     _%hd206815206929%_)
                    (_%g206794206874%_ _%g206795206878%_))
                (_%g206794206874%_ _%g206795206878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206794206874%_
                                                 _%g206795206878%_))
                                            (_%g206794206874%_
                                             _%g206795206878%_))
                                        (_%g206794206874%_
                                         _%g206795206878%_))))
                                (_%g206794206874%_ _%g206795206878%_))))
                        (_%g206794206874%_ _%g206795206878%_))
                    (_%g206794206874%_ _%g206795206878%_)))
              (_%g206794206874%_ _%g206795206878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206794206874%_
                                               _%g206795206878%_))
                                          (_%g206794206874%_
                                           _%g206795206878%_))))
                                  (_%g206794206874%_ _%g206795206878%_))
                              (_%g206794206874%_ _%g206795206878%_))
                          (_%g206794206874%_ _%g206795206878%_))))
                  (_%g206794206874%_ _%g206795206878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206794206874%_
                                                   _%g206795206878%_))
                                              (_%g206794206874%_
                                               _%g206795206878%_)))
                                        (_%g206794206874%_
                                         _%g206795206878%_))))
                                (_%g206794206874%_ _%g206795206878%_))
                            (_%g206794206874%_ _%g206795206878%_))))
                    (_%g206794206874%_ _%g206795206878%_))
                (_%g206794206874%_ _%g206795206878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206794206874%_
                                                     _%g206795206878%_))))
                                            (_%g206794206874%_
                                             _%g206795206878%_))))
                                    (_%g206794206874%_ _%g206795206878%_))
                                (_%g206794206874%_ _%g206795206878%_)))
                          (_%g206794206874%_ _%g206795206878%_))))
                  (_%g206794206874%_ _%g206795206878%_))
              (_%g206794206874%_ _%g206795206878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206794206874%_
                                               _%g206795206878%_))
                                          (_%g206794206874%_
                                           _%g206795206878%_))
                                      (_%g206794206874%_ _%g206795206878%_))))
                              (_%g206794206874%_ _%g206795206878%_))))
                      (_%g206794206874%_ _%g206795206878%_))
                  (_%g206794206874%_ _%g206795206878%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206794206874%_
                                                     _%g206795206878%_))))
                                            (_%g206794206874%_
                                             _%g206795206878%_))
                                        (_%g206794206874%_
                                         _%g206795206878%_))))
                                (_%g206794206874%_ _%g206795206878%_))
                            (_%g206794206874%_ _%g206795206878%_))
                        (_%g206794206874%_ _%g206795206878%_))))
                (_%g206794206874%_ _%g206795206878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206794206874%_
                                                 _%g206795206878%_))
                                            (_%g206794206874%_
                                             _%g206795206878%_)))
                                      (_%g206794206874%_ _%g206795206878%_))))
                              (_%g206794206874%_ _%g206795206878%_))))
                      (_%g206794206874%_ _%g206795206878%_)))))
          (_%g206793207176%_ _%sig206791%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx207948%_)
        (let* ((_%g207951207969%_
                (lambda (_%g207952207965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207952207965%_))))
               (_%g207950208024%_
                (lambda (_%g207952207973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207952207973%_))
                      (let ((_%e207955207976%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207952207973%_))))
                        (let ((_%hd207956207980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207955207976%_)))
                              (_%tl207957207983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207955207976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207957207983%_))
                              (let ((_%e207958207986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207957207983%_))))
                                (let ((_%hd207959207990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207958207986%_)))
                                      (_%tl207960207993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207958207986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207960207993%_))
                                      (let ((_%e207961207996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207960207993%_))))
                                        (let ((_%hd207962208000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207961207996%_)))
                                              (_%tl207963208003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207961207996%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207963208003%_))
                                              ((lambda (_%L208006%_
                                                        _%L208008%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208008%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208006%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx207948%_
                                                        _%L208008%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx207948%_
                                                        _%L208006%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L208008%_
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
                                                   (cons _%L208006%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207951207969%_
                                                      _%g207952207973%_)))
                                               _%hd207962208000%_
                                               _%hd207959207990%_)
                                              (_%g207951207969%_
                                               _%g207952207973%_))))
                                      (_%g207951207969%_ _%g207952207973%_))))
                              (_%g207951207969%_ _%g207952207973%_))))
                      (_%g207951207969%_ _%g207952207973%_)))))
          (_%g207950208024%_ _%stx207948%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx208028%_)
        (let* ((_%g208031208055%_
                (lambda (_%g208032208051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208032208051%_))))
               (_%g208030208338%_
                (lambda (_%g208032208059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208032208059%_))
                      (let ((_%e208035208062%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208032208059%_))))
                        (let ((_%hd208036208066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208035208062%_)))
                              (_%tl208037208069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208035208062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208037208069%_))
                              (let ((_%e208038208072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208037208069%_))))
                                (let ((_%hd208039208076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208038208072%_)))
                                      (_%tl208040208079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208038208072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208040208079%_))
                                      (let ((_g210400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208040208079%_
                                                '0))))
                                        (begin
                                          (let ((_g210401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210400_)
                                                       (##values-length
                                                        _g210400_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210401_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210401_)))
                                          (let ((_%target208041208082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210400_ 0)))
                                                (_%tl208043208085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210400_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208043208085%_))
                                                (letrec ((_%loop208044208088%_
                                                          (lambda (_%hd208042208092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature208048208095%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208042208092%_))
                        (let ((_%e208045208098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208042208092%_))))
                          (let ((_%lp-hd208046208102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208045208098%_)))
                                (_%lp-tl208047208105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208045208098%_))))
                            (_%loop208044208088%_
                             _%lp-tl208047208105%_
                             (cons _%lp-hd208046208102%_
                                   _%signature208048208095%_))))
                        (let ((_%signature208049208108%_
                               (reverse _%signature208048208095%_)))
                          ((lambda (_%L208112%_ _%L208114%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208114%_))
                                 (let* ((_%g208132208147%_
                                         (lambda (_%g208133208143%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208133208143%_))))
                                        (_%g208131208326%_
                                         (lambda (_%g208133208151%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208133208151%_))
                                               (let ((_%e208136208154%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208133208151%_))))
                                                 (let ((_%hd208137208158%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208136208154%_)))
                                                       (_%tl208138208161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208136208154%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208138208161%_))
                                                       (let ((_%e208139208164%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208138208161%_))))
                 (let ((_%hd208140208168%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208139208164%_)))
                       (_%tl208141208171%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208139208164%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208141208171%_))
                       ((lambda (_%L208174%_ _%L208176%_)
                          (let* ((_%g208192208200%_
                                  (lambda (_%g208193208196%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208193208196%_))))
                                 (_%g208191208322%_
                                  (lambda (_%g208193208204%_)
                                    ((lambda (_%L208207%_)
                                       (let* ((_%unchecked208220%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208174%_))
                                              (_%g208223208231%_
                                               (lambda (_%g208224208227%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208224208227%_))))
                                              (_%g208222208254%_
                                               (lambda (_%g208224208235%_)
                                                 ((lambda (_%L208238%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208207%_
                                                                (cons _%L208238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208224208235%_))))
                                         (_%g208222208254%_
                                          (if _%unchecked208220%_
                                              (let* ((_%g208258208273%_
                                                      (lambda (_%g208259208269%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208259208269%_))))
                                                     (_%g208257208318%_
                                                      (lambda (_%g208259208277%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208259208277%_))
                                                            (let ((_%e208262208280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208259208277%_))))
                      (let ((_%hd208263208284%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208262208280%_)))
                            (_%tl208264208287%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208262208280%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208264208287%_))
                            (let ((_%e208265208290%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208264208287%_))))
                              (let ((_%hd208266208294%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208265208290%_)))
                                    (_%tl208267208297%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208265208290%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208267208297%_))
                                    ((lambda (_%L208300%_ _%L208302%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208302%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208176%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208300%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208266208294%_
                                     _%hd208263208284%_)
                                    (_%g208258208273%_ _%g208259208277%_))))
                            (_%g208258208273%_ _%g208259208277%_))))
                    (_%g208258208273%_ _%g208259208277%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208257208318%_
                                                 _%unchecked208220%_))
                                              '(begin)))))
                                     _%g208193208204%_))))
                            (_%g208191208322%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208114%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208176%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208174%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208140208168%_
                        _%hd208137208158%_)
                       (_%g208132208147%_ _%g208133208151%_))))
               (_%g208132208147%_ _%g208133208151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208132208147%_
                                                _%g208133208151%_)))))
                                   (_%g208131208326%_
                                    (|gxc[1]#parse-signature|
                                     _%stx208028%_
                                     _%L208114%_
                                     (let ((__tmp210402
                                            (lambda (_%g208329208332%_
                                                     _%g208330208335%_)
                                              (cons _%g208329208332%_
                                                    _%g208330208335%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210402
                                        '()
                                        _%L208112%_)))))
                                 (_%g208031208055%_ _%g208032208059%_)))
                           _%signature208049208108%_
                           _%hd208039208076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208044208088%_
                                                   _%target208041208082%_
                                                   '()))
                                                (_%g208031208055%_
                                                 _%g208032208059%_)))))
                                      (_%g208031208055%_ _%g208032208059%_))))
                              (_%g208031208055%_ _%g208032208059%_))))
                      (_%g208031208055%_ _%g208032208059%_)))))
          (_%g208030208338%_ _%stx208028%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208343%_)
        (let* ((_%g208346208370%_
                (lambda (_%g208347208366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208347208366%_))))
               (_%g208345209253%_
                (lambda (_%g208347208374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208347208374%_))
                      (let ((_%e208350208377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208347208374%_))))
                        (let ((_%hd208351208381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208350208377%_)))
                              (_%tl208352208384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208350208377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208352208384%_))
                              (let ((_%e208353208387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208352208384%_))))
                                (let ((_%hd208354208391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208353208387%_)))
                                      (_%tl208355208394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208353208387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208355208394%_))
                                      (let ((_g210403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208355208394%_
                                                '0))))
                                        (begin
                                          (let ((_g210404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210403_)
                                                       (##values-length
                                                        _g210403_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210404_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210404_)))
                                          (let ((_%target208356208397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210403_ 0)))
                                                (_%tl208358208400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210403_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208358208400%_))
                                                (letrec ((_%loop208359208403%_
                                                          (lambda (_%hd208357208407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208363208410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208357208407%_))
                        (let ((_%e208360208413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208357208407%_))))
                          (let ((_%lp-hd208361208417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208360208413%_)))
                                (_%lp-tl208362208420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208360208413%_))))
                            (_%loop208359208403%_
                             _%lp-tl208362208420%_
                             (cons _%lp-hd208361208417%_
                                   _%case-signature208363208410%_))))
                        (let ((_%case-signature208364208423%_
                               (reverse _%case-signature208363208410%_)))
                          ((lambda (_%L208427%_ _%L208429%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208429%_))
                                 (let* ((_%signatures208460%_
                                         (map (lambda (_%g208446208448%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208343%_
                                                 _%L208429%_
                                                 _%g208446208448%_))
                                              (let ((__tmp210405
                                                     (lambda (_%g208451208454%_
                                                              _%g208452208457%_)
                                                       (cons _%g208451208454%_
                                                             _%g208452208457%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210405
                                                 '()
                                                 _%L208427%_))))
                                        (_%g208463208489%_
                                         (lambda (_%g208464208485%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208464208485%_))))
                                        (_%g208462209249%_
                                         (lambda (_%g208464208493%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208464208493%_))
                                               (let ((_g210406_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208464208493%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210407_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210406_)
                        (##values-length _g210406_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210407_ 2)))
                 (error "Context expects 2 values" _g210407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208467208496%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210406_
                                                             0)))
                                                         (_%tl208469208499%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210406_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208469208499%_))
                                                         (letrec ((_%loop208470208502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208468208506%_
                                    _%sig208474208509%_
                                    _%arity208475208511%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208468208506%_))
                                 (let ((_%e208471208514%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208468208506%_))))
                                   (let ((_%lp-hd208472208518%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208471208514%_)))
                                         (_%lp-tl208473208521%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208471208514%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208472208518%_))
                                         (let ((_%e208478208524%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208472208518%_))))
                                           (let ((_%hd208479208528%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208478208524%_)))
                                                 (_%tl208480208531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208478208524%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208480208531%_))
                                                 (let ((_%e208481208534%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208480208531%_))))
                                                   (let ((_%hd208482208538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208481208534%_)))
                                                         (_%tl208483208541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208481208534%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208483208541%_))
                                                         (_%loop208470208502%_
                                                          _%lp-tl208473208521%_
                                                          (cons _%hd208482208538%_
                                                                _%sig208474208509%_)
                                                          (cons _%hd208479208528%_
                                                                _%arity208475208511%_))
                                                         (_%g208463208489%_
                                                          _%g208464208493%_))))
                                                 (_%g208463208489%_
                                                  _%g208464208493%_))))
                                         (_%g208463208489%_
                                          _%g208464208493%_))))
                                 (let ((_%sig208476208544%_
                                        (reverse _%sig208474208509%_))
                                       (_%arity208477208547%_
                                        (reverse _%arity208475208511%_)))
                                   ((lambda (_%L208550%_ _%L208552%_)
                                      (let* ((_%g208569208577%_
                                              (lambda (_%g208570208573%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208570208573%_))))
                                             (_%g208568209234%_
                                              (lambda (_%g208570208581%_)
                                                ((lambda (_%L208584%_)
                                                   (let* ((_%g208597208605%_
                                                           (lambda (_%g208598208601%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208598208601%_))))
                  (_%g208596208627%_
                   (lambda (_%g208598208609%_)
                     ((lambda (_%L208612%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208584%_ (cons _%L208612%_ '()))))
                      _%g208598208609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208596208627%_
                                                      (let ((_g210408_
                                                             (let _%loop208631%_ ((_%rest208634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208460%_)
                                          (_%unchecked-proc208636%_ '#f)
                                          (_%unchecked-clauses208637%_ '()))
                       (let* ((_%rest208638208646%_ _%rest208634%_)
                              (_%else208640208658%_
                               (lambda ()
                                 (values _%unchecked-proc208636%_
                                         (reverse!
                                          _%unchecked-clauses208637%_))))
                              (_%K208642209099%_
                               (lambda (_%rest208662%_ _%hd208664%_)
                                 (let* ((_%g208666208753%_
                                         (lambda (_%g208667208749%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208667208749%_))))
                                        (_%g208665209095%_
                                         (lambda (_%g208667208757%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208667208757%_))
                                               (let ((_%e208674208760%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208667208757%_))))
                                                 (let ((_%hd208675208764%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208674208760%_)))
                                                       (_%tl208676208767%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208674208760%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208676208767%_))
                                                       (let ((_%e208677208770%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208676208767%_))))
                 (let ((_%hd208678208774%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208677208770%_)))
                       (_%tl208679208777%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208677208770%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208678208774%_))
                       (let ((_%e208680208780%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208678208774%_))))
                         (let ((_%hd208681208784%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208680208780%_)))
                               (_%tl208682208787%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208680208780%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208682208787%_))
                               (let ((_%e208683208790%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208682208787%_))))
                                 (let ((_%hd208684208794%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208683208790%_)))
                                       (_%tl208685208797%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208683208790%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208684208794%_))
                                       (let ((_%e208686208800%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208684208794%_))))
                                         (if (equal? _%e208686208800%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208685208797%_))
                                                 (let ((_%e208687208804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208685208797%_))))
                                                   (let ((_%hd208688208808%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208687208804%_)))
                                                         (_%tl208689208811%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208687208804%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208688208808%_))
                                                         (let ((_%e208690208814%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208688208808%_))))
                   (let ((_%hd208691208818%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208690208814%_)))
                         (_%tl208692208821%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208690208814%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208691208818%_))
                         (if (let ((__tmp210410 |gxc[1]#_g210411_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210410
                                _%hd208691208818%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208692208821%_))
                                 (let ((_%e208693208824%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208692208821%_))))
                                   (let ((_%hd208694208828%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208693208824%_)))
                                         (_%tl208695208831%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208693208824%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208695208831%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208689208811%_))
                                             (let ((_%e208696208834%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208689208811%_))))
                                               (let ((_%hd208697208838%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208696208834%_)))
                                                     (_%tl208698208841%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208696208834%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208697208838%_))
                                                     (let ((_%e208699208844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208697208838%_))))
                                                       (if (equal? _%e208699208844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208698208841%_))
                       (let ((_%e208700208848%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208698208841%_))))
                         (let ((_%hd208701208852%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208700208848%_)))
                               (_%tl208702208855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208700208848%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208701208852%_))
                               (let ((_%e208703208858%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208701208852%_))))
                                 (let ((_%hd208704208862%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208703208858%_)))
                                       (_%tl208705208865%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208703208858%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208704208862%_))
                                       (if (let ((__tmp210412
                                                  |gxc[1]#_g210413_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210412
                                              _%hd208704208862%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208705208865%_))
                                               (let ((_%e208706208868%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208705208865%_))))
                                                 (let ((_%hd208707208872%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208706208868%_)))
                                                       (_%tl208708208875%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208706208868%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208708208875%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208702208855%_))
                                                           (let ((_%e208709208878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208702208855%_))))
                     (let ((_%hd208710208882%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208709208878%_)))
                           (_%tl208711208885%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208709208878%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208710208882%_))
                           (let ((_%e208712208888%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208710208882%_))))
                             (if (equal? _%e208712208888%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208711208885%_))
                                     (let ((_%e208713208892%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208711208885%_))))
                                       (let ((_%hd208714208896%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208713208892%_)))
                                             (_%tl208715208899%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208713208892%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208714208896%_))
                                             (let ((_%e208716208902%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208714208896%_))))
                                               (let ((_%hd208717208906%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208716208902%_)))
                                                     (_%tl208718208909%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208716208902%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208717208906%_))
                                                     (if (let ((__tmp210414
                                                                |gxc[1]#_g210415_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210414
                                                            _%hd208717208906%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208718208909%_))
                     (let ((_%e208719208912%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208718208909%_))))
                       (let ((_%hd208720208916%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208719208912%_)))
                             (_%tl208721208919%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208719208912%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208721208919%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208715208899%_))
                                 (let ((_%e208722208922%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208715208899%_))))
                                   (let ((_%hd208723208926%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208722208922%_)))
                                         (_%tl208724208929%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208722208922%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208723208926%_))
                                         (let ((_%e208725208932%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208723208926%_))))
                                           (if (equal? _%e208725208932%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208724208929%_))
                                                   (let ((_%e208726208936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208724208929%_))))
                                                     (let ((_%hd208727208940%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208726208936%_)))
                                                           (_%tl208728208943%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208726208936%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208727208940%_))
                                                           (let ((_%e208729208946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208727208940%_))))
                     (let ((_%hd208730208950%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208729208946%_)))
                           (_%tl208731208953%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208729208946%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208730208950%_))
                           (if (let ((__tmp210416 |gxc[1]#_g210417_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210416
                                  _%hd208730208950%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208731208953%_))
                                   (let ((_%e208732208956%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208731208953%_))))
                                     (let ((_%hd208733208960%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208732208956%_)))
                                           (_%tl208734208963%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208732208956%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208734208963%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208728208943%_))
                                               (let ((_%e208735208966%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208728208943%_))))
                                                 (let ((_%hd208736208970%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208735208966%_)))
                                                       (_%tl208737208973%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208735208966%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208736208970%_))
                                                       (let ((_%e208738208976%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208736208970%_))))
                 (if (equal? _%e208738208976%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208737208973%_))
                         (let ((_%e208739208980%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208737208973%_))))
                           (let ((_%hd208740208984%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208739208980%_)))
                                 (_%tl208741208987%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208739208980%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208740208984%_))
                                 (let ((_%e208742208990%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208740208984%_))))
                                   (let ((_%hd208743208994%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208742208990%_)))
                                         (_%tl208744208997%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208742208990%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208743208994%_))
                                         (if (let ((__tmp210418
                                                    |gxc[1]#_g210419_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210418
                                                _%hd208743208994%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208744208997%_))
                                                 (let ((_%e208745209000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208744208997%_))))
                                                   (let ((_%hd208746209004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208745209000%_)))
                                                         (_%tl208747209007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208745209000%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208747209007%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208741208987%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208679208777%_))
                         ((lambda (_%L209010%_
                                   _%L209012%_
                                   _%L209013%_
                                   _%L209014%_
                                   _%L209015%_
                                   _%L209016%_)
                            (let ((_%clause209087%_
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
                                                     (cons _%L209016%_ '()))
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
                                                 (cons _%L209014%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209010%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked209089%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L209012%_))))
                              (_%loop208631%_
                               _%rest208662%_
                               (let ((_%$e209091%_ _%unchecked209089%_))
                                 (if _%$e209091%_
                                     _%$e209091%_
                                     _%unchecked-proc208636%_))
                               (cons _%clause209087%_
                                     _%unchecked-clauses208637%_))))
                          _%hd208746209004%_
                          _%hd208733208960%_
                          _%hd208720208916%_
                          _%hd208707208872%_
                          _%hd208694208828%_
                          _%hd208675208764%_)
                         (_%g208666208753%_ _%g208667208757%_))
                     (_%g208666208753%_ _%g208667208757%_))
                 (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208666208753%_
                                                  _%g208667208757%_))
                                             (_%g208666208753%_
                                              _%g208667208757%_))
                                         (_%g208666208753%_
                                          _%g208667208757%_))))
                                 (_%g208666208753%_ _%g208667208757%_))))
                         (_%g208666208753%_ _%g208667208757%_))
                     (_%g208666208753%_ _%g208667208757%_)))
               (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208666208753%_
                                                _%g208667208757%_))
                                           (_%g208666208753%_
                                            _%g208667208757%_))))
                                   (_%g208666208753%_ _%g208667208757%_))
                               (_%g208666208753%_ _%g208667208757%_))
                           (_%g208666208753%_ _%g208667208757%_))))
                   (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208666208753%_
                                                    _%g208667208757%_))
                                               (_%g208666208753%_
                                                _%g208667208757%_)))
                                         (_%g208666208753%_
                                          _%g208667208757%_))))
                                 (_%g208666208753%_ _%g208667208757%_))
                             (_%g208666208753%_ _%g208667208757%_))))
                     (_%g208666208753%_ _%g208667208757%_))
                 (_%g208666208753%_ _%g208667208757%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208666208753%_
                                                      _%g208667208757%_))))
                                             (_%g208666208753%_
                                              _%g208667208757%_))))
                                     (_%g208666208753%_ _%g208667208757%_))
                                 (_%g208666208753%_ _%g208667208757%_)))
                           (_%g208666208753%_ _%g208667208757%_))))
                   (_%g208666208753%_ _%g208667208757%_))
               (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208666208753%_
                                                _%g208667208757%_))
                                           (_%g208666208753%_
                                            _%g208667208757%_))
                                       (_%g208666208753%_ _%g208667208757%_))))
                               (_%g208666208753%_ _%g208667208757%_))))
                       (_%g208666208753%_ _%g208667208757%_))
                   (_%g208666208753%_ _%g208667208757%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208666208753%_
                                                      _%g208667208757%_))))
                                             (_%g208666208753%_
                                              _%g208667208757%_))
                                         (_%g208666208753%_
                                          _%g208667208757%_))))
                                 (_%g208666208753%_ _%g208667208757%_))
                             (_%g208666208753%_ _%g208667208757%_))
                         (_%g208666208753%_ _%g208667208757%_))))
                 (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208666208753%_
                                                  _%g208667208757%_))
                                             (_%g208666208753%_
                                              _%g208667208757%_)))
                                       (_%g208666208753%_ _%g208667208757%_))))
                               (_%g208666208753%_ _%g208667208757%_))))
                       (_%g208666208753%_ _%g208667208757%_))))
               (_%g208666208753%_ _%g208667208757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208666208753%_
                                                _%g208667208757%_)))))
                                   (_%g208665209095%_ _%hd208664%_)))))
                         (if (pair? _%rest208638208646%_)
                             (let ((_%hd208643209103%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208638208646%_)))
                                   (_%tl208644209106%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208638208646%_))))
                               (let* ((_%hd209109%_ _%hd208643209103%_)
                                      (_%rest209112%_ _%tl208644209106%_))
                                 (_%K208642209099%_
                                  _%rest209112%_
                                  _%hd209109%_)))
                             (_%else208640208658%_))))))
                (begin
                  (let ((_g210409_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210408_)
                               (##values-length _g210408_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210409_ 2)))
                        (error "Context expects 2 values" _g210409_)))
                  (let ((_%unchecked-proc209115%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210408_ 0)))
                        (_%unchecked-clauses209117%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210408_ 1))))
                    (if _%unchecked-proc209115%_
                        (let* ((_%g209119209143%_
                                (lambda (_%g209120209139%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209120209139%_))))
                               (_%g209118209230%_
                                (lambda (_%g209120209147%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209120209147%_))
                                      (let ((_%e209123209150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209120209147%_))))
                                        (let ((_%hd209124209154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209123209150%_)))
                                              (_%tl209125209157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209123209150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209125209157%_))
                                              (let ((_%e209126209160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209125209157%_))))
                                                (let ((_%hd209127209164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209126209160%_)))
                                                      (_%tl209128209167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209126209160%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209127209164%_))
                                                      (let ((_g210420_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209127209164%_ '0))))
                (begin
                  (let ((_g210421_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210420_)
                               (##values-length _g210420_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210421_ 2)))
                        (error "Context expects 2 values" _g210421_)))
                  (let ((_%target209129209170%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210420_ 0)))
                        (_%tl209131209173%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210420_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209131209173%_))
                        (letrec ((_%loop209132209176%_
                                  (lambda (_%hd209130209180%_
                                           _%clause209136209183%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209130209180%_))
                                        (let ((_%e209133209186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209130209180%_))))
                                          (let ((_%lp-hd209134209190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209133209186%_)))
                                                (_%lp-tl209135209193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209133209186%_))))
                                            (_%loop209132209176%_
                                             _%lp-tl209135209193%_
                                             (cons _%lp-hd209134209190%_
                                                   _%clause209136209183%_))))
                                        (let ((_%clause209137209196%_
                                               (reverse _%clause209136209183%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209128209167%_))
                                              ((lambda (_%L209200%_
                                                        _%L209202%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209202%_
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
                                             (let ((__tmp210422
                                                    (lambda (_%g209221209224%_
                                                             _%g209222209227%_)
                                                      (cons _%g209221209224%_
                                                            _%g209222209227%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210422
                                                '()
                                                _%L209200%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209137209196%_
                                               _%hd209124209154%_)
                                              (_%g209119209143%_
                                               _%g209120209147%_)))))))
                          (_%loop209132209176%_ _%target209129209170%_ '()))
                        (_%g209119209143%_ _%g209120209147%_)))))
              (_%g209119209143%_ _%g209120209147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209119209143%_
                                               _%g209120209147%_))))
                                      (_%g209119209143%_ _%g209120209147%_)))))
                          (_%g209118209230%_
                           (list _%unchecked-proc209115%_
                                 _%unchecked-clauses209117%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208570208581%_))))
                                        (_%g208568209234%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208429%_
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
                                          _%L208550%_
                                          _%L208552%_))
                                       (let ((__tmp210423
                                              (lambda (_%g209237209241%_
                                                       _%g209238209244%_
                                                       _%g209239209246%_)
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
                                (cons _%g209238209244%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209237209241%_ '())))))
              _%g209239209246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210423
                                          '()
                                          _%L208550%_
                                          _%L208552%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208476208544%_
                                    _%arity208477208547%_))))))
                   (_%loop208470208502%_ _%target208467208496%_ '() '()))
                 (_%g208463208489%_ _%g208464208493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208463208489%_
                                                _%g208464208493%_)))))
                                   (_%g208462209249%_ _%signatures208460%_))
                                 (_%g208346208370%_ _%g208347208374%_)))
                           _%case-signature208364208423%_
                           _%hd208354208391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208359208403%_
                                                   _%target208356208397%_
                                                   '()))
                                                (_%g208346208370%_
                                                 _%g208347208374%_)))))
                                      (_%g208346208370%_ _%g208347208374%_))))
                              (_%g208346208370%_ _%g208347208374%_))))
                      (_%g208346208370%_ _%g208347208374%_)))))
          (_%g208345209253%_ _%stx208343%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209261%_)
        (let* ((_%__stx210243210244%_ _%$stx209261%_)
               (_%g209267209327%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210243210244%_)))))
          (let ((_%__kont210246210247%_
                 (lambda (_%L209549%_ _%L209551%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209551%_ '()))
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
                                                       (cons _%L209551%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209549%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210248210249%_
                 (lambda (_%L209474%_ _%L209476%_ _%L209477%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209477%_ '()))
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
                                                       (cons _%L209477%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209476%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209474%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210250210251%_
                 (lambda (_%L209388%_ _%L209390%_ _%L209391%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209391%_ '()))
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
                                                       (cons _%L209391%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209390%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209388%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210243210244%_))
                (let ((_%e209271209505%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210243210244%_))))
                  (let ((_%tl209273209512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209271209505%_)))
                        (_%hd209272209509%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209271209505%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209273209512%_))
                        (let ((_%e209274209515%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209273209512%_))))
                          (let ((_%tl209276209522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209274209515%_)))
                                (_%hd209275209519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209274209515%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209275209519%_))
                                (let ((_%e209277209525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209275209519%_))))
                                  (if (equal? _%e209277209525%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209276209522%_))
                                          (let ((_%e209278209529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209276209522%_))))
                                            (let ((_%tl209280209536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209278209529%_)))
                                                  (_%hd209279209533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209278209529%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209280209536%_))
                                                  (let ((_%e209281209539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209280209536%_))))
                                                    (let ((_%tl209283209546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209281209539%_)))
                                                          (_%hd209282209543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209281209539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209283209546%_))
                                                          (_%__kont210246210247%_
                                                           _%hd209282209543%_
                                                           _%hd209279209533%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209267209327%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209267209327%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209267209327%_)))
                                      (if (equal? _%e209277209525%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209276209522%_))
                                              (let ((_%e209294209444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209276209522%_))))
                                                (let ((_%tl209296209451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209294209444%_)))
                                                      (_%hd209295209448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209294209444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209296209451%_))
                                                      (let ((_%e209297209454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209296209451%_))))
                (let ((_%tl209299209461%_
                       (let () (declare (not safe)) (##cdr _%e209297209454%_)))
                      (_%hd209298209458%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209297209454%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209299209461%_))
                      (let ((_%e209300209464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209299209461%_))))
                        (let ((_%tl209302209471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209300209464%_)))
                              (_%hd209301209468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209300209464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209302209471%_))
                              (_%__kont210248210249%_
                               _%hd209301209468%_
                               _%hd209298209458%_
                               _%hd209295209448%_)
                              (let ()
                                (declare (not safe))
                                (_%g209267209327%_)))))
                      (let () (declare (not safe)) (_%g209267209327%_)))))
              (let () (declare (not safe)) (_%g209267209327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209267209327%_)))
                                          (if (equal? _%e209277209525%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209276209522%_))
                                                  (let ((_%e209313209358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209276209522%_))))
                                                    (let ((_%tl209315209365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209313209358%_)))
                                                          (_%hd209314209362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209313209358%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209315209365%_))
                                                          (let ((_%e209316209368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209315209365%_))))
                    (let ((_%tl209318209375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209316209368%_)))
                          (_%hd209317209372%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209316209368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209318209375%_))
                          (let ((_%e209319209378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209318209375%_))))
                            (let ((_%tl209321209385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209319209378%_)))
                                  (_%hd209320209382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209319209378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209321209385%_))
                                  (_%__kont210250210251%_
                                   _%hd209320209382%_
                                   _%hd209317209372%_
                                   _%hd209314209362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209267209327%_)))))
                          (let () (declare (not safe)) (_%g209267209327%_)))))
                  (let () (declare (not safe)) (_%g209267209327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209267209327%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209267209327%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209267209327%_)))))
                        (let () (declare (not safe)) (_%g209267209327%_)))))
                (let () (declare (not safe)) (_%g209267209327%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209573%_)
        (let* ((_%g209577209597%_
                (lambda (_%g209578209593%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209578209593%_))))
               (_%g209576209668%_
                (lambda (_%g209578209601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209578209601%_))
                      (let ((_%e209580209604%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209578209601%_))))
                        (let ((_%hd209581209608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209580209604%_)))
                              (_%tl209582209611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209580209604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209582209611%_))
                              (let ((_g210424_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209582209611%_
                                        '0))))
                                (begin
                                  (let ((_g210425_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210424_)
                                               (##values-length _g210424_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210425_ 2)))
                                        (error "Context expects 2 values"
                                               _g210425_)))
                                  (let ((_%target209583209614%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210424_ 0)))
                                        (_%tl209585209617%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210424_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209585209617%_))
                                        (letrec ((_%loop209586209620%_
                                                  (lambda (_%hd209584209624%_
                                                           _%decl209590209627%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209584209624%_))
                                                        (let ((_%e209587209630%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209584209624%_))))
                  (let ((_%lp-hd209588209634%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209587209630%_)))
                        (_%lp-tl209589209637%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209587209630%_))))
                    (_%loop209586209620%_
                     _%lp-tl209589209637%_
                     (cons _%lp-hd209588209634%_ _%decl209590209627%_))))
                (let ((_%decl209591209640%_ (reverse _%decl209590209627%_)))
                  ((lambda (_%L209644%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210426
                                  (lambda (_%g209659209662%_ _%g209660209665%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209659209662%_)
                                          _%g209660209665%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210426 '() _%L209644%_))))
                   _%decl209591209640%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209586209620%_
                                           _%target209583209614%_
                                           '()))
                                        (_%g209577209597%_
                                         _%g209578209601%_)))))
                              (_%g209577209597%_ _%g209578209601%_))))
                      (_%g209577209597%_ _%g209578209601%_)))))
          (_%g209576209668%_ _%$stx209573%_))))))
