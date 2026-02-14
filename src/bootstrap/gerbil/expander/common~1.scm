(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g354828_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354830_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354832_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354834_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354835_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354837_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354838_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354840_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354841_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354843_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354844_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g354846_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj354824
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '#f '12 '#f '#f))
        (let ((__tmp354827 |gx[1]#_g354828_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354827 '3 '#f '#f))
        (let ((__tmp354829 |gx[1]#_g354830_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354829 '13 '#f '#f))
        (let ((__tmp354831 |gx[1]#_g354832_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354831 '14 '#f '#f))
        (let ((__tmp354833
               (cons (cons 'e |gx[1]#_g354834_|)
                     (cons (cons 'source |gx[1]#_g354835_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354833 '15 '#f '#f))
        (let ((__tmp354836
               (cons (cons 'e |gx[1]#_g354837_|)
                     (cons (cons 'source |gx[1]#_g354838_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354836 '16 '#f '#f))
        (let ((__tmp354839
               (cons (cons 'e |gx[1]#_g354840_|)
                     (cons (cons 'source |gx[1]#_g354841_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354839 '17 '#f '#f))
        (let ((__tmp354842
               (cons (cons 'e |gx[1]#_g354843_|)
                     (cons (cons 'source |gx[1]#_g354844_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 __tmp354842 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj354824 '() '20 '#f '#f))
        __obj354824))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx353421%_)
        (let* ((_%g353425353439%_
                (lambda (_%g353426353435%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g353426353435%_)))
               (_%g353424353481%_
                (lambda (_%g353426353443%_)
                  (if (gx#stx-pair? _%g353426353443%_)
                      (let ((_%e353428353446%_
                             (gx#syntax-e _%g353426353443%_)))
                        (let ((_%hd353429353450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e353428353446%_)))
                              (_%tl353430353453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e353428353446%_))))
                          (if (gx#stx-pair? _%tl353430353453%_)
                              (let ((_%e353431353456%_
                                     (gx#syntax-e _%tl353430353453%_)))
                                (let ((_%hd353432353460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e353431353456%_)))
                                      (_%tl353433353463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e353431353456%_))))
                                  (if (gx#stx-null? _%tl353433353463%_)
                                      ((lambda (_%g353427353466%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g353427353466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g353427353466%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd353432353460%_)
                                      (_%g353425353439%_ _%g353426353443%_))))
                              (_%g353425353439%_ _%g353426353443%_))))
                      (_%g353425353439%_ _%g353426353443%_)))))
          (_%g353424353481%_ _%$stx353421%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx353485%_)
        (letrec ((_%generate353488%_
                  (lambda (_%tgt353637%_ _%kws353639%_ _%clauses353640%_)
                    (letrec ((_%generate-clause353642%_
                              (lambda (_%hd354575%_ _%E354577%_)
                                (let* ((_%__stx354727354728%_ _%hd354575%_)
                                       (_%g354581354608%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx354727354728%_))))
                                  (let ((_%__kont354730354731%_
                                         (lambda (_%g354583354704%_
                                                  _%g354584354706%_)
                                           (_%generate1353644%_
                                            _%hd354575%_
                                            _%g354584354706%_
                                            '#t
                                            _%g354583354704%_
                                            _%E354577%_)))
                                        (_%__kont354732354733%_
                                         (lambda (_%g354591354656%_
                                                  _%g354592354658%_
                                                  _%g354593354659%_)
                                           (_%generate1353644%_
                                            _%hd354575%_
                                            _%g354593354659%_
                                            _%g354592354658%_
                                            _%g354591354656%_
                                            _%E354577%_)))
                                        (_%__kont354734354735%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx353485%_
                                            _%hd354575%_))))
                                    (if (gx#stx-pair? _%__stx354727354728%_)
                                        (let ((_%e354585354684%_
                                               (gx#syntax-e
                                                _%__stx354727354728%_)))
                                          (let ((_%tl354587354691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e354585354684%_)))
                                                (_%hd354586354688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e354585354684%_))))
                                            (if (gx#stx-pair?
                                                 _%tl354587354691%_)
                                                (let ((_%e354588354694%_
                                                       (gx#syntax-e
                                                        _%tl354587354691%_)))
                                                  (let ((_%tl354590354701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e354588354694%_)))
                                                        (_%hd354589354698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e354588354694%_))))
                                                    (if (gx#stx-null?
                                                         _%tl354590354701%_)
                                                        (_%__kont354730354731%_
                                                         _%hd354589354698%_
                                                         _%hd354586354688%_)
                                                        (if (gx#stx-pair?
                                                             _%tl354590354701%_)
                                                            (let ((_%e354600354646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl354590354701%_)))
                      (let ((_%tl354602354653%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e354600354646%_)))
                            (_%hd354601354650%_
                             (let ()
                               (declare (not safe))
                               (##car _%e354600354646%_))))
                        (if (gx#stx-null? _%tl354602354653%_)
                            (_%__kont354732354733%_
                             _%hd354601354650%_
                             _%hd354589354698%_
                             _%hd354586354688%_)
                            (_%__kont354734354735%_))))
                    (_%__kont354734354735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont354734354735%_))))
                                        (_%__kont354734354735%_))))))
                             (_%generate1353644%_
                              (lambda (_%where354028%_
                                       _%hd354030%_
                                       _%fender354031%_
                                       _%body354032%_
                                       _%E354033%_)
                                (letrec ((_%recur354035%_
                                          (lambda (_%hd354038%_
                                                   _%tgt354040%_
                                                   _%K354041%_)
                                            (let* ((_%__stx354773354774%_
                                                    _%hd354038%_)
                                                   (_%g354044354056%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx354773354774%_))))
                                              (let ((_%__kont354776354777%_
                                                     (lambda (_%g354046354365%_
                                                              _%g354047354367%_)
                                                       (let* ((_%g354378354386%_
                                                               (lambda (_%g354379354382%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g354379354382%_)))
                      (_%g354377354567%_
                       (lambda (_%g354379354390%_)
                         ((lambda (_%g354380354393%_)
                            (let* ((_%g354405354413%_
                                    (lambda (_%g354406354409%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g354406354409%_)))
                                   (_%g354404354563%_
                                    (lambda (_%g354406354417%_)
                                      ((lambda (_%g354407354420%_)
                                         (let* ((_%g354433354441%_
                                                 (lambda (_%g354434354437%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g354434354437%_)))
                                                (_%g354432354559%_
                                                 (lambda (_%g354434354445%_)
                                                   ((lambda (_%g354435354448%_)
                                                      (let* ((_%g354461354469%_
                                                              (lambda (_%g354462354465%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g354462354465%_)))
                     (_%g354460354555%_
                      (lambda (_%g354462354473%_)
                        ((lambda (_%g354463354476%_)
                           (let* ((_%g354489354497%_
                                   (lambda (_%g354490354493%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g354490354493%_)))
                                  (_%g354488354551%_
                                   (lambda (_%g354490354501%_)
                                     ((lambda (_%g354491354504%_)
                                        (let* ((_%g354517354525%_
                                                (lambda (_%g354518354521%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g354518354521%_)))
                                               (_%g354516354547%_
                                                (lambda (_%g354518354529%_)
                                                  ((lambda (_%g354519354532%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g354380354393%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g354407354420%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g354380354393%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g354435354448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g354407354420%_ '()))
                                       '()))
                           (cons (cons _%g354463354476%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g354407354420%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g354491354504%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g354519354532%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g354518354529%_))))
                                          (_%g354516354547%_ _%E354033%_)))
                                      _%g354490354501%_))))
                             (_%g354488354551%_
                              (_%recur354035%_
                               _%g354047354367%_
                               _%g354435354448%_
                               (_%recur354035%_
                                _%g354046354365%_
                                _%g354463354476%_
                                _%K354041%_)))))
                         _%g354462354473%_))))
                (_%g354460354555%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g354434354445%_))))
                                           (_%g354432354559%_
                                            (gx#genident 'hd))))
                                       _%g354406354417%_))))
                              (_%g354404354563%_ (gx#genident 'e))))
                          _%g354379354390%_))))
                 (_%g354377354567%_ _%tgt354040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont354778354779%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd354038%_)
                                                           (if (gx#underscore?
                                                                _%hd354038%_)
                                                               _%K354041%_
                                                               (if (let ((__tmp354845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g354070354072%_)
                                    (gx#bound-identifier=?
                                     _%g354070354072%_
                                     _%hd354038%_))))
                             (declare (not safe))
                             (__find __tmp354845 _%kws353639%_))
                           (let* ((_%g354078354093%_
                                   (lambda (_%g354079354089%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g354079354089%_)))
                                  (_%g354077354146%_
                                   (lambda (_%g354079354097%_)
                                     (if (gx#stx-pair? _%g354079354097%_)
                                         (let ((_%e354082354100%_
                                                (gx#syntax-e
                                                 _%g354079354097%_)))
                                           (let ((_%hd354083354104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e354082354100%_)))
                                                 (_%tl354084354107%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e354082354100%_))))
                                             (if (gx#stx-pair?
                                                  _%tl354084354107%_)
                                                 (let ((_%e354085354110%_
                                                        (gx#syntax-e
                                                         _%tl354084354107%_)))
                                                   (let ((_%hd354086354114%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e354085354110%_)))
                                                         (_%tl354087354117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e354085354110%_))))
                                                     (if (gx#stx-null?
                                                          _%tl354087354117%_)
                                                         ((lambda (_%g354080354120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g354081354122%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g354081354122%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g354081354122%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g354080354120%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K354041%_ (cons _%E354033%_ '())))))
                  _%hd354086354114%_
                  _%hd354083354104%_)
                 (_%g354078354093%_ _%g354079354097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g354078354093%_
                                                  _%g354079354097%_))))
                                         (_%g354078354093%_
                                          _%g354079354097%_)))))
                             (_%g354077354146%_
                              (list _%tgt354040%_ _%hd354038%_)))
                           (let* ((_%g354152354167%_
                                   (lambda (_%g354153354163%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g354153354163%_)))
                                  (_%g354151354212%_
                                   (lambda (_%g354153354171%_)
                                     (if (gx#stx-pair? _%g354153354171%_)
                                         (let ((_%e354156354174%_
                                                (gx#syntax-e
                                                 _%g354153354171%_)))
                                           (let ((_%hd354157354178%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e354156354174%_)))
                                                 (_%tl354158354181%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e354156354174%_))))
                                             (if (gx#stx-pair?
                                                  _%tl354158354181%_)
                                                 (let ((_%e354159354184%_
                                                        (gx#syntax-e
                                                         _%tl354158354181%_)))
                                                   (let ((_%hd354160354188%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e354159354184%_)))
                                                         (_%tl354161354191%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e354159354184%_))))
                                                     (if (gx#stx-null?
                                                          _%tl354161354191%_)
                                                         ((lambda (_%g354154354194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g354155354196%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g354154354194%_
                                            (cons _%g354155354196%_ '()))
                                      '())
                                (cons _%K354041%_ '()))))
                  _%hd354160354188%_
                  _%hd354157354178%_)
                 (_%g354152354167%_ _%g354153354171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g354152354167%_
                                                  _%g354153354171%_))))
                                         (_%g354152354167%_
                                          _%g354153354171%_)))))
                             (_%g354151354212%_
                              (list _%tgt354040%_ _%hd354038%_)))))
                   (if (gx#stx-null? _%hd354038%_)
                       (let* ((_%g354218354226%_
                               (lambda (_%g354219354222%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g354219354222%_)))
                              (_%g354217354245%_
                               (lambda (_%g354219354230%_)
                                 ((lambda (_%g354220354233%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g354220354233%_
                                                            '()))
                                                (cons _%K354041%_
                                                      (cons _%E354033%_
                                                            '())))))
                                  _%g354219354230%_))))
                         (_%g354217354245%_ _%tgt354040%_))
                       (if (gx#stx-datum? _%hd354038%_)
                           (let* ((_%g354251354270%_
                                   (lambda (_%g354252354266%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g354252354266%_)))
                                  (_%g354250354329%_
                                   (lambda (_%g354252354274%_)
                                     (if (gx#stx-pair? _%g354252354274%_)
                                         (let ((_%e354256354277%_
                                                (gx#syntax-e
                                                 _%g354252354274%_)))
                                           (let ((_%hd354257354281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e354256354277%_)))
                                                 (_%tl354258354284%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e354256354277%_))))
                                             (if (gx#stx-pair?
                                                  _%tl354258354284%_)
                                                 (let ((_%e354259354287%_
                                                        (gx#syntax-e
                                                         _%tl354258354284%_)))
                                                   (let ((_%hd354260354291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e354259354287%_)))
                                                         (_%tl354261354294%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e354259354287%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl354261354294%_)
                                                         (let ((_%e354262354297%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl354261354294%_)))
                   (let ((_%hd354263354301%_
                          (let ()
                            (declare (not safe))
                            (##car _%e354262354297%_)))
                         (_%tl354264354304%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e354262354297%_))))
                     (if (gx#stx-null? _%tl354264354304%_)
                         ((lambda (_%g354253354307%_
                                   _%g354254354309%_
                                   _%g354255354310%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g354253354307%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g354255354310%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g354254354309%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K354041%_
                                              (cons _%E354033%_ '())))))
                          _%hd354263354301%_
                          _%hd354260354291%_
                          _%hd354257354281%_)
                         (_%g354251354270%_ _%g354252354274%_))))
                 (_%g354251354270%_ _%g354252354274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g354251354270%_
                                                  _%g354252354274%_))))
                                         (_%g354251354270%_
                                          _%g354252354274%_)))))
                             (_%g354250354329%_
                              (list _%tgt354040%_
                                    _%hd354038%_
                                    (let ((_%e354333%_
                                           (gx#stx-e _%hd354038%_)))
                                      (if (or (keyword? _%e354333%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e354333%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e354333%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx353485%_
                            _%where354028%_
                            _%hd354038%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx354773354774%_)
                                                    (let ((_%e354048354355%_
                                                           (gx#syntax-e
                                                            _%__stx354773354774%_)))
                                                      (let ((_%tl354050354362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e354048354355%_)))
                    (_%hd354049354359%_
                     (let () (declare (not safe)) (##car _%e354048354355%_))))
                (_%__kont354776354777%_
                 _%tl354050354362%_
                 _%hd354049354359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont354778354779%_)))))))
                                  (_%recur354035%_
                                   _%hd354030%_
                                   _%tgt353637%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender354031%_
                                               (cons _%body354032%_
                                                     (cons _%E354033%_
                                                           '()))))))))
                             (_%generate-clauses353645%_
                              (lambda (_%clauses353766%_)
                                (let _%lp353769%_ ((_%rest353772%_
                                                    _%clauses353766%_)
                                                   (_%E353774%_
                                                    (gx#genident 'E))
                                                   (_%r353775%_ '()))
                                  (let* ((_%__stx354809354810%_ _%rest353772%_)
                                         (_%g353778353790%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx354809354810%_))))
                                    (let ((_%__kont354812354813%_
                                           (lambda (_%g353780353855%_
                                                    _%g353781353857%_)
                                             (let* ((_%__stx354789354790%_
                                                     _%g353781353857%_)
                                                    (_%g353869353880%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx354789354790%_))))
                                               (let ((_%__kont354792354793%_
                                                      (lambda (_%g353871354009%_)
                                                        (if (gx#stx-null?
                                                             _%g353780353855%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g353871354009%_)
                             (not (gx#stx-null? _%g353871354009%_)))
                        (cons (cons _%E353774%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g353871354009%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g353781353857%_))
                                          '()))
                              _%r353775%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx353485%_
                         _%g353781353857%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx353485%_
                     _%g353781353857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont354794354795%_
                                                      (lambda ()
                                                        (let* ((_%g353891353899%_
                                                                (lambda (_%g353892353895%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g353892353895%_)))
                       (_%g353890353988%_
                        (lambda (_%g353892353903%_)
                          ((lambda (_%g353893353906%_)
                             (let* ((_%g353922353930%_
                                     (lambda (_%g353923353926%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g353923353926%_)))
                                    (_%g353921353984%_
                                     (lambda (_%g353923353934%_)
                                       ((lambda (_%g353924353937%_)
                                          (let* ((_%g353950353958%_
                                                  (lambda (_%g353951353954%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g353951353954%_)))
                                                 (_%g353949353980%_
                                                  (lambda (_%g353951353962%_)
                                                    ((lambda (_%g353952353965%_)
                                                       (_%lp353769%_
                                                        _%g353780353855%_
                                                        _%g353893353906%_
                                                        (cons (cons _%E353774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g353952353965%_ '()))
                      _%r353775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g353951353962%_))))
                                            (_%g353949353980%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g353924353937%_
                                                                '())))
                                              (gx#stx-source
                                               _%g353781353857%_)))))
                                        _%g353923353934%_))))
                               (_%g353921353984%_
                                (_%generate-clause353642%_
                                 _%g353781353857%_
                                 (cons _%g353893353906%_ '())))))
                           _%g353892353903%_))))
                  (_%g353890353988%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx354789354790%_)
                                                     (let ((_%e353872353999%_
                                                            (gx#syntax-e
                                                             _%__stx354789354790%_)))
                                                       (let ((_%tl353874354006%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e353872353999%_)))
                     (_%hd353873354003%_
                      (let () (declare (not safe)) (##car _%e353872353999%_))))
                 (if (gx#identifier? _%hd353873354003%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g354846_|
                          _%hd353873354003%_)
                         (_%__kont354792354793%_ _%tl353874354006%_)
                         (_%__kont354794354795%_))
                     (_%__kont354794354795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont354794354795%_))))))
                                          (_%__kont354814354815%_
                                           (lambda ()
                                             (let* ((_%g353801353809%_
                                                     (lambda (_%g353802353805%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g353802353805%_)))
                                                    (_%g353800353834%_
                                                     (lambda (_%g353802353813%_)
                                                       ((lambda (_%g353803353816%_)
                                                          (cons (cons _%E353774%_
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
                                 (cons _%g353803353816%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx353485%_))
                                    '()))
                        _%r353775%_))
                _%g353802353813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g353800353834%_
                                                _%tgt353637%_)))))
                                      (if (gx#stx-pair? _%__stx354809354810%_)
                                          (let ((_%e353782353845%_
                                                 (gx#syntax-e
                                                  _%__stx354809354810%_)))
                                            (let ((_%tl353784353852%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e353782353845%_)))
                                                  (_%hd353783353849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e353782353845%_))))
                                              (_%__kont354812354813%_
                                               _%tl353784353852%_
                                               _%hd353783353849%_)))
                                          (_%__kont354814354815%_))))))))
                      (let* ((_%bind353647%_
                              (_%generate-clauses353645%_ _%clauses353640%_))
                             (_%g353650353667%_
                              (lambda (_%g353651353663%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g353651353663%_)))
                             (_%g353649353762%_
                              (lambda (_%g353651353671%_)
                                (if (gx#stx-pair/null? _%g353651353671%_)
                                    (let ((_g354847_
                                           (gx#syntax-split-splice
                                            _%g353651353671%_
                                            '0)))
                                      (begin
                                        (let ((_g354848_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g354847_)
                                                     (##values-length
                                                      _g354847_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g354848_ 2)))
                                              (error "Context expects 2 values"
                                                     _g354848_)))
                                        (let ((_%target353653353674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g354847_ 0)))
                                              (_%tl353655353677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g354847_ 1))))
                                          (if (gx#stx-null? _%tl353655353677%_)
                                              (letrec ((_%loop353656353680%_
                                                        (lambda (_%hd353654353684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try353660353687%_)
                  (if (gx#stx-pair? _%hd353654353684%_)
                      (let ((_%e353657353689%_
                             (gx#syntax-e _%hd353654353684%_)))
                        (let ((_%lp-hd353658353693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e353657353689%_)))
                              (_%lp-tl353659353696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e353657353689%_))))
                          (_%loop353656353680%_
                           _%lp-tl353659353696%_
                           (cons _%lp-hd353658353693%_
                                 _%bind-try353660353687%_))))
                      (let ((_%bind-try353661353699%_
                             (reverse _%bind-try353660353687%_)))
                        ((lambda (_%g353652353702%_)
                           (let* ((_%g353720353728%_
                                   (lambda (_%g353721353724%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g353721353724%_)))
                                  (_%g353719353758%_
                                   (lambda (_%g353721353732%_)
                                     ((lambda (_%g353722353735%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp354849
                                                           (lambda (_%g353749353752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g353750353755%_)
                     (cons _%g353749353752%_ _%g353750353755%_))))
              (declare (not safe))
              (foldr__0 __tmp354849 '() _%g353652353702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g353722353735%_
                                                                '())
                                                          '()))))
                                      _%g353721353732%_))))
                             (_%g353719353758%_ (car (last _%bind353647%_)))))
                         _%bind-try353661353699%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop353656353680%_
                                                 _%target353653353674%_
                                                 '()))
                                              (_%g353650353667%_
                                               _%g353651353671%_)))))
                                    (_%g353650353667%_ _%g353651353671%_)))))
                        (_%g353649353762%_ _%bind353647%_))))))
          (let* ((_%g353491353510%_
                  (lambda (_%g353492353506%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g353492353506%_)))
                 (_%g353490353633%_
                  (lambda (_%g353492353514%_)
                    (if (gx#stx-pair? _%g353492353514%_)
                        (let ((_%e353496353517%_
                               (gx#syntax-e _%g353492353514%_)))
                          (let ((_%hd353497353521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e353496353517%_)))
                                (_%tl353498353524%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e353496353517%_))))
                            (if (gx#stx-pair? _%tl353498353524%_)
                                (let ((_%e353499353527%_
                                       (gx#syntax-e _%tl353498353524%_)))
                                  (let ((_%hd353500353531%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e353499353527%_)))
                                        (_%tl353501353534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e353499353527%_))))
                                    (if (gx#stx-pair? _%tl353501353534%_)
                                        (let ((_%e353502353537%_
                                               (gx#syntax-e
                                                _%tl353501353534%_)))
                                          (let ((_%hd353503353541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e353502353537%_)))
                                                (_%tl353504353544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e353502353537%_))))
                                            ((lambda (_%g353493353547%_
                                                      _%g353494353549%_
                                                      _%g353495353550%_)
                                               (if (and (gx#identifier-list?
                                                         _%g353494353549%_)
                                                        (gx#stx-list?
                                                         _%g353493353547%_))
                                                   (let* ((_%g353568353576%_
                                                           (lambda (_%g353569353572%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g353569353572%_)))
                                                          (_%g353567353629%_
                                                           (lambda (_%g353569353580%_)
                                                             ((lambda (_%g353570353583%_)
                                                                (let* ((_%g353595353603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g353596353599%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g353596353599%_)))
                               (_%g353594353625%_
                                (lambda (_%g353596353607%_)
                                  ((lambda (_%g353597353610%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g353570353583%_
                                                             (cons _%g353495353550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g353597353610%_
                                                       '()))))
                                   _%g353596353607%_))))
                          (_%g353594353625%_
                           (_%generate353488%_
                            _%g353570353583%_
                            (gx#syntax->list _%g353494353549%_)
                            _%g353493353547%_))))
                      _%g353569353580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g353567353629%_
                                                      (gx#genident 'e)))
                                                   (_%g353491353510%_
                                                    _%g353492353514%_)))
                                             _%tl353504353544%_
                                             _%hd353503353541%_
                                             _%hd353500353531%_)))
                                        (_%g353491353510%_
                                         _%g353492353514%_))))
                                (_%g353491353510%_ _%g353492353514%_))))
                        (_%g353491353510%_ _%g353492353514%_)))))
            (_%g353490353633%_ _%stx353485%_)))))))
