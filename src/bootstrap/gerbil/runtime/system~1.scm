(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g105212_|
    (gx#core-deserialize-mark
     '(0
       ($%arg104420 . _%$%arg104420104478%_)
       (id . _%id104445%_)
       ($%arg104421 . _%$%arg104421104492%_)
       (arg . _%arg104508%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g105213_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g105212_|)))
  (define |[1]#_g105214_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value105175%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105215_|
    (##structure
     gx#syntax-quote::t
     '_%new-value105175%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g105214_|)))
  (define |[1]#_g105216_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105217_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g105216_|)))
  (define |[1]#_g105220_|
    (gx#core-deserialize-mark
     '(0
       ($%arg104541 . _%$%arg104541104598%_)
       (id . _%id104565%_)
       ($%arg104542 . _%$%arg104542104612%_)
       (arg . _%arg104628%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g105221_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g105220_|)))
  (define |[1]#_g105222_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105223_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g105222_|)))
  (define |[1]#_g105226_|
    (gx#core-deserialize-mark
     '(0
       ($%arg104662 . _%$%arg104662104732%_)
       (id . _%id104685%_)
       (arg . _%arg104748%_)
       ($%arg104661 . _%$%arg104661104718%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g105227_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g105226_|)))
  (define |[1]#_g105228_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105229_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g105228_|)))
  (define |[1]#_g105232_|
    (gx#core-deserialize-mark
     '(0
       ($%arg104781 . _%$%arg104781104838%_)
       ($%arg104782 . _%$%arg104782104852%_)
       (id . _%id104805%_)
       (arg . _%arg104868%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g105233_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g105232_|)))
  (define |[1]#_g105234_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value104925%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105235_|
    (##structure
     gx#syntax-quote::t
     '_%new-value104925%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g105234_|)))
  (define |[1]#_g105236_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g105237_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g105236_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx104402%_)
        (let* ((_%$%g104407104428%_
                (lambda (_%$%g104408104424%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g104408104424%_)))
               (_%$%g104406104447%_
                (lambda (_%$%g104408104432%_)
                  ((lambda (_%$%g104422104435%_)
                     (if (gx#identifier? _%$%g104422104435%_)
                         (gx#datum->syntax '#f 'build-manifest-set!)
                         (_%$%g104407104428%_ _%$%g104408104432%_)))
                   _%$%g104408104432%_)))
               (_%$%g104405104518%_
                (lambda (_%$%g104408104451%_)
                  (if (gx#stx-pair? _%$%g104408104451%_)
                      (let ((_%$%e104410104454%_
                             (gx#syntax-e _%$%g104408104451%_)))
                        (let ((_%$%hd104411104458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e104410104454%_)))
                              (_%$%tl104412104461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e104410104454%_))))
                          (if (gx#stx-pair/null? _%$%tl104412104461%_)
                              (let ((_g105210_
                                     (gx#syntax-split-splice
                                      _%$%tl104412104461%_
                                      '0)))
                                (begin
                                  (let ((_g105211_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g105210_)
                                               (##values-length _g105210_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g105211_ 2)))
                                        (error "Context expects 2 values"
                                               _g105211_)))
                                  (let ((_%$%target104413104464%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105210_ 0)))
                                        (_%$%tl104415104467%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105210_ 1))))
                                    (if (gx#stx-null? _%$%tl104415104467%_)
                                        (letrec ((_%$%loop104416104470%_
                                                  (lambda (_%$%hd104414104474%_
                                                           _%$%arg104420104477%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd104414104474%_)
                                                        (let ((_%$%e104417104480%_
                                                               (gx#syntax-e
                                                                _%$%hd104414104474%_)))
                                                          (let ((_%$%lp-hd104418104484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e104417104480%_)))
                        (_%$%lp-tl104419104487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e104417104480%_))))
                    (_%$%loop104416104470%_
                     _%$%lp-tl104419104487%_
                     (cons _%$%lp-hd104418104484%_ _%$%arg104420104477%_))))
                (let ((_%$%arg104421104490%_ (reverse _%$%arg104420104477%_)))
                  ((lambda (_%$%g104409104494%_)
                     (cons (gx#datum->syntax
                            |[1]#_g105213_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax
                                              |[1]#_g105215_|
                                              'new-value
                                              '#f
                                              '#f)
                                             '())
                                       (cons (foldr (lambda (_%$%g104509104512%_
                                                             _%$%g104510104515%_)
                                                      (cons _%$%g104509104512%_
                                                            _%$%g104510104515%_))
                                                    '()
                                                    _%$%g104409104494%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g105217_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                |[1]#_g105215_|
                                                                'new-value
                                                                '#f
                                                                '#f)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':list) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__build-manifest-set!)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g105215_|
                              'new-value
                              '#f
                              '#f)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg104421104490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop104416104470%_
                                           _%$%target104413104464%_
                                           '()))
                                        (_%$%g104406104447%_
                                         _%$%g104408104451%_)))))
                              (_%$%g104406104447%_ _%$%g104408104451%_))))
                      (_%$%g104406104447%_ _%$%g104408104451%_)))))
          (_%$%g104405104518%_ _%$stx104402%_))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx104523%_)
        (let* ((_%$%g104528104549%_
                (lambda (_%$%g104529104545%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g104529104545%_)))
               (_%$%g104527104567%_
                (lambda (_%$%g104529104553%_)
                  ((lambda (_%$%g104543104556%_)
                     (if (gx#identifier? _%$%g104543104556%_)
                         (gx#datum->syntax '#f 'display-build-manifest)
                         (_%$%g104528104549%_ _%$%g104529104553%_)))
                   _%$%g104529104553%_)))
               (_%$%g104526104638%_
                (lambda (_%$%g104529104571%_)
                  (if (gx#stx-pair? _%$%g104529104571%_)
                      (let ((_%$%e104531104574%_
                             (gx#syntax-e _%$%g104529104571%_)))
                        (let ((_%$%hd104532104578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e104531104574%_)))
                              (_%$%tl104533104581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e104531104574%_))))
                          (if (gx#stx-pair/null? _%$%tl104533104581%_)
                              (let ((_g105218_
                                     (gx#syntax-split-splice
                                      _%$%tl104533104581%_
                                      '0)))
                                (begin
                                  (let ((_g105219_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g105218_)
                                               (##values-length _g105218_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g105219_ 2)))
                                        (error "Context expects 2 values"
                                               _g105219_)))
                                  (let ((_%$%target104534104584%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105218_ 0)))
                                        (_%$%tl104536104587%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105218_ 1))))
                                    (if (gx#stx-null? _%$%tl104536104587%_)
                                        (letrec ((_%$%loop104537104590%_
                                                  (lambda (_%$%hd104535104594%_
                                                           _%$%arg104541104597%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd104535104594%_)
                                                        (let ((_%$%e104538104600%_
                                                               (gx#syntax-e
                                                                _%$%hd104535104594%_)))
                                                          (let ((_%$%lp-hd104539104604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e104538104600%_)))
                        (_%$%lp-tl104540104607%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e104538104600%_))))
                    (_%$%loop104537104590%_
                     _%$%lp-tl104540104607%_
                     (cons _%$%lp-hd104539104604%_ _%$%arg104541104597%_))))
                (let ((_%$%arg104542104610%_ (reverse _%$%arg104541104597%_)))
                  ((lambda (_%$%g104530104614%_)
                     (cons (gx#datum->syntax
                            |[1]#_g105221_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'manifest)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '__build-manifest)
                                                         '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'port)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'current-output-port)
                             '())
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (foldr (lambda (_%$%g104629104632%_
                                                             _%$%g104630104635%_)
                                                      (cons _%$%g104629104632%_
                                                            _%$%g104630104635%_))
                                                    '()
                                                    _%$%g104530104614%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g105223_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'manifest)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':list) '())))
                 (cons (cons (gx#datum->syntax '#f 'port)
                             (cons (gx#datum->syntax '#f ':)
                                   (cons (gx#datum->syntax '#f ':port) '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__display-build-manifest)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'manifest)
                             (cons (gx#datum->syntax '#f 'port) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg104542104610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop104537104590%_
                                           _%$%target104534104584%_
                                           '()))
                                        (_%$%g104527104567%_
                                         _%$%g104529104571%_)))))
                              (_%$%g104527104567%_ _%$%g104529104571%_))))
                      (_%$%g104527104567%_ _%$%g104529104571%_)))))
          (_%$%g104526104638%_ _%$stx104523%_))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx104643%_)
        (let* ((_%$%g104648104669%_
                (lambda (_%$%g104649104665%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g104649104665%_)))
               (_%$%g104647104687%_
                (lambda (_%$%g104649104673%_)
                  ((lambda (_%$%g104663104676%_)
                     (if (gx#identifier? _%$%g104663104676%_)
                         (gx#datum->syntax '#f 'build-manifest-string)
                         (_%$%g104648104669%_ _%$%g104649104673%_)))
                   _%$%g104649104673%_)))
               (_%$%g104646104758%_
                (lambda (_%$%g104649104691%_)
                  (if (gx#stx-pair? _%$%g104649104691%_)
                      (let ((_%$%e104651104694%_
                             (gx#syntax-e _%$%g104649104691%_)))
                        (let ((_%$%hd104652104698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e104651104694%_)))
                              (_%$%tl104653104701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e104651104694%_))))
                          (if (gx#stx-pair/null? _%$%tl104653104701%_)
                              (let ((_g105224_
                                     (gx#syntax-split-splice
                                      _%$%tl104653104701%_
                                      '0)))
                                (begin
                                  (let ((_g105225_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g105224_)
                                               (##values-length _g105224_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g105225_ 2)))
                                        (error "Context expects 2 values"
                                               _g105225_)))
                                  (let ((_%$%target104654104704%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105224_ 0)))
                                        (_%$%tl104656104707%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105224_ 1))))
                                    (if (gx#stx-null? _%$%tl104656104707%_)
                                        (letrec ((_%$%loop104657104710%_
                                                  (lambda (_%$%hd104655104714%_
                                                           _%$%arg104661104717%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd104655104714%_)
                                                        (let ((_%$%e104658104720%_
                                                               (gx#syntax-e
                                                                _%$%hd104655104714%_)))
                                                          (let ((_%$%lp-hd104659104724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e104658104720%_)))
                        (_%$%lp-tl104660104727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e104658104720%_))))
                    (_%$%loop104657104710%_
                     _%$%lp-tl104660104727%_
                     (cons _%$%lp-hd104659104724%_ _%$%arg104661104717%_))))
                (let ((_%$%arg104662104730%_ (reverse _%$%arg104661104717%_)))
                  ((lambda (_%$%g104650104734%_)
                     (cons (gx#datum->syntax
                            |[1]#_g105227_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'manifest)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '__build-manifest)
                                                         '()))
                                             '())
                                       (cons (foldr (lambda (_%$%g104749104752%_
                                                             _%$%g104750104755%_)
                                                      (cons _%$%g104749104752%_
                                                            _%$%g104750104755%_))
                                                    '()
                                                    _%$%g104650104734%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g105229_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'manifest)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':list) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__build-manifest-string)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'manifest)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg104662104730%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop104657104710%_
                                           _%$%target104654104704%_
                                           '()))
                                        (_%$%g104647104687%_
                                         _%$%g104649104691%_)))))
                              (_%$%g104647104687%_ _%$%g104649104691%_))))
                      (_%$%g104647104687%_ _%$%g104649104691%_)))))
          (_%$%g104646104758%_ _%$stx104643%_))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx104763%_)
        (let* ((_%$%g104768104789%_
                (lambda (_%$%g104769104785%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g104769104785%_)))
               (_%$%g104767104807%_
                (lambda (_%$%g104769104793%_)
                  ((lambda (_%$%g104783104796%_)
                     (if (gx#identifier? _%$%g104783104796%_)
                         (gx#datum->syntax '#f 'gerbil-greeting-set!)
                         (_%$%g104768104789%_ _%$%g104769104793%_)))
                   _%$%g104769104793%_)))
               (_%$%g104766104878%_
                (lambda (_%$%g104769104811%_)
                  (if (gx#stx-pair? _%$%g104769104811%_)
                      (let ((_%$%e104771104814%_
                             (gx#syntax-e _%$%g104769104811%_)))
                        (let ((_%$%hd104772104818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e104771104814%_)))
                              (_%$%tl104773104821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e104771104814%_))))
                          (if (gx#stx-pair/null? _%$%tl104773104821%_)
                              (let ((_g105230_
                                     (gx#syntax-split-splice
                                      _%$%tl104773104821%_
                                      '0)))
                                (begin
                                  (let ((_g105231_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g105230_)
                                               (##values-length _g105230_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g105231_ 2)))
                                        (error "Context expects 2 values"
                                               _g105231_)))
                                  (let ((_%$%target104774104824%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105230_ 0)))
                                        (_%$%tl104776104827%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g105230_ 1))))
                                    (if (gx#stx-null? _%$%tl104776104827%_)
                                        (letrec ((_%$%loop104777104830%_
                                                  (lambda (_%$%hd104775104834%_
                                                           _%$%arg104781104837%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd104775104834%_)
                                                        (let ((_%$%e104778104840%_
                                                               (gx#syntax-e
                                                                _%$%hd104775104834%_)))
                                                          (let ((_%$%lp-hd104779104844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e104778104840%_)))
                        (_%$%lp-tl104780104847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e104778104840%_))))
                    (_%$%loop104777104830%_
                     _%$%lp-tl104780104847%_
                     (cons _%$%lp-hd104779104844%_ _%$%arg104781104837%_))))
                (let ((_%$%arg104782104850%_ (reverse _%$%arg104781104837%_)))
                  ((lambda (_%$%g104770104854%_)
                     (cons (gx#datum->syntax
                            |[1]#_g105233_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax
                                              |[1]#_g105235_|
                                              'new-value
                                              '#f
                                              '#f)
                                             '())
                                       (cons (foldr (lambda (_%$%g104869104872%_
                                                             _%$%g104870104875%_)
                                                      (cons _%$%g104869104872%_
                                                            _%$%g104870104875%_))
                                                    '()
                                                    _%$%g104770104854%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g105237_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                |[1]#_g105235_|
                                                                'new-value
                                                                '#f
                                                                '#f)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':string) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__gerbil-greeting-set!)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g105235_|
                              'new-value
                              '#f
                              '#f)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg104782104850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop104777104830%_
                                           _%$%target104774104824%_
                                           '()))
                                        (_%$%g104767104807%_
                                         _%$%g104769104811%_)))))
                              (_%$%g104767104807%_ _%$%g104769104811%_))))
                      (_%$%g104767104807%_ _%$%g104769104811%_)))))
          (_%$%g104766104878%_ _%$stx104763%_))))))
