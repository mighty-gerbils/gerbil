(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g150257_|
    (gx#core-deserialize-mark
     '(0
       ($%arg149178 . _%$%arg149178149236%_)
       ($%arg149179 . _%$%arg149179149250%_)
       (id . _%id149203%_)
       (arg . _%arg149266%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g150258_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g150257_|)))
  (define |[1]#_g150259_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g150260_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g150259_|)))
  (define |[1]#_g150263_|
    (gx#core-deserialize-mark
     '(0
       ($%arg149300 . _%$%arg149300149370%_)
       ($%arg149299 . _%$%arg149299149356%_)
       (id . _%id149323%_)
       (arg . _%arg149386%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g150264_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g150263_|)))
  (define |[1]#_g150265_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g150266_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g150265_|)))
  (define |[1]#_g150269_|
    (gx#core-deserialize-mark
     '(0
       ($%arg149420 . _%$%arg149420149490%_)
       (id . _%id149443%_)
       ($%arg149419 . _%$%arg149419149476%_)
       (arg . _%arg149506%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g150270_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g150269_|)))
  (define |[1]#_g150271_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g150272_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g150271_|)))
  (define |[1]#_g150275_|
    (gx#core-deserialize-mark
     '(0
       ($%arg149539 . _%$%arg149539149596%_)
       ($%arg149540 . _%$%arg149540149610%_)
       (id . _%id149563%_)
       (arg . _%arg149626%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g150276_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g150275_|)))
  (define |[1]#_g150277_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g150278_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g150277_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx149160%_)
        (let* ((_%$%g149165149186%_
                (lambda (_%$%g149166149182%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g149166149182%_)))
               (_%$%g149164149205%_
                (lambda (_%$%g149166149190%_)
                  ((lambda (_%$%g149180149193%_)
                     (if (gx#identifier? _%$%g149180149193%_)
                         (gx#datum->syntax '#f 'set-load-path!)
                         (_%$%g149165149186%_ _%$%g149166149190%_)))
                   _%$%g149166149190%_)))
               (_%$%g149163149276%_
                (lambda (_%$%g149166149209%_)
                  (if (gx#stx-pair? _%$%g149166149209%_)
                      (let ((_%$%e149168149212%_
                             (gx#syntax-e _%$%g149166149209%_)))
                        (let ((_%$%hd149169149216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e149168149212%_)))
                              (_%$%tl149170149219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e149168149212%_))))
                          (if (gx#stx-pair/null? _%$%tl149170149219%_)
                              (let ((_g150255_
                                     (gx#syntax-split-splice
                                      _%$%tl149170149219%_
                                      '0)))
                                (begin
                                  (let ((_g150256_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150255_)
                                               (##values-length _g150255_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150256_ 2)))
                                        (error "Context expects 2 values"
                                               _g150256_)))
                                  (let ((_%$%target149171149222%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150255_ 0)))
                                        (_%$%tl149173149225%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150255_ 1))))
                                    (if (gx#stx-null? _%$%tl149173149225%_)
                                        (letrec ((_%$%loop149174149228%_
                                                  (lambda (_%$%hd149172149232%_
                                                           _%$%arg149178149235%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd149172149232%_)
                                                        (let ((_%$%e149175149238%_
                                                               (gx#syntax-e
                                                                _%$%hd149172149232%_)))
                                                          (let ((_%$%lp-hd149176149242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e149175149238%_)))
                        (_%$%lp-tl149177149245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e149175149238%_))))
                    (_%$%loop149174149228%_
                     _%$%lp-tl149177149245%_
                     (cons _%$%lp-hd149176149242%_ _%$%arg149178149235%_))))
                (let ((_%$%arg149179149248%_ (reverse _%$%arg149178149235%_)))
                  ((lambda (_%$%g149167149252%_)
                     (cons (gx#datum->syntax
                            |[1]#_g150258_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                       (cons (foldr (lambda (_%$%g149267149270%_
                                                             _%$%g149268149273%_)
                                                      (cons _%$%g149267149270%_
                                                            _%$%g149268149273%_))
                                                    '()
                                                    _%$%g149167149252%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g150260_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'paths)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':list) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__set-load-path!)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'paths)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg149179149248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop149174149228%_
                                           _%$%target149171149222%_
                                           '()))
                                        (_%$%g149164149205%_
                                         _%$%g149166149209%_)))))
                              (_%$%g149164149205%_ _%$%g149166149209%_))))
                      (_%$%g149164149205%_ _%$%g149166149209%_)))))
          (_%$%g149163149276%_ _%$stx149160%_))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx149281%_)
        (let* ((_%$%g149286149307%_
                (lambda (_%$%g149287149303%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g149287149303%_)))
               (_%$%g149285149325%_
                (lambda (_%$%g149287149311%_)
                  ((lambda (_%$%g149301149314%_)
                     (if (gx#identifier? _%$%g149301149314%_)
                         (gx#datum->syntax '#f 'load-module)
                         (_%$%g149286149307%_ _%$%g149287149311%_)))
                   _%$%g149287149311%_)))
               (_%$%g149284149396%_
                (lambda (_%$%g149287149329%_)
                  (if (gx#stx-pair? _%$%g149287149329%_)
                      (let ((_%$%e149289149332%_
                             (gx#syntax-e _%$%g149287149329%_)))
                        (let ((_%$%hd149290149336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e149289149332%_)))
                              (_%$%tl149291149339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e149289149332%_))))
                          (if (gx#stx-pair/null? _%$%tl149291149339%_)
                              (let ((_g150261_
                                     (gx#syntax-split-splice
                                      _%$%tl149291149339%_
                                      '0)))
                                (begin
                                  (let ((_g150262_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150261_)
                                               (##values-length _g150261_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150262_ 2)))
                                        (error "Context expects 2 values"
                                               _g150262_)))
                                  (let ((_%$%target149292149342%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150261_ 0)))
                                        (_%$%tl149294149345%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150261_ 1))))
                                    (if (gx#stx-null? _%$%tl149294149345%_)
                                        (letrec ((_%$%loop149295149348%_
                                                  (lambda (_%$%hd149293149352%_
                                                           _%$%arg149299149355%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd149293149352%_)
                                                        (let ((_%$%e149296149358%_
                                                               (gx#syntax-e
                                                                _%$%hd149293149352%_)))
                                                          (let ((_%$%lp-hd149297149362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e149296149358%_)))
                        (_%$%lp-tl149298149365%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e149296149358%_))))
                    (_%$%loop149295149348%_
                     _%$%lp-tl149298149365%_
                     (cons _%$%lp-hd149297149362%_ _%$%arg149299149355%_))))
                (let ((_%$%arg149300149368%_ (reverse _%$%arg149299149355%_)))
                  ((lambda (_%$%g149288149372%_)
                     (cons (gx#datum->syntax
                            |[1]#_g150264_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'modpath)
                                             '())
                                       (cons (foldr (lambda (_%$%g149387149390%_
                                                             _%$%g149388149393%_)
                                                      (cons _%$%g149387149390%_
                                                            _%$%g149388149393%_))
                                                    '()
                                                    _%$%g149288149372%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g150266_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'modpath)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':string) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__load-module)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'modpath)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg149300149368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop149295149348%_
                                           _%$%target149292149342%_
                                           '()))
                                        (_%$%g149285149325%_
                                         _%$%g149287149329%_)))))
                              (_%$%g149285149325%_ _%$%g149287149329%_))))
                      (_%$%g149285149325%_ _%$%g149287149329%_)))))
          (_%$%g149284149396%_ _%$stx149281%_))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx149401%_)
        (let* ((_%$%g149406149427%_
                (lambda (_%$%g149407149423%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g149407149423%_)))
               (_%$%g149405149445%_
                (lambda (_%$%g149407149431%_)
                  ((lambda (_%$%g149421149434%_)
                     (if (gx#identifier? _%$%g149421149434%_)
                         (gx#datum->syntax '#f 'reload-module!)
                         (_%$%g149406149427%_ _%$%g149407149431%_)))
                   _%$%g149407149431%_)))
               (_%$%g149404149516%_
                (lambda (_%$%g149407149449%_)
                  (if (gx#stx-pair? _%$%g149407149449%_)
                      (let ((_%$%e149409149452%_
                             (gx#syntax-e _%$%g149407149449%_)))
                        (let ((_%$%hd149410149456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e149409149452%_)))
                              (_%$%tl149411149459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e149409149452%_))))
                          (if (gx#stx-pair/null? _%$%tl149411149459%_)
                              (let ((_g150267_
                                     (gx#syntax-split-splice
                                      _%$%tl149411149459%_
                                      '0)))
                                (begin
                                  (let ((_g150268_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150267_)
                                               (##values-length _g150267_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150268_ 2)))
                                        (error "Context expects 2 values"
                                               _g150268_)))
                                  (let ((_%$%target149412149462%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150267_ 0)))
                                        (_%$%tl149414149465%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150267_ 1))))
                                    (if (gx#stx-null? _%$%tl149414149465%_)
                                        (letrec ((_%$%loop149415149468%_
                                                  (lambda (_%$%hd149413149472%_
                                                           _%$%arg149419149475%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd149413149472%_)
                                                        (let ((_%$%e149416149478%_
                                                               (gx#syntax-e
                                                                _%$%hd149413149472%_)))
                                                          (let ((_%$%lp-hd149417149482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e149416149478%_)))
                        (_%$%lp-tl149418149485%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e149416149478%_))))
                    (_%$%loop149415149468%_
                     _%$%lp-tl149418149485%_
                     (cons _%$%lp-hd149417149482%_ _%$%arg149419149475%_))))
                (let ((_%$%arg149420149488%_ (reverse _%$%arg149419149475%_)))
                  ((lambda (_%$%g149408149492%_)
                     (cons (gx#datum->syntax
                            |[1]#_g150270_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'modpath)
                                             '())
                                       (cons (foldr (lambda (_%$%g149507149510%_
                                                             _%$%g149508149513%_)
                                                      (cons _%$%g149507149510%_
                                                            _%$%g149508149513%_))
                                                    '()
                                                    _%$%g149408149492%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g150272_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'modpath)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':string) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__reload-module!)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'modpath)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg149420149488%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop149415149468%_
                                           _%$%target149412149462%_
                                           '()))
                                        (_%$%g149405149445%_
                                         _%$%g149407149449%_)))))
                              (_%$%g149405149445%_ _%$%g149407149449%_))))
                      (_%$%g149405149445%_ _%$%g149407149449%_)))))
          (_%$%g149404149516%_ _%$stx149401%_))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx149521%_)
        (let* ((_%$%g149526149547%_
                (lambda (_%$%g149527149543%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g149527149543%_)))
               (_%$%g149525149565%_
                (lambda (_%$%g149527149551%_)
                  ((lambda (_%$%g149541149554%_)
                     (if (gx#identifier? _%$%g149541149554%_)
                         (gx#datum->syntax '#f 'module-load-order)
                         (_%$%g149526149547%_ _%$%g149527149551%_)))
                   _%$%g149527149551%_)))
               (_%$%g149524149636%_
                (lambda (_%$%g149527149569%_)
                  (if (gx#stx-pair? _%$%g149527149569%_)
                      (let ((_%$%e149529149572%_
                             (gx#syntax-e _%$%g149527149569%_)))
                        (let ((_%$%hd149530149576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e149529149572%_)))
                              (_%$%tl149531149579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e149529149572%_))))
                          (if (gx#stx-pair/null? _%$%tl149531149579%_)
                              (let ((_g150273_
                                     (gx#syntax-split-splice
                                      _%$%tl149531149579%_
                                      '0)))
                                (begin
                                  (let ((_g150274_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150273_)
                                               (##values-length _g150273_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150274_ 2)))
                                        (error "Context expects 2 values"
                                               _g150274_)))
                                  (let ((_%$%target149532149582%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150273_ 0)))
                                        (_%$%tl149534149585%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150273_ 1))))
                                    (if (gx#stx-null? _%$%tl149534149585%_)
                                        (letrec ((_%$%loop149535149588%_
                                                  (lambda (_%$%hd149533149592%_
                                                           _%$%arg149539149595%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd149533149592%_)
                                                        (let ((_%$%e149536149598%_
                                                               (gx#syntax-e
                                                                _%$%hd149533149592%_)))
                                                          (let ((_%$%lp-hd149537149602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e149536149598%_)))
                        (_%$%lp-tl149538149605%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e149536149598%_))))
                    (_%$%loop149535149588%_
                     _%$%lp-tl149538149605%_
                     (cons _%$%lp-hd149537149602%_ _%$%arg149539149595%_))))
                (let ((_%$%arg149540149608%_ (reverse _%$%arg149539149595%_)))
                  ((lambda (_%$%g149528149612%_)
                     (cons (gx#datum->syntax
                            |[1]#_g150276_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'modpath)
                                             '())
                                       (cons (foldr (lambda (_%$%g149627149630%_
                                                             _%$%g149628149633%_)
                                                      (cons _%$%g149627149630%_
                                                            _%$%g149628149633%_))
                                                    '()
                                                    _%$%g149528149612%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g150278_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'modpath)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':string) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__module-load-order)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'modpath)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg149540149608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop149535149588%_
                                           _%$%target149532149582%_
                                           '()))
                                        (_%$%g149525149565%_
                                         _%$%g149527149569%_)))))
                              (_%$%g149525149565%_ _%$%g149527149569%_))))
                      (_%$%g149525149565%_ _%$%g149527149569%_)))))
          (_%$%g149524149636%_ _%$stx149521%_))))))
