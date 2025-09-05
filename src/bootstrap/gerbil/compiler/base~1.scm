(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g142654_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142656_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142658_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142660_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142661_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142663_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142664_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142666_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142667_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142669_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142670_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx141740%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx141740%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx141743%_)
        (let* ((_%g141746141770%_
                (lambda (_%g141747141766%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141747141766%_))))
               (_%g141745142073%_
                (lambda (_%g141747141774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141747141774%_))
                      (let ((_%e141750141777%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141747141774%_))))
                        (let ((_%hd141751141781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141750141777%_)))
                              (_%tl141752141784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141750141777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141752141784%_))
                              (let ((_%e141753141787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141752141784%_))))
                                (let ((_%hd141754141791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141753141787%_)))
                                      (_%tl141755141794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141753141787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl141755141794%_))
                                      (let ((_g142645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl141755141794%_
                                                '0))))
                                        (begin
                                          (let ((_g142646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142645_)
                                                       (##values-length
                                                        _g142645_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142646_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142646_)))
                                          (let ((_%target141756141797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142645_ 0)))
                                                (_%tl141758141800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142645_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141758141800%_))
                                                (letrec ((_%loop141759141803%_
                                                          (lambda (_%hd141757141807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause141763141810%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141757141807%_))
                        (let ((_%e141760141813%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd141757141807%_))))
                          (let ((_%lp-hd141761141817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141760141813%_)))
                                (_%lp-tl141762141820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141760141813%_))))
                            (_%loop141759141803%_
                             _%lp-tl141762141820%_
                             (cons _%lp-hd141761141817%_
                                   _%clause141763141810%_))))
                        (let ((_%clause141764141823%_
                               (reverse _%clause141763141810%_)))
                          ((lambda (_%L141827%_ _%L141829%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L141829%_))
                                 (let* ((_%g141848141865%_
                                         (lambda (_%g141849141861%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g141849141861%_))))
                                        (_%g141847141926%_
                                         (lambda (_%g141849141869%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g141849141869%_))
                                               (let ((_g142647_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g141849141869%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g142648_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g142647_)
                        (##values-length _g142647_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g142648_ 2)))
                 (error "Context expects 2 values" _g142648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target141851141872%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142647_
                                                             0)))
                                                         (_%tl141853141875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142647_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141853141875%_))
                                                         (letrec ((_%loop141854141878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd141852141882%_ _%clause141858141885%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd141852141882%_))
                                 (let ((_%e141855141888%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd141852141882%_))))
                                   (let ((_%lp-hd141856141892%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141855141888%_)))
                                         (_%lp-tl141857141895%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141855141888%_))))
                                     (_%loop141854141878%_
                                      _%lp-tl141857141895%_
                                      (cons _%lp-hd141856141892%_
                                            _%clause141858141885%_))))
                                 (let ((_%clause141859141898%_
                                        (reverse _%clause141858141885%_)))
                                   ((lambda (_%L141902%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L141829%_
                                  (let ((__tmp142649
                                         (lambda (_%g141917141920%_
                                                  _%g141918141923%_)
                                           (cons _%g141917141920%_
                                                 _%g141918141923%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp142649 '() _%L141902%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause141859141898%_))))))
                   (_%loop141854141878%_ _%target141851141872%_ '()))
                 (_%g141848141865%_ _%g141849141869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g141848141865%_
                                                _%g141849141869%_)))))
                                   (_%g141847141926%_
                                    (let ((__tmp142652
                                           (lambda (_%clause141930%_)
                                             (let* ((_%__stx142565142566%_
                                                     _%clause141930%_)
                                                    (_%g141934141961%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx142565142566%_)))))
                                               (let ((_%__kont142568142569%_
                                                      (lambda (_%L142046%_
                                                               _%L142048%_)
                                                        (cons _%L142048%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L142046%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont142570142571%_
                                                      (lambda (_%L141998%_
                                                               _%L142000%_
                                                               _%L142001%_)
                                                        (cons _%L142001%_
                                                              (cons _%L142000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L141998%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx142565142566%_))
                                                     (let ((_%e141938142026%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx142565142566%_))))
                                                       (let ((_%tl141940142033%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141938142026%_)))
                     (_%hd141939142030%_
                      (let () (declare (not safe)) (##car _%e141938142026%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141940142033%_))
                     (let ((_%e141941142036%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl141940142033%_))))
                       (let ((_%tl141943142043%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141941142036%_)))
                             (_%hd141942142040%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141941142036%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141943142043%_))
                             (_%__kont142568142569%_
                              _%hd141942142040%_
                              _%hd141939142030%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl141943142043%_))
                                 (let ((_%e141953141988%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl141943142043%_))))
                                   (let ((_%tl141955141995%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141953141988%_)))
                                         (_%hd141954141992%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141953141988%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl141955141995%_))
                                         (_%__kont142570142571%_
                                          _%hd141954141992%_
                                          _%hd141942142040%_
                                          _%hd141939142030%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g141934141961%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g141934141961%_))))))
                     (let () (declare (not safe)) (_%g141934141961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141934141961%_)))))))
                                          (__tmp142650
                                           (let ((__tmp142651
                                                  (lambda (_%g142064142067%_
                                                           _%g142065142070%_)
                                                    (cons _%g142064142067%_
                                                          _%g142065142070%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp142651
                                              '()
                                              _%L141827%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp142652 __tmp142650))))
                                 (_%g141746141770%_ _%g141747141774%_)))
                           _%clause141764141823%_
                           _%hd141754141791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop141759141803%_
                                                   _%target141756141797%_
                                                   '()))
                                                (_%g141746141770%_
                                                 _%g141747141774%_)))))
                                      (_%g141746141770%_ _%g141747141774%_))))
                              (_%g141746141770%_ _%g141747141774%_))))
                      (_%g141746141770%_ _%g141747141774%_)))))
          (_%g141745142073%_ _%stx141743%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj142615
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
          (##unchecked-structure-set!
           __obj142615
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142615
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142615
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 ':init! '11 '#f '#f))
        (let ((__tmp142653 |gxc[1]#_g142654_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142653 '12 '#f '#f))
        (let ((__tmp142655 |gxc[1]#_g142656_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142655 '13 '#f '#f))
        (let ((__tmp142657 |gxc[1]#_g142658_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142657 '14 '#f '#f))
        (let ((__tmp142659
               (cons (cons 'gensyms |gxc[1]#_g142660_|)
                     (cons (cons 'bindings |gxc[1]#_g142661_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142659 '15 '#f '#f))
        (let ((__tmp142662
               (cons (cons 'gensyms |gxc[1]#_g142663_|)
                     (cons (cons 'bindings |gxc[1]#_g142664_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142662 '16 '#f '#f))
        (let ((__tmp142665
               (cons (cons 'gensyms |gxc[1]#_g142666_|)
                     (cons (cons 'bindings |gxc[1]#_g142667_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142665 '17 '#f '#f))
        (let ((__tmp142668
               (cons (cons 'gensyms |gxc[1]#_g142669_|)
                     (cons (cons 'bindings |gxc[1]#_g142670_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 __tmp142668 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142615 '() '20 '#f '#f))
        __obj142615))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx142079%_)
        (let* ((_%g142083142097%_
                (lambda (_%g142084142093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142084142093%_))))
               (_%g142082142138%_
                (lambda (_%g142084142101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142084142101%_))
                      (let ((_%e142086142104%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g142084142101%_))))
                        (let ((_%hd142087142108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142086142104%_)))
                              (_%tl142088142111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142086142104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142088142111%_))
                              (let ((_%e142089142114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl142088142111%_))))
                                (let ((_%hd142090142118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142089142114%_)))
                                      (_%tl142091142121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142089142114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142091142121%_))
                                      ((lambda (_%L142124%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L142124%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd142090142118%_)
                                      (_%g142083142097%_ _%g142084142101%_))))
                              (_%g142083142097%_ _%g142084142101%_))))
                      (_%g142083142097%_ _%g142084142101%_)))))
          (_%g142082142138%_ _%$stx142079%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx142142%_)
        (let* ((_%g142146142160%_
                (lambda (_%g142147142156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142147142156%_))))
               (_%g142145142201%_
                (lambda (_%g142147142164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142147142164%_))
                      (let ((_%e142149142167%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g142147142164%_))))
                        (let ((_%hd142150142171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142149142167%_)))
                              (_%tl142151142174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142149142167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142151142174%_))
                              (let ((_%e142152142177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl142151142174%_))))
                                (let ((_%hd142153142181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142152142177%_)))
                                      (_%tl142154142184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142152142177%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142154142184%_))
                                      ((lambda (_%L142187%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L142187%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd142153142181%_)
                                      (_%g142146142160%_ _%g142147142164%_))))
                              (_%g142146142160%_ _%g142147142164%_))))
                      (_%g142146142160%_ _%g142147142164%_)))))
          (_%g142145142201%_ _%$stx142142%_))))))
