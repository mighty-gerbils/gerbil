(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g151996_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g151997_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g151998_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g151999_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152000_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152001_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152002_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152003_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152004_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152005_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152006_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g152007_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gerbil#AST::t
       'name:
       'syntax
       'slots:
       '(e source)
       'ordered-slots:
       '(e source)
       'super:
       '()
       'struct?:
       '#t
       'final?:
       '#f
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gx[1]#_g151996_|
       'constructor:
       |gx[1]#_g151997_|
       'predicate:
       |gx[1]#_g151998_|
       'accessors:
       (cons (cons 'e |gx[1]#_g151999_|)
             (cons (cons 'source |gx[1]#_g152000_|) '()))
       'mutators:
       (cons (cons 'e |gx[1]#_g152001_|)
             (cons (cons 'source |gx[1]#_g152002_|) '()))
       'unchecked-accessors:
       (cons (cons 'e |gx[1]#_g152003_|)
             (cons (cons 'source |gx[1]#_g152004_|) '()))
       'unchecked-mutators:
       (cons (cons 'e |gx[1]#_g152005_|)
             (cons (cons 'source |gx[1]#_g152006_|) '()))
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx150691%_)
        (let* ((_%$%g150695150709%_
                (lambda (_%$%g150696150705%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g150696150705%_)))
               (_%$%g150694150751%_
                (lambda (_%$%g150696150713%_)
                  (if (gx#stx-pair? _%$%g150696150713%_)
                      (let ((_%$%e150698150716%_
                             (gx#syntax-e _%$%g150696150713%_)))
                        (let ((_%$%hd150699150720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e150698150716%_)))
                              (_%$%tl150700150723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e150698150716%_))))
                          (if (gx#stx-pair? _%$%tl150700150723%_)
                              (let ((_%$%e150701150726%_
                                     (gx#syntax-e _%$%tl150700150723%_)))
                                (let ((_%$%hd150702150730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e150701150726%_)))
                                      (_%$%tl150703150733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e150701150726%_))))
                                  (if (gx#stx-null? _%$%tl150703150733%_)
                                      ((lambda (_%$%g150697150736%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%$%g150697150736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%$%g150697150736%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd150702150730%_)
                                      (_%$%g150695150709%_
                                       _%$%g150696150713%_))))
                              (_%$%g150695150709%_ _%$%g150696150713%_))))
                      (_%$%g150695150709%_ _%$%g150696150713%_)))))
          (_%$%g150694150751%_ _%$stx150691%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx150755%_)
        (letrec ((_%generate150758%_
                  (lambda (_%tgt150907%_ _%kws150909%_ _%clauses150910%_)
                    (letrec ((_%generate-clause150912%_
                              (lambda (_%hd151845%_ _%E151847%_)
                                (let* ((_%$%g151851151878%_
                                        (lambda (_%$%g151852151874%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g151852151874%_)))
                                       (_%$%g151850151889%_
                                        (lambda (_%$%g151852151882%_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid syntax-case pattern"
                                              _%stx150755%_
                                              _%hd151845%_)))))
                                       (_%$%g151849151947%_
                                        (lambda (_%$%g151852151893%_)
                                          (if (gx#stx-pair?
                                               _%$%g151852151893%_)
                                              (let ((_%$%e151864151896%_
                                                     (gx#syntax-e
                                                      _%$%g151852151893%_)))
                                                (let ((_%$%hd151865151900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e151864151896%_)))
                                                      (_%$%tl151866151903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e151864151896%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl151866151903%_)
                                                      (let ((_%$%e151867151906%_
                                                             (gx#syntax-e
                                                              _%$%tl151866151903%_)))
                                                        (let ((_%$%hd151868151910%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e151867151906%_)))
                      (_%$%tl151869151913%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e151867151906%_))))
                  (if (gx#stx-pair? _%$%tl151869151913%_)
                      (let ((_%$%e151870151916%_
                             (gx#syntax-e _%$%tl151869151913%_)))
                        (let ((_%$%hd151871151920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e151870151916%_)))
                              (_%$%tl151872151923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e151870151916%_))))
                          (if (gx#stx-null? _%$%tl151872151923%_)
                              ((lambda (_%$%g151861151926%_
                                        _%$%g151862151928%_
                                        _%$%g151863151929%_)
                                 (_%generate1150914%_
                                  _%hd151845%_
                                  _%$%g151863151929%_
                                  _%$%g151862151928%_
                                  _%$%g151861151926%_
                                  _%E151847%_))
                               _%$%hd151871151920%_
                               _%$%hd151868151910%_
                               _%$%hd151865151900%_)
                              (_%$%g151850151889%_ _%$%g151852151893%_))))
                      (_%$%g151850151889%_ _%$%g151852151893%_))))
              (_%$%g151850151889%_ _%$%g151852151893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g151850151889%_
                                               _%$%g151852151893%_))))
                                       (_%$%g151848151989%_
                                        (lambda (_%$%g151852151951%_)
                                          (if (gx#stx-pair?
                                               _%$%g151852151951%_)
                                              (let ((_%$%e151855151954%_
                                                     (gx#syntax-e
                                                      _%$%g151852151951%_)))
                                                (let ((_%$%hd151856151958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e151855151954%_)))
                                                      (_%$%tl151857151961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e151855151954%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl151857151961%_)
                                                      (let ((_%$%e151858151964%_
                                                             (gx#syntax-e
                                                              _%$%tl151857151961%_)))
                                                        (let ((_%$%hd151859151968%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e151858151964%_)))
                      (_%$%tl151860151971%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e151858151964%_))))
                  (if (gx#stx-null? _%$%tl151860151971%_)
                      ((lambda (_%$%g151853151974%_ _%$%g151854151976%_)
                         (_%generate1150914%_
                          _%hd151845%_
                          _%$%g151854151976%_
                          '#t
                          _%$%g151853151974%_
                          _%E151847%_))
                       _%$%hd151859151968%_
                       _%$%hd151856151958%_)
                      (_%$%g151849151947%_ _%$%g151852151951%_))))
              (_%$%g151849151947%_ _%$%g151852151951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g151849151947%_
                                               _%$%g151852151951%_)))))
                                  (_%$%g151848151989%_ _%hd151845%_))))
                             (_%generate1150914%_
                              (lambda (_%where151298%_
                                       _%hd151300%_
                                       _%fender151301%_
                                       _%body151302%_
                                       _%E151303%_)
                                (letrec ((_%recur151305%_
                                          (lambda (_%hd151308%_
                                                   _%tgt151310%_
                                                   _%K151311%_)
                                            (let* ((_%$%g151314151326%_
                                                    (lambda (_%$%g151315151322%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g151315151322%_)))
                                                   (_%$%g151313151618%_
                                                    (lambda (_%$%g151315151330%_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _%hd151308%_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd151308%_)
                         _%K151311%_
                         (if (find (lambda (_%$%g151340151342%_)
                                     (gx#bound-identifier=?
                                      _%$%g151340151342%_
                                      _%hd151308%_))
                                   _%kws150909%_)
                             (let* ((_%$%g151348151363%_
                                     (lambda (_%$%g151349151359%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g151349151359%_)))
                                    (_%$%g151347151416%_
                                     (lambda (_%$%g151349151367%_)
                                       (if (gx#stx-pair? _%$%g151349151367%_)
                                           (let ((_%$%e151352151370%_
                                                  (gx#syntax-e
                                                   _%$%g151349151367%_)))
                                             (let ((_%$%hd151353151374%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e151352151370%_)))
                                                   (_%$%tl151354151377%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e151352151370%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl151354151377%_)
                                                   (let ((_%$%e151355151380%_
                                                          (gx#syntax-e
                                                           _%$%tl151354151377%_)))
                                                     (let ((_%$%hd151356151384%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e151355151380%_)))
                                                           (_%$%tl151357151387%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e151355151380%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl151357151387%_)
                                                           ((lambda (_%$%g151350151390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g151351151392%_)
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'identifier?)
                                                    (cons _%$%g151351151392%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-identifier=?)
                                                          (cons _%$%g151351151392%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _%$%g151350151390%_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _%K151311%_ (cons _%E151303%_ '())))))
                    _%$%hd151356151384%_
                    _%$%hd151353151374%_)
                   (_%$%g151348151363%_ _%$%g151349151367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g151348151363%_
                                                    _%$%g151349151367%_))))
                                           (_%$%g151348151363%_
                                            _%$%g151349151367%_)))))
                               (_%$%g151347151416%_
                                (list _%tgt151310%_ _%hd151308%_)))
                             (let* ((_%$%g151422151437%_
                                     (lambda (_%$%g151423151433%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g151423151433%_)))
                                    (_%$%g151421151482%_
                                     (lambda (_%$%g151423151441%_)
                                       (if (gx#stx-pair? _%$%g151423151441%_)
                                           (let ((_%$%e151426151444%_
                                                  (gx#syntax-e
                                                   _%$%g151423151441%_)))
                                             (let ((_%$%hd151427151448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e151426151444%_)))
                                                   (_%$%tl151428151451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e151426151444%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl151428151451%_)
                                                   (let ((_%$%e151429151454%_
                                                          (gx#syntax-e
                                                           _%$%tl151428151451%_)))
                                                     (let ((_%$%hd151430151458%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e151429151454%_)))
                                                           (_%$%tl151431151461%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e151429151454%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl151431151461%_)
                                                           ((lambda (_%$%g151424151464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g151425151466%_)
                      (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _%$%g151424151464%_
                                              (cons _%$%g151425151466%_ '()))
                                        '())
                                  (cons _%K151311%_ '()))))
                    _%$%hd151430151458%_
                    _%$%hd151427151448%_)
                   (_%$%g151422151437%_ _%$%g151423151441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g151422151437%_
                                                    _%$%g151423151441%_))))
                                           (_%$%g151422151437%_
                                            _%$%g151423151441%_)))))
                               (_%$%g151421151482%_
                                (list _%tgt151310%_ _%hd151308%_)))))
                     (if (gx#stx-null? _%hd151308%_)
                         (let* ((_%$%g151488151496%_
                                 (lambda (_%$%g151489151492%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g151489151492%_)))
                                (_%$%g151487151515%_
                                 (lambda (_%$%g151489151500%_)
                                   ((lambda (_%$%g151490151503%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-null?)
                                                        (cons _%$%g151490151503%_
                                                              '()))
                                                  (cons _%K151311%_
                                                        (cons _%E151303%_
                                                              '())))))
                                    _%$%g151489151500%_))))
                           (_%$%g151487151515%_ _%tgt151310%_))
                         (if (gx#stx-datum? _%hd151308%_)
                             (let* ((_%$%g151521151540%_
                                     (lambda (_%$%g151522151536%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g151522151536%_)))
                                    (_%$%g151520151599%_
                                     (lambda (_%$%g151522151544%_)
                                       (if (gx#stx-pair? _%$%g151522151544%_)
                                           (let ((_%$%e151526151547%_
                                                  (gx#syntax-e
                                                   _%$%g151522151544%_)))
                                             (let ((_%$%hd151527151551%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e151526151547%_)))
                                                   (_%$%tl151528151554%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e151526151547%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl151528151554%_)
                                                   (let ((_%$%e151529151557%_
                                                          (gx#syntax-e
                                                           _%$%tl151528151554%_)))
                                                     (let ((_%$%hd151530151561%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e151529151557%_)))
                                                           (_%$%tl151531151564%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e151529151557%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl151531151564%_)
                                                           (let ((_%$%e151532151567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl151531151564%_)))
                     (let ((_%$%hd151533151571%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e151532151567%_)))
                           (_%$%tl151534151574%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e151532151567%_))))
                       (if (gx#stx-null? _%$%tl151534151574%_)
                           ((lambda (_%$%g151523151577%_
                                     _%$%g151524151579%_
                                     _%$%g151525151580%_)
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _%$%g151523151577%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-e)
                                                            (cons _%$%g151525151580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%$%g151524151579%_ '()))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%K151311%_
                                                (cons _%E151303%_ '())))))
                            _%$%hd151533151571%_
                            _%$%hd151530151561%_
                            _%$%hd151527151551%_)
                           (_%$%g151521151540%_ _%$%g151522151544%_))))
                   (_%$%g151521151540%_ _%$%g151522151544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g151521151540%_
                                                    _%$%g151522151544%_))))
                                           (_%$%g151521151540%_
                                            _%$%g151522151544%_)))))
                               (_%$%g151520151599%_
                                (list _%tgt151310%_
                                      _%hd151308%_
                                      (let ((_%e151603%_
                                             (gx#stx-e _%hd151308%_)))
                                        (if (or (keyword? _%e151603%_)
                                                (immediate? _%e151603%_))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _%e151603%_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid syntax-case head"
                              _%stx150755%_
                              _%where151298%_
                              _%hd151308%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g151312151841%_
                                                    (lambda (_%$%g151315151622%_)
                                                      (if (gx#stx-pair?
                                                           _%$%g151315151622%_)
                                                          (let ((_%$%e151318151625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%g151315151622%_)))
                    (let ((_%$%hd151319151629%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e151318151625%_)))
                          (_%$%tl151320151632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e151318151625%_))))
                      ((lambda (_%$%g151316151635%_ _%$%g151317151637%_)
                         (let* ((_%$%g151648151656%_
                                 (lambda (_%$%g151649151652%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g151649151652%_)))
                                (_%$%g151647151837%_
                                 (lambda (_%$%g151649151660%_)
                                   ((lambda (_%$%g151650151663%_)
                                      (let* ((_%$%g151675151683%_
                                              (lambda (_%$%g151676151679%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g151676151679%_)))
                                             (_%$%g151674151833%_
                                              (lambda (_%$%g151676151687%_)
                                                ((lambda (_%$%g151677151690%_)
                                                   (let* ((_%$%g151703151711%_
                                                           (lambda (_%$%g151704151707%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g151704151707%_)))
                                                          (_%$%g151702151829%_
                                                           (lambda (_%$%g151704151715%_)
                                                             ((lambda (_%$%g151705151718%_)
                                                                (let* ((_%$%g151731151739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%$%g151732151735%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g151732151735%_)))
                               (_%$%g151730151825%_
                                (lambda (_%$%g151732151743%_)
                                  ((lambda (_%$%g151733151746%_)
                                     (let* ((_%$%g151759151767%_
                                             (lambda (_%$%g151760151763%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g151760151763%_)))
                                            (_%$%g151758151821%_
                                             (lambda (_%$%g151760151771%_)
                                               ((lambda (_%$%g151761151774%_)
                                                  (let* ((_%$%g151787151795%_
                                                          (lambda (_%$%g151788151791%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g151788151791%_)))
                                                         (_%$%g151786151817%_
                                                          (lambda (_%$%g151788151799%_)
                                                            ((lambda (_%$%g151789151802%_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'if)
                             (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                         (cons _%$%g151650151663%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%$%g151677151690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                     (cons _%$%g151650151663%_ '()))
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _%$%g151705151718%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##car)
                                                       (cons _%$%g151677151690%_
                                                             '()))
                                                 '()))
                                     (cons (cons _%$%g151733151746%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##cdr)
                                                             (cons _%$%g151677151690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons _%$%g151761151774%_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _%$%g151789151802%_ '())))))
                     _%$%g151788151799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g151786151817%_
                                                     _%E151303%_)))
                                                _%$%g151760151771%_))))
                                       (_%$%g151758151821%_
                                        (_%recur151305%_
                                         _%$%g151317151637%_
                                         _%$%g151705151718%_
                                         (_%recur151305%_
                                          _%$%g151316151635%_
                                          _%$%g151733151746%_
                                          _%K151311%_)))))
                                   _%$%g151732151743%_))))
                          (_%$%g151730151825%_ (gx#genident 'tl))))
                      _%$%g151704151715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g151702151829%_
                                                      (gx#genident 'hd))))
                                                 _%$%g151676151687%_))))
                                        (_%$%g151674151833%_
                                         (gx#genident 'e))))
                                    _%$%g151649151660%_))))
                           (_%$%g151647151837%_ _%tgt151310%_)))
                       _%$%tl151320151632%_
                       _%$%hd151319151629%_)))
                  (_%$%g151313151618%_ _%$%g151315151622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g151312151841%_
                                               _%hd151308%_)))))
                                  (_%recur151305%_
                                   _%hd151300%_
                                   _%tgt150907%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender151301%_
                                               (cons _%body151302%_
                                                     (cons _%E151303%_
                                                           '()))))))))
                             (_%generate-clauses150915%_
                              (lambda (_%clauses151036%_)
                                (let _%lp151039%_ ((_%rest151042%_
                                                    _%clauses151036%_)
                                                   (_%E151044%_
                                                    (gx#genident 'E))
                                                   (_%r151045%_ '()))
                                  (let* ((_%$%g151048151060%_
                                          (lambda (_%$%g151049151056%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g151049151056%_)))
                                         (_%$%g151047151108%_
                                          (lambda (_%$%g151049151064%_)
                                            ((lambda ()
                                               (let* ((_%$%g151071151079%_
                                                       (lambda (_%$%g151072151075%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g151072151075%_)))
                                                      (_%$%g151070151104%_
                                                       (lambda (_%$%g151072151083%_)
                                                         ((lambda (_%$%g151073151086%_)
                                                            (cons (cons _%E151044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '()
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'raise-syntax-error)
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"Bad syntax; invalid syntax-case clause"
                                   (cons _%$%g151073151086%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx150755%_))
                                      '()))
                          _%r151045%_))
                  _%$%g151072151083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g151070151104%_
                                                  _%tgt150907%_))))))
                                         (_%$%g151046151294%_
                                          (lambda (_%$%g151049151112%_)
                                            (if (gx#stx-pair?
                                                 _%$%g151049151112%_)
                                                (let ((_%$%e151052151115%_
                                                       (gx#syntax-e
                                                        _%$%g151049151112%_)))
                                                  (let ((_%$%hd151053151119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e151052151115%_)))
                                                        (_%$%tl151054151122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e151052151115%_))))
                                                    ((lambda (_%$%g151050151125%_
                                                              _%$%g151051151127%_)
                                                       (let* ((_%$%g151139151150%_
                                                               (lambda (_%$%g151140151146%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g151140151146%_)))
                      (_%$%g151138151262%_
                       (lambda (_%$%g151140151154%_)
                         ((lambda ()
                            (let* ((_%$%g151161151169%_
                                    (lambda (_%$%g151162151165%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g151162151165%_)))
                                   (_%$%g151160151258%_
                                    (lambda (_%$%g151162151173%_)
                                      ((lambda (_%$%g151163151176%_)
                                         (let* ((_%$%g151192151200%_
                                                 (lambda (_%$%g151193151196%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g151193151196%_)))
                                                (_%$%g151191151254%_
                                                 (lambda (_%$%g151193151204%_)
                                                   ((lambda (_%$%g151194151207%_)
                                                      (let* ((_%$%g151220151228%_
                                                              (lambda (_%$%g151221151224%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g151221151224%_)))
                     (_%$%g151219151250%_
                      (lambda (_%$%g151221151232%_)
                        ((lambda (_%$%g151222151235%_)
                           (_%lp151039%_
                            _%$%g151050151125%_
                            _%$%g151163151176%_
                            (cons (cons _%E151044%_
                                        (cons _%$%g151222151235%_ '()))
                                  _%r151045%_)))
                         _%$%g151221151232%_))))
                (_%$%g151219151250%_
                 (gx#stx-wrap-source
                  (cons (gx#datum->syntax '#f 'lambda)
                        (cons '() (cons _%$%g151194151207%_ '())))
                  (gx#stx-source _%$%g151051151127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g151193151204%_))))
                                           (_%$%g151191151254%_
                                            (_%generate-clause150912%_
                                             _%$%g151051151127%_
                                             (cons _%$%g151163151176%_ '())))))
                                       _%$%g151162151173%_))))
                              (_%$%g151160151258%_ (gx#genident 'E)))))))
                      (_%$%g151137151290%_
                       (lambda (_%$%g151140151266%_)
                         (if (gx#stx-pair? _%$%g151140151266%_)
                             (let ((_%$%e151142151269%_
                                    (gx#syntax-e _%$%g151140151266%_)))
                               (let ((_%$%hd151143151273%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e151142151269%_)))
                                     (_%$%tl151144151276%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e151142151269%_))))
                                 (if (gx#identifier? _%$%hd151143151273%_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g152007_|
                                          _%$%hd151143151273%_)
                                         ((lambda (_%$%g151141151279%_)
                                            (if (gx#stx-null?
                                                 _%$%g151050151125%_)
                                                (if (and (gx#stx-list?
                                                          _%$%g151141151279%_)
                                                         (not (gx#stx-null?
                                                               _%$%g151141151279%_)))
                                                    (cons (cons _%E151044%_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _%$%g151141151279%_)
                                                 '())))
                               (gx#stx-source _%$%g151051151127%_))
                              '()))
                  _%r151045%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid else body"
                                                     _%stx150755%_
                                                     _%$%g151051151127%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _%stx150755%_
                                                 _%$%g151051151127%_)))
                                          _%$%tl151144151276%_)
                                         (_%$%g151138151262%_
                                          _%$%g151140151266%_))
                                     (_%$%g151138151262%_
                                      _%$%g151140151266%_))))
                             (_%$%g151138151262%_ _%$%g151140151266%_)))))
                 (_%$%g151137151290%_ _%$%g151051151127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%tl151054151122%_
                                                     _%$%hd151053151119%_)))
                                                (_%$%g151047151108%_
                                                 _%$%g151049151112%_)))))
                                    (_%$%g151046151294%_ _%rest151042%_))))))
                      (let* ((_%bind150917%_
                              (_%generate-clauses150915%_ _%clauses150910%_))
                             (_%$%g150920150937%_
                              (lambda (_%$%g150921150933%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g150921150933%_)))
                             (_%$%g150919151032%_
                              (lambda (_%$%g150921150941%_)
                                (if (gx#stx-pair/null? _%$%g150921150941%_)
                                    (let ((_g152008_
                                           (gx#syntax-split-splice
                                            _%$%g150921150941%_
                                            '0)))
                                      (begin
                                        (let ((_g152009_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g152008_)
                                                     (##values-length
                                                      _g152008_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g152009_ 2)))
                                              (error "Context expects 2 values"
                                                     _g152009_)))
                                        (let ((_%$%target150923150944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g152008_ 0)))
                                              (_%$%tl150925150947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g152008_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl150925150947%_)
                                              (letrec ((_%$%loop150926150950%_
                                                        (lambda (_%$%hd150924150954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try150930150957%_)
                  (if (gx#stx-pair? _%$%hd150924150954%_)
                      (let ((_%$%e150927150959%_
                             (gx#syntax-e _%$%hd150924150954%_)))
                        (let ((_%$%lp-hd150928150963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e150927150959%_)))
                              (_%$%lp-tl150929150966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e150927150959%_))))
                          (_%$%loop150926150950%_
                           _%$%lp-tl150929150966%_
                           (cons _%$%lp-hd150928150963%_
                                 _%$%bind-try150930150957%_))))
                      (let ((_%$%bind-try150931150969%_
                             (reverse _%$%bind-try150930150957%_)))
                        ((lambda (_%$%g150922150972%_)
                           (let* ((_%$%g150990150998%_
                                   (lambda (_%$%g150991150994%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g150991150994%_)))
                                  (_%$%g150989151028%_
                                   (lambda (_%$%g150991151002%_)
                                     ((lambda (_%$%g150992151005%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (foldr (lambda (_%$%g151019151022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g151020151025%_)
                     (cons _%$%g151019151022%_ _%$%g151020151025%_))
                   '()
                   _%$%g150922150972%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%g150992151005%_
                                                                '())
                                                          '()))))
                                      _%$%g150991151002%_))))
                             (_%$%g150989151028%_
                              (car (last _%bind150917%_)))))
                         _%$%bind-try150931150969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop150926150950%_
                                                 _%$%target150923150944%_
                                                 '()))
                                              (_%$%g150920150937%_
                                               _%$%g150921150941%_)))))
                                    (_%$%g150920150937%_
                                     _%$%g150921150941%_)))))
                        (_%$%g150919151032%_ _%bind150917%_))))))
          (let* ((_%$%g150761150780%_
                  (lambda (_%$%g150762150776%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g150762150776%_)))
                 (_%$%g150760150903%_
                  (lambda (_%$%g150762150784%_)
                    (if (gx#stx-pair? _%$%g150762150784%_)
                        (let ((_%$%e150766150787%_
                               (gx#syntax-e _%$%g150762150784%_)))
                          (let ((_%$%hd150767150791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e150766150787%_)))
                                (_%$%tl150768150794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e150766150787%_))))
                            (if (gx#stx-pair? _%$%tl150768150794%_)
                                (let ((_%$%e150769150797%_
                                       (gx#syntax-e _%$%tl150768150794%_)))
                                  (let ((_%$%hd150770150801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e150769150797%_)))
                                        (_%$%tl150771150804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e150769150797%_))))
                                    (if (gx#stx-pair? _%$%tl150771150804%_)
                                        (let ((_%$%e150772150807%_
                                               (gx#syntax-e
                                                _%$%tl150771150804%_)))
                                          (let ((_%$%hd150773150811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e150772150807%_)))
                                                (_%$%tl150774150814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e150772150807%_))))
                                            ((lambda (_%$%g150763150817%_
                                                      _%$%g150764150819%_
                                                      _%$%g150765150820%_)
                                               (if (and (gx#identifier-list?
                                                         _%$%g150764150819%_)
                                                        (gx#stx-list?
                                                         _%$%g150763150817%_))
                                                   (let* ((_%$%g150838150846%_
                                                           (lambda (_%$%g150839150842%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g150839150842%_)))
                                                          (_%$%g150837150899%_
                                                           (lambda (_%$%g150839150850%_)
                                                             ((lambda (_%$%g150840150853%_)
                                                                (let* ((_%$%g150865150873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%$%g150866150869%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g150866150869%_)))
                               (_%$%g150864150895%_
                                (lambda (_%$%g150866150877%_)
                                  ((lambda (_%$%g150867150880%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%$%g150840150853%_
                                                             (cons _%$%g150765150820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%$%g150867150880%_
                                                       '()))))
                                   _%$%g150866150877%_))))
                          (_%$%g150864150895%_
                           (_%generate150758%_
                            _%$%g150840150853%_
                            (gx#syntax->list _%$%g150764150819%_)
                            _%$%g150763150817%_))))
                      _%$%g150839150850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g150837150899%_
                                                      (gx#genident 'e)))
                                                   (_%$%g150761150780%_
                                                    _%$%g150762150784%_)))
                                             _%$%tl150774150814%_
                                             _%$%hd150773150811%_
                                             _%$%hd150770150801%_)))
                                        (_%$%g150761150780%_
                                         _%$%g150762150784%_))))
                                (_%$%g150761150780%_ _%$%g150762150784%_))))
                        (_%$%g150761150780%_ _%$%g150762150784%_)))))
            (_%$%g150760150903%_ _%stx150755%_)))))))
