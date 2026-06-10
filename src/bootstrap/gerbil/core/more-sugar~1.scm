(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g39028_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g39031_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g39034_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g39037_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g39040_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args34727%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args34727%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args34723%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args34723%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx34720%_)
        (if (gx#identifier? _%stx34720%_)
            (|gerbil/core/more-sugar[1]#setf-macro?|
             (gx#syntax-local-value _%stx34720%_ false))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx34717%_)
        (if (gx#identifier? _%stx34717%_)
            (|gerbil/core/more-sugar[1]#setq-macro?|
             (gx#syntax-local-value _%stx34717%_ false))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx34344%_)
        (let* ((_%$%g3435034413%_
                (lambda (_%$%g3435134409%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3435134409%_)))
               (_%$%g3434934468%_
                (lambda (_%$%g3435134417%_)
                  (if (gx#stx-pair? _%$%g3435134417%_)
                      (let ((_%$%e3439934420%_
                             (gx#syntax-e _%$%g3435134417%_)))
                        (let ((_%$%hd3440034424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3439934420%_)))
                              (_%$%tl3440134427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3439934420%_))))
                          (if (gx#stx-pair? _%$%tl3440134427%_)
                              (let ((_%$%e3440234430%_
                                     (gx#syntax-e _%$%tl3440134427%_)))
                                (let ((_%$%hd3440334434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3440234430%_)))
                                      (_%$%tl3440434437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3440234430%_))))
                                  (if (gx#stx-pair? _%$%tl3440434437%_)
                                      (let ((_%$%e3440534440%_
                                             (gx#syntax-e _%$%tl3440434437%_)))
                                        (let ((_%$%hd3440634444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3440534440%_)))
                                              (_%$%tl3440734447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3440534440%_))))
                                          (if (gx#stx-null? _%$%tl3440734447%_)
                                              ((lambda (_%$%g3439734450%_
                                                        _%$%g3439834452%_)
                                                 (if (gx#identifier?
                                                      _%$%g3439834452%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%#set!)
                                                           (cons _%$%g3439834452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g3439734450%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3435034413%_
                                                      _%$%g3435134417%_)))
                                               _%$%hd3440634444%_
                                               _%$%hd3440334434%_)
                                              (_%$%g3435034413%_
                                               _%$%g3435134417%_))))
                                      (_%$%g3435034413%_ _%$%g3435134417%_))))
                              (_%$%g3435034413%_ _%$%g3435134417%_))))
                      (_%$%g3435034413%_ _%$%g3435134417%_))))
               (_%$%g3434834508%_
                (lambda (_%$%g3435134472%_)
                  (if (gx#stx-pair? _%$%g3435134472%_)
                      (let ((_%$%e3439134475%_
                             (gx#syntax-e _%$%g3435134472%_)))
                        (let ((_%$%hd3439234479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3439134475%_)))
                              (_%$%tl3439334482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3439134475%_))))
                          (if (gx#stx-pair? _%$%tl3439334482%_)
                              (let ((_%$%e3439434485%_
                                     (gx#syntax-e _%$%tl3439334482%_)))
                                (let ((_%$%hd3439534489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3439434485%_)))
                                      (_%$%tl3439634492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3439434485%_))))
                                  ((lambda (_%$%g3439034495%_)
                                     (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                                          _%$%g3439034495%_)
                                         (gx#core-apply-expander
                                          (gx#syntax-local-e _%$%g3439034495%_)
                                          _%stx34344%_)
                                         (_%$%g3434934468%_
                                          _%$%g3435134472%_)))
                                   _%$%hd3439534489%_)))
                              (_%$%g3434934468%_ _%$%g3435134472%_))))
                      (_%$%g3434934468%_ _%$%g3435134472%_))))
               (_%$%g3434734647%_
                (lambda (_%$%g3435134512%_)
                  (if (gx#stx-pair? _%$%g3435134512%_)
                      (let ((_%$%e3436934515%_
                             (gx#syntax-e _%$%g3435134512%_)))
                        (let ((_%$%hd3437034519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3436934515%_)))
                              (_%$%tl3437134522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3436934515%_))))
                          (if (gx#stx-pair? _%$%tl3437134522%_)
                              (let ((_%$%e3437234525%_
                                     (gx#syntax-e _%$%tl3437134522%_)))
                                (let ((_%$%hd3437334529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3437234525%_)))
                                      (_%$%tl3437434532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3437234525%_))))
                                  (if (gx#stx-pair? _%$%hd3437334529%_)
                                      (let ((_%$%e3437534535%_
                                             (gx#syntax-e _%$%hd3437334529%_)))
                                        (let ((_%$%hd3437634539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3437534535%_)))
                                              (_%$%tl3437734542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3437534535%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl3437734542%_)
                                              (let ((_g38978_
                                                     (gx#syntax-split-splice
                                                      _%$%tl3437734542%_
                                                      '0)))
                                                (begin
                                                  (let ((_g38979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g38978_)
                                                               (##values-length
                                                                _g38978_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g38979_ 2)))
                (error "Context expects 2 values" _g38979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target3437834545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g38978_
                                                            0)))
                                                        (_%$%tl3438034548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g38978_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3438034548%_)
                                                        (letrec ((_%$%loop3438134551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd3437934555%_ _%$%arg3438534558%_)
                            (if (gx#stx-pair? _%$%hd3437934555%_)
                                (let ((_%$%e3438234560%_
                                       (gx#syntax-e _%$%hd3437934555%_)))
                                  (let ((_%$%lp-hd3438334564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3438234560%_)))
                                        (_%$%lp-tl3438434567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3438234560%_))))
                                    (_%$%loop3438134551%_
                                     _%$%lp-tl3438434567%_
                                     (cons _%$%lp-hd3438334564%_
                                           _%$%arg3438534558%_))))
                                (let ((_%$%arg3438634570%_
                                       (reverse _%$%arg3438534558%_)))
                                  (if (gx#stx-pair? _%$%tl3437434532%_)
                                      (let ((_%$%e3438734573%_
                                             (gx#syntax-e _%$%tl3437434532%_)))
                                        (let ((_%$%hd3438834577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3438734573%_)))
                                              (_%$%tl3438934580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3438734573%_))))
                                          (if (gx#stx-null? _%$%tl3438934580%_)
                                              ((lambda (_%$%g3436634583%_
                                                        _%$%g3436734585%_
                                                        _%$%g3436834586%_)
                                                 (if (gx#identifier?
                                                      _%$%g3436834586%_)
                                                     (let* ((_%$%g3460834616%_
                                                             (lambda (_%$%g3460934612%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g3460934612%_)))
                                                            (_%$%g3460734643%_
                                                             (lambda (_%$%g3460934620%_)
                                                               ((lambda (_%$%g3461034623%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g3461034623%_
                                (foldr (lambda (_%$%g3463434637%_
                                                _%$%g3463534640%_)
                                         (cons _%$%g3463434637%_
                                               _%$%g3463534640%_))
                                       (cons _%$%g3436634583%_ '())
                                       _%$%g3436734585%_)))
                        _%$%g3460934620%_))))
               (_%$%g3460734643%_
                (gx#stx-identifier
                 _%$%g3436834586%_
                 _%$%g3436834586%_
                 '"-set!")))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3434834508%_
                                                      _%$%g3435134512%_)))
                                               _%$%hd3438834577%_
                                               _%$%arg3438634570%_
                                               _%$%hd3437634539%_)
                                              (_%$%g3434834508%_
                                               _%$%g3435134512%_))))
                                      (_%$%g3434834508%_
                                       _%$%g3435134512%_)))))))
                  (_%$%loop3438134551%_ _%$%target3437834545%_ '()))
                (_%$%g3434834508%_ _%$%g3435134512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3434834508%_
                                               _%$%g3435134512%_))))
                                      (_%$%g3434834508%_ _%$%g3435134512%_))))
                              (_%$%g3434834508%_ _%$%g3435134512%_))))
                      (_%$%g3434834508%_ _%$%g3435134512%_))))
               (_%$%g3434634713%_
                (lambda (_%$%g3435134651%_)
                  (if (gx#stx-pair? _%$%g3435134651%_)
                      (let ((_%$%e3435434654%_
                             (gx#syntax-e _%$%g3435134651%_)))
                        (let ((_%$%hd3435534658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3435434654%_)))
                              (_%$%tl3435634661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3435434654%_))))
                          (if (gx#stx-pair? _%$%tl3435634661%_)
                              (let ((_%$%e3435734664%_
                                     (gx#syntax-e _%$%tl3435634661%_)))
                                (let ((_%$%hd3435834668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3435734664%_)))
                                      (_%$%tl3435934671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3435734664%_))))
                                  (if (gx#stx-pair? _%$%hd3435834668%_)
                                      (let ((_%$%e3436034674%_
                                             (gx#syntax-e _%$%hd3435834668%_)))
                                        (let ((_%$%hd3436134678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3436034674%_)))
                                              (_%$%tl3436234681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3436034674%_))))
                                          (if (gx#stx-pair? _%$%tl3435934671%_)
                                              (let ((_%$%e3436334684%_
                                                     (gx#syntax-e
                                                      _%$%tl3435934671%_)))
                                                (let ((_%$%hd3436434688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3436334684%_)))
                                                      (_%$%tl3436534691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3436334684%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3436534691%_)
                                                      ((lambda (_%$%g3435234694%_
                                                                _%$%g3435334696%_)
                                                         (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                              (gx#datum->syntax
                                                               '#f
                                                               'setfid))
                                                             (gx#core-apply-expander
                                                              (gx#syntax-local-e
                                                               _%$%g3435334696%_)
                                                              _%stx34344%_)
                                                             (_%$%g3434734647%_
                                                              _%$%g3435134651%_)))
                                                       _%$%hd3436434688%_
                                                       _%$%hd3436134678%_)
                                                      (_%$%g3434734647%_
                                                       _%$%g3435134651%_))))
                                              (_%$%g3434734647%_
                                               _%$%g3435134651%_))))
                                      (_%$%g3434734647%_ _%$%g3435134651%_))))
                              (_%$%g3434734647%_ _%$%g3435134651%_))))
                      (_%$%g3434734647%_ _%$%g3435134651%_)))))
          (_%$%g3434634713%_ _%stx34344%_))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx34732%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx34732%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx34735%_)
        (let* ((_%$%g3473834762%_
                (lambda (_%$%g3473934758%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3473934758%_)))
               (_%$%g3473734936%_
                (lambda (_%$%g3473934766%_)
                  (if (gx#stx-pair? _%$%g3473934766%_)
                      (let ((_%$%e3474234769%_
                             (gx#syntax-e _%$%g3473934766%_)))
                        (let ((_%$%hd3474334773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3474234769%_)))
                              (_%$%tl3474434776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3474234769%_))))
                          (if (gx#stx-pair/null? _%$%tl3474434776%_)
                              (if (fx>= (gx#stx-length _%$%tl3474434776%_) '1)
                                  (let ((_g38980_
                                         (gx#syntax-split-splice
                                          _%$%tl3474434776%_
                                          '1)))
                                    (begin
                                      (let ((_g38981_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g38980_)
                                                   (##values-length _g38980_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g38981_ 2)))
                                            (error "Context expects 2 values"
                                                   _g38981_)))
                                      (let ((_%$%target3474534779%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g38980_ 0)))
                                            (_%$%tl3474734782%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g38980_ 1))))
                                        (if (gx#stx-pair? _%$%tl3474734782%_)
                                            (let ((_%$%e3475434785%_
                                                   (gx#syntax-e
                                                    _%$%tl3474734782%_)))
                                              (let ((_%$%hd3475534789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3475434785%_)))
                                                    (_%$%tl3475634792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3475434785%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3475634792%_)
                                                    (letrec ((_%$%loop3474834795%_
                                                              (lambda (_%$%hd3474634799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt3475234802%_)
                        (if (gx#stx-pair? _%$%hd3474634799%_)
                            (let ((_%$%e3474934804%_
                                   (gx#syntax-e _%$%hd3474634799%_)))
                              (let ((_%$%lp-hd3475034808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3474934804%_)))
                                    (_%$%lp-tl3475134811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3474934804%_))))
                                (_%$%loop3474834795%_
                                 _%$%lp-tl3475134811%_
                                 (cons _%$%lp-hd3475034808%_
                                       _%$%tgt3475234802%_))))
                            (let ((_%$%tgt3475334814%_
                                   (reverse _%$%tgt3475234802%_)))
                              ((lambda (_%$%g3474034817%_ _%$%g3474134819%_)
                                 (let* ((_%$%g3483734854%_
                                         (lambda (_%$%g3483834850%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g3483834850%_)))
                                        (_%$%g3483634924%_
                                         (lambda (_%$%g3483834858%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g3483834858%_)
                                               (let ((_g38982_
                                                      (gx#syntax-split-splice
                                                       _%$%g3483834858%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g38983_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g38982_)
                        (##values-length _g38982_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g38983_ 2)))
                 (error "Context expects 2 values" _g38983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target3484034861%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g38982_
                                                             0)))
                                                         (_%$%tl3484234864%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g38982_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl3484234864%_)
                                                         (letrec ((_%$%loop3484334867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd3484134871%_ _%$%$e3484734874%_)
                             (if (gx#stx-pair? _%$%hd3484134871%_)
                                 (let ((_%$%e3484434876%_
                                        (gx#syntax-e _%$%hd3484134871%_)))
                                   (let ((_%$%lp-hd3484534880%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3484434876%_)))
                                         (_%$%lp-tl3484634883%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3484434876%_))))
                                     (_%$%loop3484334867%_
                                      _%$%lp-tl3484634883%_
                                      (cons _%$%lp-hd3484534880%_
                                            _%$%$e3484734874%_))))
                                 (let ((_%$%$e3484834886%_
                                        (reverse _%$%$e3484734874%_)))
                                   ((lambda (_%$%g3483934889%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%$%g3490434910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g3490534913%_)
                               (cons _%$%g3490434910%_ _%$%g3490534913%_))
                             '()
                             _%$%g3483934889%_)
                      (cons _%$%g3474034817%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%$%g3483934889%_
                                                     _%$%g3474134819%_)
                                                    (foldr (lambda (_%$%g3490634916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g3490734919%_
                            _%$%g3490834921%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%$%g3490734919%_
                                       (cons _%$%g3490634916%_ '())))
                           _%$%g3490834921%_))
                   '()
                   _%$%g3483934889%_
                   _%$%g3474134819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%$e3484834886%_))))))
                   (_%$%loop3484334867%_ _%$%target3484034861%_ '()))
                 (_%$%g3483734854%_ _%$%g3483834858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3483734854%_
                                                _%$%g3483834858%_)))))
                                   (_%$%g3483634924%_
                                    (gx#gentemps
                                     (foldr (lambda (_%$%g3492734930%_
                                                     _%$%g3492834933%_)
                                              (cons _%$%g3492734930%_
                                                    _%$%g3492834933%_))
                                            '()
                                            _%$%g3474134819%_)))))
                               _%$%hd3475534789%_
                               _%$%tgt3475334814%_))))))
              (_%$%loop3474834795%_ _%$%target3474534779%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3473834762%_
                                                     _%$%g3473934766%_))))
                                            (_%$%g3473834762%_
                                             _%$%g3473934766%_)))))
                                  (_%$%g3473834762%_ _%$%g3473934766%_))
                              (_%$%g3473834762%_ _%$%g3473934766%_))))
                      (_%$%g3473834762%_ _%$%g3473934766%_)))))
          (_%$%g3473734936%_ _%stx34735%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx34942%_)
        (let* ((_%$%g3494835036%_
                (lambda (_%$%g3494935032%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3494935032%_)))
               (_%$%g3494735201%_
                (lambda (_%$%g3494935040%_)
                  (if (gx#stx-pair? _%$%g3494935040%_)
                      (let ((_%$%e3499835043%_
                             (gx#syntax-e _%$%g3494935040%_)))
                        (let ((_%$%hd3499935047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3499835043%_)))
                              (_%$%tl3500035050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3499835043%_))))
                          (if (gx#stx-pair? _%$%tl3500035050%_)
                              (let ((_%$%e3500135053%_
                                     (gx#syntax-e _%$%tl3500035050%_)))
                                (let ((_%$%hd3500235057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3500135053%_)))
                                      (_%$%tl3500335060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3500135053%_))))
                                  (if (gx#stx-pair? _%$%hd3500235057%_)
                                      (let ((_%$%e3500435063%_
                                             (gx#syntax-e _%$%hd3500235057%_)))
                                        (let ((_%$%hd3500535067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3500435063%_)))
                                              (_%$%tl3500635070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3500435063%_))))
                                          (if (gx#stx-pair? _%$%hd3500535067%_)
                                              (let ((_%$%e3500735073%_
                                                     (gx#syntax-e
                                                      _%$%hd3500535067%_)))
                                                (let ((_%$%hd3500835077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3500735073%_)))
                                                      (_%$%tl3500935080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3500735073%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl3500935080%_)
                                                      (let ((_%$%e3501035083%_
                                                             (gx#syntax-e
                                                              _%$%tl3500935080%_)))
                                                        (let ((_%$%hd3501135087%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3501035083%_)))
                      (_%$%tl3501235090%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3501035083%_))))
                  (if (gx#stx-null? _%$%tl3501235090%_)
                      (if (gx#stx-pair/null? _%$%tl3500635070%_)
                          (let ((_g38984_
                                 (gx#syntax-split-splice
                                  _%$%tl3500635070%_
                                  '0)))
                            (begin
                              (let ((_g38985_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g38984_)
                                           (##values-length _g38984_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g38985_ 2)))
                                    (error "Context expects 2 values"
                                           _g38985_)))
                              (let ((_%$%target3501335093%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g38984_ 0)))
                                    (_%$%tl3501535096%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g38984_ 1))))
                                (if (gx#stx-null? _%$%tl3501535096%_)
                                    (letrec ((_%$%loop3501635099%_
                                              (lambda (_%$%hd3501435103%_
                                                       _%$%rest3502035106%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd3501435103%_)
                                                    (let ((_%$%e3501735108%_
                                                           (gx#syntax-e
                                                            _%$%hd3501435103%_)))
                                                      (let ((_%$%lp-hd3501835112%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e3501735108%_)))
                    (_%$%lp-tl3501935115%_
                     (let () (declare (not safe)) (##cdr _%$%e3501735108%_))))
                (_%$%loop3501635099%_
                 _%$%lp-tl3501935115%_
                 (cons _%$%lp-hd3501835112%_ _%$%rest3502035106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rest3502135118%_
                                                           (reverse _%$%rest3502035106%_)))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl3500335060%_)
                                                          (let ((_g38986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%tl3500335060%_ '0)))
                    (begin
                      (let ((_g38987_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g38986_)
                                   (##values-length _g38986_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g38987_ 2)))
                            (error "Context expects 2 values" _g38987_)))
                      (let ((_%$%target3502235121%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g38986_ 0)))
                            (_%$%tl3502435124%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g38986_ 1))))
                        (if (gx#stx-null? _%$%tl3502435124%_)
                            (letrec ((_%$%loop3502535127%_
                                      (lambda (_%$%hd3502335131%_
                                               _%$%body3502935134%_)
                                        (if (gx#stx-pair? _%$%hd3502335131%_)
                                            (let ((_%$%e3502635136%_
                                                   (gx#syntax-e
                                                    _%$%hd3502335131%_)))
                                              (let ((_%$%lp-hd3502735140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3502635136%_)))
                                                    (_%$%lp-tl3502835143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3502635136%_))))
                                                (_%$%loop3502535127%_
                                                 _%$%lp-tl3502835143%_
                                                 (cons _%$%lp-hd3502735140%_
                                                       _%$%body3502935134%_))))
                                            (let ((_%$%body3503035146%_
                                                   (reverse _%$%body3502935134%_)))
                                              ((lambda (_%$%g3499335149%_
                                                        _%$%g3499435151%_
                                                        _%$%g3499535152%_
                                                        _%$%g3499635153%_
                                                        _%$%g3499735154%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'call-with-parameters)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '()
                                 (cons (cons _%$%g3499735154%_
                                             (cons (foldr (lambda (_%$%g3518435189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3518535192%_)
                    (cons _%$%g3518435189%_ _%$%g3518535192%_))
                  '()
                  _%$%g3499435151%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%$%g3518635195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3518735198%_)
                    (cons _%$%g3518635195%_ _%$%g3518735198%_))
                  '()
                  _%$%g3499335149%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _%$%g3499635153%_ (cons _%$%g3499535152%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%body3503035146%_
                                               _%$%rest3502135118%_
                                               _%$%hd3501135087%_
                                               _%$%hd3500835077%_
                                               _%$%hd3499935047%_))))))
                              (_%$%loop3502535127%_
                               _%$%target3502235121%_
                               '()))
                            (_%$%g3494835036%_ _%$%g3494935040%_)))))
                  (_%$%g3494835036%_ _%$%g3494935040%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop3501635099%_
                                       _%$%target3501335093%_
                                       '()))
                                    (_%$%g3494835036%_ _%$%g3494935040%_)))))
                          (_%$%g3494835036%_ _%$%g3494935040%_))
                      (_%$%g3494835036%_ _%$%g3494935040%_))))
              (_%$%g3494835036%_ _%$%g3494935040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3494835036%_
                                               _%$%g3494935040%_))))
                                      (_%$%g3494835036%_ _%$%g3494935040%_))))
                              (_%$%g3494835036%_ _%$%g3494935040%_))))
                      (_%$%g3494835036%_ _%$%g3494935040%_))))
               (_%$%g3494635321%_
                (lambda (_%$%g3494935205%_)
                  (if (gx#stx-pair? _%$%g3494935205%_)
                      (let ((_%$%e3496935208%_
                             (gx#syntax-e _%$%g3494935205%_)))
                        (let ((_%$%hd3497035212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3496935208%_)))
                              (_%$%tl3497135215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3496935208%_))))
                          (if (gx#stx-pair? _%$%tl3497135215%_)
                              (let ((_%$%e3497235218%_
                                     (gx#syntax-e _%$%tl3497135215%_)))
                                (let ((_%$%hd3497335222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3497235218%_)))
                                      (_%$%tl3497435225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3497235218%_))))
                                  (if (gx#stx-pair? _%$%hd3497335222%_)
                                      (let ((_%$%e3497535228%_
                                             (gx#syntax-e _%$%hd3497335222%_)))
                                        (let ((_%$%hd3497635232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3497535228%_)))
                                              (_%$%tl3497735235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3497535228%_))))
                                          (if (gx#stx-pair? _%$%hd3497635232%_)
                                              (let ((_%$%e3497835238%_
                                                     (gx#syntax-e
                                                      _%$%hd3497635232%_)))
                                                (let ((_%$%hd3497935242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3497835238%_)))
                                                      (_%$%tl3498035245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3497835238%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl3498035245%_)
                                                      (let ((_%$%e3498135248%_
                                                             (gx#syntax-e
                                                              _%$%tl3498035245%_)))
                                                        (let ((_%$%hd3498235252%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3498135248%_)))
                      (_%$%tl3498335255%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3498135248%_))))
                  (if (gx#stx-null? _%$%tl3498335255%_)
                      (if (gx#stx-null? _%$%tl3497735235%_)
                          (if (gx#stx-pair/null? _%$%tl3497435225%_)
                              (let ((_g38988_
                                     (gx#syntax-split-splice
                                      _%$%tl3497435225%_
                                      '0)))
                                (begin
                                  (let ((_g38989_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g38988_)
                                               (##values-length _g38988_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g38989_ 2)))
                                        (error "Context expects 2 values"
                                               _g38989_)))
                                  (let ((_%$%target3498435258%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g38988_ 0)))
                                        (_%$%tl3498635261%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g38988_ 1))))
                                    (if (gx#stx-null? _%$%tl3498635261%_)
                                        (letrec ((_%$%loop3498735264%_
                                                  (lambda (_%$%hd3498535268%_
                                                           _%$%body3499135271%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3498535268%_)
                                                        (let ((_%$%e3498835273%_
                                                               (gx#syntax-e
                                                                _%$%hd3498535268%_)))
                                                          (let ((_%$%lp-hd3498935277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3498835273%_)))
                        (_%$%lp-tl3499035280%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3498835273%_))))
                    (_%$%loop3498735264%_
                     _%$%lp-tl3499035280%_
                     (cons _%$%lp-hd3498935277%_ _%$%body3499135271%_))))
                (let ((_%$%body3499235283%_ (reverse _%$%body3499135271%_)))
                  ((lambda (_%$%g3496635286%_
                            _%$%g3496735288%_
                            _%$%g3496835289%_)
                     (cons (gx#datum->syntax '#f 'call-with-parameters)
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons '()
                                             (foldr (lambda (_%$%g3531235315%_
                                                             _%$%g3531335318%_)
                                                      (cons _%$%g3531235315%_
                                                            _%$%g3531335318%_))
                                                    '()
                                                    _%$%g3496635286%_)))
                                 (cons _%$%g3496835289%_
                                       (cons _%$%g3496735288%_ '())))))
                   _%$%body3499235283%_
                   _%$%hd3498235252%_
                   _%$%hd3497935242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3498735264%_
                                           _%$%target3498435258%_
                                           '()))
                                        (_%$%g3494735201%_
                                         _%$%g3494935205%_)))))
                              (_%$%g3494735201%_ _%$%g3494935205%_))
                          (_%$%g3494735201%_ _%$%g3494935205%_))
                      (_%$%g3494735201%_ _%$%g3494935205%_))))
              (_%$%g3494735201%_ _%$%g3494935205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3494735201%_
                                               _%$%g3494935205%_))))
                                      (_%$%g3494735201%_ _%$%g3494935205%_))))
                              (_%$%g3494735201%_ _%$%g3494935205%_))))
                      (_%$%g3494735201%_ _%$%g3494935205%_))))
               (_%$%g3494535401%_
                (lambda (_%$%g3494935325%_)
                  (if (gx#stx-pair? _%$%g3494935325%_)
                      (let ((_%$%e3495135328%_
                             (gx#syntax-e _%$%g3494935325%_)))
                        (let ((_%$%hd3495235332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3495135328%_)))
                              (_%$%tl3495335335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3495135328%_))))
                          (if (gx#stx-pair? _%$%tl3495335335%_)
                              (let ((_%$%e3495435338%_
                                     (gx#syntax-e _%$%tl3495335335%_)))
                                (let ((_%$%hd3495535342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3495435338%_)))
                                      (_%$%tl3495635345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3495435338%_))))
                                  (if (gx#stx-null? _%$%hd3495535342%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl3495635345%_)
                                          (let ((_g38990_
                                                 (gx#syntax-split-splice
                                                  _%$%tl3495635345%_
                                                  '0)))
                                            (begin
                                              (let ((_g38991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g38990_)
                                                           (##values-length
                                                            _g38990_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g38991_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g38991_)))
                                              (let ((_%$%target3495735348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g38990_
                                                        0)))
                                                    (_%$%tl3495935351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g38990_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl3495935351%_)
                                                    (letrec ((_%$%loop3496035354%_
                                                              (lambda (_%$%hd3495835358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body3496435361%_)
                        (if (gx#stx-pair? _%$%hd3495835358%_)
                            (let ((_%$%e3496135363%_
                                   (gx#syntax-e _%$%hd3495835358%_)))
                              (let ((_%$%lp-hd3496235367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3496135363%_)))
                                    (_%$%lp-tl3496335370%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3496135363%_))))
                                (_%$%loop3496035354%_
                                 _%$%lp-tl3496335370%_
                                 (cons _%$%lp-hd3496235367%_
                                       _%$%body3496435361%_))))
                            (let ((_%$%body3496535373%_
                                   (reverse _%$%body3496435361%_)))
                              ((lambda (_%$%g3495035376%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g3539235395%_
                                                             _%$%g3539335398%_)
                                                      (cons _%$%g3539235395%_
                                                            _%$%g3539335398%_))
                                                    '()
                                                    _%$%g3495035376%_))))
                               _%$%body3496535373%_))))))
              (_%$%loop3496035354%_ _%$%target3495735348%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3494635321%_
                                                     _%$%g3494935325%_)))))
                                          (_%$%g3494635321%_
                                           _%$%g3494935325%_))
                                      (_%$%g3494635321%_ _%$%g3494935325%_))))
                              (_%$%g3494635321%_ _%$%g3494935325%_))))
                      (_%$%g3494635321%_ _%$%g3494935325%_)))))
          (_%$%g3494535401%_ _%$stx34942%_))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx35409%_)
        (let* ((_%$%g3541335437%_
                (lambda (_%$%g3541435433%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3541435433%_)))
               (_%$%g3541235520%_
                (lambda (_%$%g3541435441%_)
                  (if (gx#stx-pair? _%$%g3541435441%_)
                      (let ((_%$%e3541735444%_
                             (gx#syntax-e _%$%g3541435441%_)))
                        (let ((_%$%hd3541835448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3541735444%_)))
                              (_%$%tl3541935451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3541735444%_))))
                          (if (gx#stx-pair? _%$%tl3541935451%_)
                              (let ((_%$%e3542035454%_
                                     (gx#syntax-e _%$%tl3541935451%_)))
                                (let ((_%$%hd3542135458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3542035454%_)))
                                      (_%$%tl3542235461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3542035454%_))))
                                  (if (gx#stx-pair/null? _%$%tl3542235461%_)
                                      (let ((_g38992_
                                             (gx#syntax-split-splice
                                              _%$%tl3542235461%_
                                              '0)))
                                        (begin
                                          (let ((_g38993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g38992_)
                                                       (##values-length
                                                        _g38992_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g38993_ 2)))
                                                (error "Context expects 2 values"
                                                       _g38993_)))
                                          (let ((_%$%target3542335464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g38992_ 0)))
                                                (_%$%tl3542535467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g38992_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3542535467%_)
                                                (letrec ((_%$%loop3542635470%_
                                                          (lambda (_%$%hd3542435474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3543035477%_)
                    (if (gx#stx-pair? _%$%hd3542435474%_)
                        (let ((_%$%e3542735479%_
                               (gx#syntax-e _%$%hd3542435474%_)))
                          (let ((_%$%lp-hd3542835483%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3542735479%_)))
                                (_%$%lp-tl3542935486%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3542735479%_))))
                            (_%$%loop3542635470%_
                             _%$%lp-tl3542935486%_
                             (cons _%$%lp-hd3542835483%_
                                   _%$%body3543035477%_))))
                        (let ((_%$%body3543135489%_
                               (reverse _%$%body3543035477%_)))
                          ((lambda (_%$%g3541535492%_ _%$%g3541635494%_)
                             (if (gx#identifier? _%$%g3541635494%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%$%g3541635494%_
                                                               '())
                                                         (foldr (lambda (_%$%g3551135514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g3551235517%_)
                          (cons _%$%g3551135514%_ _%$%g3551235517%_))
                        '()
                        _%$%g3541535492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%$%g3541335437%_ _%$%g3541435441%_)))
                           _%$%body3543135489%_
                           _%$%hd3542135458%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3542635470%_
                                                   _%$%target3542335464%_
                                                   '()))
                                                (_%$%g3541335437%_
                                                 _%$%g3541435441%_)))))
                                      (_%$%g3541335437%_ _%$%g3541435441%_))))
                              (_%$%g3541335437%_ _%$%g3541435441%_))))
                      (_%$%g3541335437%_ _%$%g3541435441%_)))))
          (_%$%g3541235520%_ _%$stx35409%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx35525%_)
        (let* ((_%$%g3552935557%_
                (lambda (_%$%g3553035553%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3553035553%_)))
               (_%$%g3552835654%_
                (lambda (_%$%g3553035561%_)
                  (if (gx#stx-pair? _%$%g3553035561%_)
                      (let ((_%$%e3553435564%_
                             (gx#syntax-e _%$%g3553035561%_)))
                        (let ((_%$%hd3553535568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3553435564%_)))
                              (_%$%tl3553635571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3553435564%_))))
                          (if (gx#stx-pair? _%$%tl3553635571%_)
                              (let ((_%$%e3553735574%_
                                     (gx#syntax-e _%$%tl3553635571%_)))
                                (let ((_%$%hd3553835578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3553735574%_)))
                                      (_%$%tl3553935581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3553735574%_))))
                                  (if (gx#stx-pair? _%$%tl3553935581%_)
                                      (let ((_%$%e3554035584%_
                                             (gx#syntax-e _%$%tl3553935581%_)))
                                        (let ((_%$%hd3554135588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3554035584%_)))
                                              (_%$%tl3554235591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3554035584%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl3554235591%_)
                                              (let ((_g38994_
                                                     (gx#syntax-split-splice
                                                      _%$%tl3554235591%_
                                                      '0)))
                                                (begin
                                                  (let ((_g38995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g38994_)
                                                               (##values-length
                                                                _g38994_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g38995_ 2)))
                (error "Context expects 2 values" _g38995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target3554335594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g38994_
                                                            0)))
                                                        (_%$%tl3554535597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g38994_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3554535597%_)
                                                        (letrec ((_%$%loop3554635600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd3554435604%_ _%$%rest3555035607%_)
                            (if (gx#stx-pair? _%$%hd3554435604%_)
                                (let ((_%$%e3554735609%_
                                       (gx#syntax-e _%$%hd3554435604%_)))
                                  (let ((_%$%lp-hd3554835613%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3554735609%_)))
                                        (_%$%lp-tl3554935616%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3554735609%_))))
                                    (_%$%loop3554635600%_
                                     _%$%lp-tl3554935616%_
                                     (cons _%$%lp-hd3554835613%_
                                           _%$%rest3555035607%_))))
                                (let ((_%$%rest3555135619%_
                                       (reverse _%$%rest3555035607%_)))
                                  ((lambda (_%$%g3553135622%_
                                            _%$%g3553235624%_
                                            _%$%g3553335625%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%$%g3553335625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g3553235624%_
                                 (foldr (lambda (_%$%g3564535648%_
                                                 _%$%g3564635651%_)
                                          (cons _%$%g3564535648%_
                                                _%$%g3564635651%_))
                                        '()
                                        _%$%g3553135622%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%rest3555135619%_
                                   _%$%hd3554135588%_
                                   _%$%hd3553835578%_))))))
                  (_%$%loop3554635600%_ _%$%target3554335594%_ '()))
                (_%$%g3552935557%_ _%$%g3553035561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3552935557%_
                                               _%$%g3553035561%_))))
                                      (_%$%g3552935557%_ _%$%g3553035561%_))))
                              (_%$%g3552935557%_ _%$%g3553035561%_))))
                      (_%$%g3552935557%_ _%$%g3553035561%_)))))
          (_%$%g3552835654%_ _%$stx35525%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx35659%_)
        (let* ((_%$%g3566335734%_
                (lambda (_%$%g3566435730%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3566435730%_)))
               (_%$%g3566236011%_
                (lambda (_%$%g3566435738%_)
                  (if (gx#stx-pair? _%$%g3566435738%_)
                      (let ((_%$%e3567135741%_
                             (gx#syntax-e _%$%g3566435738%_)))
                        (let ((_%$%hd3567235745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3567135741%_)))
                              (_%$%tl3567335748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3567135741%_))))
                          (if (gx#stx-pair? _%$%tl3567335748%_)
                              (let ((_%$%e3567435751%_
                                     (gx#syntax-e _%$%tl3567335748%_)))
                                (let ((_%$%hd3567535755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3567435751%_)))
                                      (_%$%tl3567635758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3567435751%_))))
                                  (if (gx#stx-pair/null? _%$%hd3567535755%_)
                                      (let ((_g38996_
                                             (gx#syntax-split-splice
                                              _%$%hd3567535755%_
                                              '0)))
                                        (begin
                                          (let ((_g38997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g38996_)
                                                       (##values-length
                                                        _g38996_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g38997_ 2)))
                                                (error "Context expects 2 values"
                                                       _g38997_)))
                                          (let ((_%$%target3567735761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g38996_ 0)))
                                                (_%$%tl3567935764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g38996_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3567935764%_)
                                                (letrec ((_%$%loop3568035767%_
                                                          (lambda (_%$%hd3567835771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step3568435774%_
                           _%$%init3568535775%_
                           _%$%var3568635776%_)
                    (if (gx#stx-pair? _%$%hd3567835771%_)
                        (let ((_%$%e3568135778%_
                               (gx#syntax-e _%$%hd3567835771%_)))
                          (let ((_%$%lp-hd3568235782%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3568135778%_)))
                                (_%$%lp-tl3568335785%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3568135778%_))))
                            (if (gx#stx-pair? _%$%lp-hd3568235782%_)
                                (let ((_%$%e3569035788%_
                                       (gx#syntax-e _%$%lp-hd3568235782%_)))
                                  (let ((_%$%hd3569135792%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3569035788%_)))
                                        (_%$%tl3569235795%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3569035788%_))))
                                    (if (gx#stx-pair? _%$%tl3569235795%_)
                                        (let ((_%$%e3569335798%_
                                               (gx#syntax-e
                                                _%$%tl3569235795%_)))
                                          (let ((_%$%hd3569435802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3569335798%_)))
                                                (_%$%tl3569535805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3569335798%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl3569535805%_)
                                                (let ((_g38998_
                                                       (gx#syntax-split-splice
                                                        _%$%tl3569535805%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g38999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g38998_)
                         (##values-length _g38998_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g38999_ 2)))
                  (error "Context expects 2 values" _g38999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target3569635808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g38998_
                                                              0)))
                                                          (_%$%tl3569835811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g38998_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3569835811%_)
                                                          (letrec ((_%$%loop3569935814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd3569735818%_ _%$%step3570335821%_)
                              (if (gx#stx-pair? _%$%hd3569735818%_)
                                  (let ((_%$%e3570035823%_
                                         (gx#syntax-e _%$%hd3569735818%_)))
                                    (let ((_%$%lp-hd3570135827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3570035823%_)))
                                          (_%$%lp-tl3570235830%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3570035823%_))))
                                      (_%$%loop3569935814%_
                                       _%$%lp-tl3570235830%_
                                       (cons _%$%lp-hd3570135827%_
                                             _%$%step3570335821%_))))
                                  (let ((_%$%step3570435833%_
                                         (reverse _%$%step3570335821%_)))
                                    (_%$%loop3568035767%_
                                     _%$%lp-tl3568335785%_
                                     (cons _%$%step3570435833%_
                                           _%$%step3568435774%_)
                                     (cons _%$%hd3569435802%_
                                           _%$%init3568535775%_)
                                     (cons _%$%hd3569135792%_
                                           _%$%var3568635776%_)))))))
                    (_%$%loop3569935814%_ _%$%target3569635808%_ '()))
                  (_%$%g3566335734%_ _%$%g3566435738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g3566335734%_
                                                 _%$%g3566435738%_))))
                                        (_%$%g3566335734%_
                                         _%$%g3566435738%_))))
                                (_%$%g3566335734%_ _%$%g3566435738%_))))
                        (let ((_%$%step3568735836%_
                               (reverse _%$%step3568435774%_))
                              (_%$%init3568835838%_
                               (reverse _%$%init3568535775%_))
                              (_%$%var3568935839%_
                               (reverse _%$%var3568635776%_)))
                          (if (gx#stx-pair? _%$%tl3567635758%_)
                              (let ((_%$%e3570535841%_
                                     (gx#syntax-e _%$%tl3567635758%_)))
                                (let ((_%$%hd3570635845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3570535841%_)))
                                      (_%$%tl3570735848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3570535841%_))))
                                  (if (gx#stx-pair? _%$%hd3570635845%_)
                                      (let ((_%$%e3570835851%_
                                             (gx#syntax-e _%$%hd3570635845%_)))
                                        (let ((_%$%hd3570935855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3570835851%_)))
                                              (_%$%tl3571035858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3570835851%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl3571035858%_)
                                              (let ((_g39000_
                                                     (gx#syntax-split-splice
                                                      _%$%tl3571035858%_
                                                      '0)))
                                                (begin
                                                  (let ((_g39001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g39000_)
                                                               (##values-length
                                                                _g39000_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g39001_ 2)))
                (error "Context expects 2 values" _g39001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target3571135861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39000_
                                                            0)))
                                                        (_%$%tl3571335864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39000_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3571335864%_)
                                                        (letrec ((_%$%loop3571435867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd3571235871%_ _%$%fini3571835874%_)
                            (if (gx#stx-pair? _%$%hd3571235871%_)
                                (let ((_%$%e3571535876%_
                                       (gx#syntax-e _%$%hd3571235871%_)))
                                  (let ((_%$%lp-hd3571635880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3571535876%_)))
                                        (_%$%lp-tl3571735883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3571535876%_))))
                                    (_%$%loop3571435867%_
                                     _%$%lp-tl3571735883%_
                                     (cons _%$%lp-hd3571635880%_
                                           _%$%fini3571835874%_))))
                                (let ((_%$%fini3571935886%_
                                       (reverse _%$%fini3571835874%_)))
                                  (if (gx#stx-pair/null? _%$%tl3570735848%_)
                                      (let ((_g39002_
                                             (gx#syntax-split-splice
                                              _%$%tl3570735848%_
                                              '0)))
                                        (begin
                                          (let ((_g39003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39002_)
                                                       (##values-length
                                                        _g39002_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39003_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39003_)))
                                          (let ((_%$%target3572035889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39002_ 0)))
                                                (_%$%tl3572235892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39002_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3572235892%_)
                                                (letrec ((_%$%loop3572335895%_
                                                          (lambda (_%$%hd3572135899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3572735902%_)
                    (if (gx#stx-pair? _%$%hd3572135899%_)
                        (let ((_%$%e3572435904%_
                               (gx#syntax-e _%$%hd3572135899%_)))
                          (let ((_%$%lp-hd3572535908%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3572435904%_)))
                                (_%$%lp-tl3572635911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3572435904%_))))
                            (_%$%loop3572335895%_
                             _%$%lp-tl3572635911%_
                             (cons _%$%lp-hd3572535908%_
                                   _%$%body3572735902%_))))
                        (let ((_%$%body3572835914%_
                               (reverse _%$%body3572735902%_)))
                          ((lambda (_%$%g3566535917%_
                                    _%$%g3566635919%_
                                    _%$%g3566735920%_
                                    _%$%g3566835921%_
                                    _%$%g3566935922%_
                                    _%$%g3567035923%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%$%g3595635959%_
                                                  _%$%g3595735962%_)
                                           (cons _%$%g3595635959%_
                                                 _%$%g3595735962%_))
                                         '()
                                         _%$%g3567035923%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%$%g3566935922%_
                                                      _%$%g3567035923%_)
                                                     (foldr (lambda (_%$%g3596435977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g3596535980%_
                             _%$%g3596635982%_)
                      (cons (cons _%$%g3596535980%_
                                  (cons _%$%g3596435977%_ '()))
                            _%$%g3596635982%_))
                    '()
                    _%$%g3566935922%_
                    _%$%g3567035923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%$%g3566735920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%$%g3596735985%_
                                                               _%$%g3596835988%_)
                                                        (cons _%$%g3596735985%_
                                                              _%$%g3596835988%_))
                                                      '()
                                                      _%$%g3566635919%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%$%g3596935991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g3597035994%_)
                      (cons _%$%g3596935991%_ _%$%g3597035994%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%$%g3566835921%_
                                   _%$%g3567035923%_)
                                  (foldr (lambda (_%$%g3597135997%_
                                                  _%$%g3597236000%_
                                                  _%$%g3597336002%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%$%g3597236000%_
                                                             (foldr (lambda (_%$%g3597436005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g3597536008%_)
                              (cons _%$%g3597436005%_ _%$%g3597536008%_))
                            '()
                            _%$%g3597135997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g3597336002%_))
                                         '()
                                         _%$%g3566835921%_
                                         _%$%g3567035923%_)))
                          '())
                    _%$%g3566535917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%$%g3566335734%_ _%$%g3566435738%_)))
                           _%$%body3572835914%_
                           _%$%fini3571935886%_
                           _%$%hd3570935855%_
                           _%$%step3568735836%_
                           _%$%init3568835838%_
                           _%$%var3568935839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3572335895%_
                                                   _%$%target3572035889%_
                                                   '()))
                                                (_%$%g3566335734%_
                                                 _%$%g3566435738%_)))))
                                      (_%$%g3566335734%_
                                       _%$%g3566435738%_)))))))
                  (_%$%loop3571435867%_ _%$%target3571135861%_ '()))
                (_%$%g3566335734%_ _%$%g3566435738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3566335734%_
                                               _%$%g3566435738%_))))
                                      (_%$%g3566335734%_ _%$%g3566435738%_))))
                              (_%$%g3566335734%_ _%$%g3566435738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3568035767%_
                                                   _%$%target3567735761%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g3566335734%_
                                                 _%$%g3566435738%_)))))
                                      (_%$%g3566335734%_ _%$%g3566435738%_))))
                              (_%$%g3566335734%_ _%$%g3566435738%_))))
                      (_%$%g3566335734%_ _%$%g3566435738%_)))))
          (_%$%g3566236011%_ _%$stx35659%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx36019%_)
        (let* ((_%$%g3602336094%_
                (lambda (_%$%g3602436090%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3602436090%_)))
               (_%$%g3602236371%_
                (lambda (_%$%g3602436098%_)
                  (if (gx#stx-pair? _%$%g3602436098%_)
                      (let ((_%$%e3603136101%_
                             (gx#syntax-e _%$%g3602436098%_)))
                        (let ((_%$%hd3603236105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3603136101%_)))
                              (_%$%tl3603336108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3603136101%_))))
                          (if (gx#stx-pair? _%$%tl3603336108%_)
                              (let ((_%$%e3603436111%_
                                     (gx#syntax-e _%$%tl3603336108%_)))
                                (let ((_%$%hd3603536115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3603436111%_)))
                                      (_%$%tl3603636118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3603436111%_))))
                                  (if (gx#stx-pair/null? _%$%hd3603536115%_)
                                      (let ((_g39004_
                                             (gx#syntax-split-splice
                                              _%$%hd3603536115%_
                                              '0)))
                                        (begin
                                          (let ((_g39005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39004_)
                                                       (##values-length
                                                        _g39004_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39005_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39005_)))
                                          (let ((_%$%target3603736121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39004_ 0)))
                                                (_%$%tl3603936124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39004_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3603936124%_)
                                                (letrec ((_%$%loop3604036127%_
                                                          (lambda (_%$%hd3603836131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step3604436134%_
                           _%$%init3604536135%_
                           _%$%var3604636136%_)
                    (if (gx#stx-pair? _%$%hd3603836131%_)
                        (let ((_%$%e3604136138%_
                               (gx#syntax-e _%$%hd3603836131%_)))
                          (let ((_%$%lp-hd3604236142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3604136138%_)))
                                (_%$%lp-tl3604336145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3604136138%_))))
                            (if (gx#stx-pair? _%$%lp-hd3604236142%_)
                                (let ((_%$%e3605036148%_
                                       (gx#syntax-e _%$%lp-hd3604236142%_)))
                                  (let ((_%$%hd3605136152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3605036148%_)))
                                        (_%$%tl3605236155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3605036148%_))))
                                    (if (gx#stx-pair? _%$%tl3605236155%_)
                                        (let ((_%$%e3605336158%_
                                               (gx#syntax-e
                                                _%$%tl3605236155%_)))
                                          (let ((_%$%hd3605436162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3605336158%_)))
                                                (_%$%tl3605536165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3605336158%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl3605536165%_)
                                                (let ((_g39006_
                                                       (gx#syntax-split-splice
                                                        _%$%tl3605536165%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g39007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g39006_)
                         (##values-length _g39006_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g39007_ 2)))
                  (error "Context expects 2 values" _g39007_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target3605636168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g39006_
                                                              0)))
                                                          (_%$%tl3605836171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g39006_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3605836171%_)
                                                          (letrec ((_%$%loop3605936174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd3605736178%_ _%$%step3606336181%_)
                              (if (gx#stx-pair? _%$%hd3605736178%_)
                                  (let ((_%$%e3606036183%_
                                         (gx#syntax-e _%$%hd3605736178%_)))
                                    (let ((_%$%lp-hd3606136187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3606036183%_)))
                                          (_%$%lp-tl3606236190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3606036183%_))))
                                      (_%$%loop3605936174%_
                                       _%$%lp-tl3606236190%_
                                       (cons _%$%lp-hd3606136187%_
                                             _%$%step3606336181%_))))
                                  (let ((_%$%step3606436193%_
                                         (reverse _%$%step3606336181%_)))
                                    (_%$%loop3604036127%_
                                     _%$%lp-tl3604336145%_
                                     (cons _%$%step3606436193%_
                                           _%$%step3604436134%_)
                                     (cons _%$%hd3605436162%_
                                           _%$%init3604536135%_)
                                     (cons _%$%hd3605136152%_
                                           _%$%var3604636136%_)))))))
                    (_%$%loop3605936174%_ _%$%target3605636168%_ '()))
                  (_%$%g3602336094%_ _%$%g3602436098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g3602336094%_
                                                 _%$%g3602436098%_))))
                                        (_%$%g3602336094%_
                                         _%$%g3602436098%_))))
                                (_%$%g3602336094%_ _%$%g3602436098%_))))
                        (let ((_%$%step3604736196%_
                               (reverse _%$%step3604436134%_))
                              (_%$%init3604836198%_
                               (reverse _%$%init3604536135%_))
                              (_%$%var3604936199%_
                               (reverse _%$%var3604636136%_)))
                          (if (gx#stx-pair? _%$%tl3603636118%_)
                              (let ((_%$%e3606536201%_
                                     (gx#syntax-e _%$%tl3603636118%_)))
                                (let ((_%$%hd3606636205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3606536201%_)))
                                      (_%$%tl3606736208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3606536201%_))))
                                  (if (gx#stx-pair? _%$%hd3606636205%_)
                                      (let ((_%$%e3606836211%_
                                             (gx#syntax-e _%$%hd3606636205%_)))
                                        (let ((_%$%hd3606936215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3606836211%_)))
                                              (_%$%tl3607036218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3606836211%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl3607036218%_)
                                              (let ((_g39008_
                                                     (gx#syntax-split-splice
                                                      _%$%tl3607036218%_
                                                      '0)))
                                                (begin
                                                  (let ((_g39009_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g39008_)
                                                               (##values-length
                                                                _g39008_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g39009_ 2)))
                (error "Context expects 2 values" _g39009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target3607136221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39008_
                                                            0)))
                                                        (_%$%tl3607336224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39008_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3607336224%_)
                                                        (letrec ((_%$%loop3607436227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd3607236231%_ _%$%fini3607836234%_)
                            (if (gx#stx-pair? _%$%hd3607236231%_)
                                (let ((_%$%e3607536236%_
                                       (gx#syntax-e _%$%hd3607236231%_)))
                                  (let ((_%$%lp-hd3607636240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3607536236%_)))
                                        (_%$%lp-tl3607736243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3607536236%_))))
                                    (_%$%loop3607436227%_
                                     _%$%lp-tl3607736243%_
                                     (cons _%$%lp-hd3607636240%_
                                           _%$%fini3607836234%_))))
                                (let ((_%$%fini3607936246%_
                                       (reverse _%$%fini3607836234%_)))
                                  (if (gx#stx-pair/null? _%$%tl3606736208%_)
                                      (let ((_g39010_
                                             (gx#syntax-split-splice
                                              _%$%tl3606736208%_
                                              '0)))
                                        (begin
                                          (let ((_g39011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39010_)
                                                       (##values-length
                                                        _g39010_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39011_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39011_)))
                                          (let ((_%$%target3608036249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39010_ 0)))
                                                (_%$%tl3608236252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39010_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3608236252%_)
                                                (letrec ((_%$%loop3608336255%_
                                                          (lambda (_%$%hd3608136259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3608736262%_)
                    (if (gx#stx-pair? _%$%hd3608136259%_)
                        (let ((_%$%e3608436264%_
                               (gx#syntax-e _%$%hd3608136259%_)))
                          (let ((_%$%lp-hd3608536268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3608436264%_)))
                                (_%$%lp-tl3608636271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3608436264%_))))
                            (_%$%loop3608336255%_
                             _%$%lp-tl3608636271%_
                             (cons _%$%lp-hd3608536268%_
                                   _%$%body3608736262%_))))
                        (let ((_%$%body3608836274%_
                               (reverse _%$%body3608736262%_)))
                          ((lambda (_%$%g3602536277%_
                                    _%$%g3602636279%_
                                    _%$%g3602736280%_
                                    _%$%g3602836281%_
                                    _%$%g3602936282%_
                                    _%$%g3603036283%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%$%g3631636319%_
                                                  _%$%g3631736322%_)
                                           (cons _%$%g3631636319%_
                                                 _%$%g3631736322%_))
                                         '()
                                         _%$%g3603036283%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%$%g3602936282%_
                                                      _%$%g3603036283%_)
                                                     (foldr (lambda (_%$%g3632436337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g3632536340%_
                             _%$%g3632636342%_)
                      (cons (cons _%$%g3632536340%_
                                  (cons _%$%g3632436337%_ '()))
                            _%$%g3632636342%_))
                    '()
                    _%$%g3602936282%_
                    _%$%g3603036283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%$%g3632736345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3632836348%_)
                    (cons _%$%g3632736345%_ _%$%g3632836348%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%$%g3602736280%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%g3602836281%_
                                                   _%$%g3603036283%_)
                                                  (foldr (lambda (_%$%g3632936351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g3633036354%_
                          _%$%g3633136356%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%$%g3633036354%_
                                     (foldr (lambda (_%$%g3633236359%_
                                                     _%$%g3633336362%_)
                                              (cons _%$%g3633236359%_
                                                    _%$%g3633336362%_))
                                            '()
                                            _%$%g3632936351%_)))
                         _%$%g3633136356%_))
                 '()
                 _%$%g3602836281%_
                 _%$%g3603036283%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%$%g3633436365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g3633536368%_)
                             (cons _%$%g3633436365%_ _%$%g3633536368%_))
                           '()
                           _%$%g3602636279%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%$%g3602536277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%$%g3602336094%_ _%$%g3602436098%_)))
                           _%$%body3608836274%_
                           _%$%fini3607936246%_
                           _%$%hd3606936215%_
                           _%$%step3604736196%_
                           _%$%init3604836198%_
                           _%$%var3604936199%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3608336255%_
                                                   _%$%target3608036249%_
                                                   '()))
                                                (_%$%g3602336094%_
                                                 _%$%g3602436098%_)))))
                                      (_%$%g3602336094%_
                                       _%$%g3602436098%_)))))))
                  (_%$%loop3607436227%_ _%$%target3607136221%_ '()))
                (_%$%g3602336094%_ _%$%g3602436098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3602336094%_
                                               _%$%g3602436098%_))))
                                      (_%$%g3602336094%_ _%$%g3602436098%_))))
                              (_%$%g3602336094%_ _%$%g3602436098%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3604036127%_
                                                   _%$%target3603736121%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g3602336094%_
                                                 _%$%g3602436098%_)))))
                                      (_%$%g3602336094%_ _%$%g3602436098%_))))
                              (_%$%g3602336094%_ _%$%g3602436098%_))))
                      (_%$%g3602336094%_ _%$%g3602436098%_)))))
          (_%$%g3602236371%_ _%$stx36019%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx36379%_)
        (let* ((_%$%g3638336407%_
                (lambda (_%$%g3638436403%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3638436403%_)))
               (_%$%g3638236490%_
                (lambda (_%$%g3638436411%_)
                  (if (gx#stx-pair? _%$%g3638436411%_)
                      (let ((_%$%e3638736414%_
                             (gx#syntax-e _%$%g3638436411%_)))
                        (let ((_%$%hd3638836418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3638736414%_)))
                              (_%$%tl3638936421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3638736414%_))))
                          (if (gx#stx-pair? _%$%tl3638936421%_)
                              (let ((_%$%e3639036424%_
                                     (gx#syntax-e _%$%tl3638936421%_)))
                                (let ((_%$%hd3639136428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3639036424%_)))
                                      (_%$%tl3639236431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3639036424%_))))
                                  (if (gx#stx-pair/null? _%$%tl3639236431%_)
                                      (let ((_g39012_
                                             (gx#syntax-split-splice
                                              _%$%tl3639236431%_
                                              '0)))
                                        (begin
                                          (let ((_g39013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39012_)
                                                       (##values-length
                                                        _g39012_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39013_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39013_)))
                                          (let ((_%$%target3639336434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39012_ 0)))
                                                (_%$%tl3639536437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39012_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3639536437%_)
                                                (letrec ((_%$%loop3639636440%_
                                                          (lambda (_%$%hd3639436444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3640036447%_)
                    (if (gx#stx-pair? _%$%hd3639436444%_)
                        (let ((_%$%e3639736449%_
                               (gx#syntax-e _%$%hd3639436444%_)))
                          (let ((_%$%lp-hd3639836453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3639736449%_)))
                                (_%$%lp-tl3639936456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3639736449%_))))
                            (_%$%loop3639636440%_
                             _%$%lp-tl3639936456%_
                             (cons _%$%lp-hd3639836453%_
                                   _%$%body3640036447%_))))
                        (let ((_%$%body3640136459%_
                               (reverse _%$%body3640036447%_)))
                          ((lambda (_%$%g3638536462%_ _%$%g3638636464%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%$%g3638636464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%$%g3648136484%_ _%$%g3648236487%_)
                                  (cons _%$%g3648136484%_ _%$%g3648236487%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%$%g3638536462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%$%body3640136459%_
                           _%$%hd3639136428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3639636440%_
                                                   _%$%target3639336434%_
                                                   '()))
                                                (_%$%g3638336407%_
                                                 _%$%g3638436411%_)))))
                                      (_%$%g3638336407%_ _%$%g3638436411%_))))
                              (_%$%g3638336407%_ _%$%g3638436411%_))))
                      (_%$%g3638336407%_ _%$%g3638436411%_)))))
          (_%$%g3638236490%_ _%$stx36379%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx36495%_)
        (let* ((_%$%g3649936523%_
                (lambda (_%$%g3650036519%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3650036519%_)))
               (_%$%g3649836606%_
                (lambda (_%$%g3650036527%_)
                  (if (gx#stx-pair? _%$%g3650036527%_)
                      (let ((_%$%e3650336530%_
                             (gx#syntax-e _%$%g3650036527%_)))
                        (let ((_%$%hd3650436534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3650336530%_)))
                              (_%$%tl3650536537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3650336530%_))))
                          (if (gx#stx-pair? _%$%tl3650536537%_)
                              (let ((_%$%e3650636540%_
                                     (gx#syntax-e _%$%tl3650536537%_)))
                                (let ((_%$%hd3650736544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3650636540%_)))
                                      (_%$%tl3650836547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3650636540%_))))
                                  (if (gx#stx-pair/null? _%$%tl3650836547%_)
                                      (let ((_g39014_
                                             (gx#syntax-split-splice
                                              _%$%tl3650836547%_
                                              '0)))
                                        (begin
                                          (let ((_g39015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39014_)
                                                       (##values-length
                                                        _g39014_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39015_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39015_)))
                                          (let ((_%$%target3650936550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39014_ 0)))
                                                (_%$%tl3651136553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39014_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3651136553%_)
                                                (letrec ((_%$%loop3651236556%_
                                                          (lambda (_%$%hd3651036560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3651636563%_)
                    (if (gx#stx-pair? _%$%hd3651036560%_)
                        (let ((_%$%e3651336565%_
                               (gx#syntax-e _%$%hd3651036560%_)))
                          (let ((_%$%lp-hd3651436569%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3651336565%_)))
                                (_%$%lp-tl3651536572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3651336565%_))))
                            (_%$%loop3651236556%_
                             _%$%lp-tl3651536572%_
                             (cons _%$%lp-hd3651436569%_
                                   _%$%body3651636563%_))))
                        (let ((_%$%body3651736575%_
                               (reverse _%$%body3651636563%_)))
                          ((lambda (_%$%g3650136578%_ _%$%g3650236580%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%$%g3650236580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%$%g3659736600%_ _%$%g3659836603%_)
                                  (cons _%$%g3659736600%_ _%$%g3659836603%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%$%g3650136578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%$%body3651736575%_
                           _%$%hd3650736544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3651236556%_
                                                   _%$%target3650936550%_
                                                   '()))
                                                (_%$%g3649936523%_
                                                 _%$%g3650036527%_)))))
                                      (_%$%g3649936523%_ _%$%g3650036527%_))))
                              (_%$%g3649936523%_ _%$%g3650036527%_))))
                      (_%$%g3649936523%_ _%$%g3650036527%_)))))
          (_%$%g3649836606%_ _%$stx36495%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx36611%_)
        (let ((_%$%g3661436621%_
               (lambda (_%$%g3661536617%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g3661536617%_))))
          (_%$%g3661436621%_ _%$stx36611%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx36625%_)
        (let ((_%$%g3662836635%_
               (lambda (_%$%g3662936631%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g3662936631%_))))
          (_%$%g3662836635%_ _%$stx36625%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx36639%_)
        (letrec ((_%generate-thunk36642%_
                  (lambda (_%body37961%_)
                    (if (null? _%body37961%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx36639%_)
                        (let* ((_%$%g3796437981%_
                                (lambda (_%$%g3796537977%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g3796537977%_)))
                               (_%$%g3796338040%_
                                (lambda (_%$%g3796537985%_)
                                  (if (gx#stx-pair/null? _%$%g3796537985%_)
                                      (let ((_g39016_
                                             (gx#syntax-split-splice
                                              _%$%g3796537985%_
                                              '0)))
                                        (begin
                                          (let ((_g39017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39016_)
                                                       (##values-length
                                                        _g39016_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39017_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39017_)))
                                          (let ((_%$%target3796737988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39016_ 0)))
                                                (_%$%tl3796937991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39016_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3796937991%_)
                                                (letrec ((_%$%loop3797037994%_
                                                          (lambda (_%$%hd3796837998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e3797438001%_)
                    (if (gx#stx-pair? _%$%hd3796837998%_)
                        (let ((_%$%e3797138003%_
                               (gx#syntax-e _%$%hd3796837998%_)))
                          (let ((_%$%lp-hd3797238007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3797138003%_)))
                                (_%$%lp-tl3797338010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3797138003%_))))
                            (_%$%loop3797037994%_
                             _%$%lp-tl3797338010%_
                             (cons _%$%lp-hd3797238007%_ _%$%e3797438001%_))))
                        (let ((_%$%e3797538013%_ (reverse _%$%e3797438001%_)))
                          ((lambda (_%$%g3796638016%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%$%g3803138034%_
                                                         _%$%g3803238037%_)
                                                  (cons _%$%g3803138034%_
                                                        _%$%g3803238037%_))
                                                '()
                                                _%$%g3796638016%_))))
                           _%$%e3797538013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3797037994%_
                                                   _%$%target3796737988%_
                                                   '()))
                                                (_%$%g3796437981%_
                                                 _%$%g3796537985%_)))))
                                      (_%$%g3796437981%_ _%$%g3796537985%_)))))
                          (_%$%g3796338040%_ (reverse _%body37961%_))))))
                 (_%generate-fini36644%_
                  (lambda (_%thunk37844%_ _%fini37846%_)
                    (let* ((_%$%g3784837872%_
                            (lambda (_%$%g3784937868%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3784937868%_)))
                           (_%$%g3784737957%_
                            (lambda (_%$%g3784937876%_)
                              (if (gx#stx-pair? _%$%g3784937876%_)
                                  (let ((_%$%e3785237879%_
                                         (gx#syntax-e _%$%g3784937876%_)))
                                    (let ((_%$%hd3785337883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3785237879%_)))
                                          (_%$%tl3785437886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3785237879%_))))
                                      (if (gx#stx-pair? _%$%tl3785437886%_)
                                          (let ((_%$%e3785537889%_
                                                 (gx#syntax-e
                                                  _%$%tl3785437886%_)))
                                            (let ((_%$%hd3785637893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3785537889%_)))
                                                  (_%$%tl3785737896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3785537889%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd3785637893%_)
                                                  (let ((_g39018_
                                                         (gx#syntax-split-splice
                                                          _%$%hd3785637893%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39019_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39018_)
                           (##values-length _g39018_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39019_ 2)))
                    (error "Context expects 2 values" _g39019_)))
              (let ((_%$%target3785837899%_
                     (let () (declare (not safe)) (##values-ref _g39018_ 0)))
                    (_%$%tl3786037902%_
                     (let () (declare (not safe)) (##values-ref _g39018_ 1))))
                (if (gx#stx-null? _%$%tl3786037902%_)
                    (letrec ((_%$%loop3786137905%_
                              (lambda (_%$%hd3785937909%_ _%$%e3786537912%_)
                                (if (gx#stx-pair? _%$%hd3785937909%_)
                                    (let ((_%$%e3786237914%_
                                           (gx#syntax-e _%$%hd3785937909%_)))
                                      (let ((_%$%lp-hd3786337918%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3786237914%_)))
                                            (_%$%lp-tl3786437921%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3786237914%_))))
                                        (_%$%loop3786137905%_
                                         _%$%lp-tl3786437921%_
                                         (cons _%$%lp-hd3786337918%_
                                               _%$%e3786537912%_))))
                                    (let ((_%$%e3786637924%_
                                           (reverse _%$%e3786537912%_)))
                                      (if (gx#stx-null? _%$%tl3785737896%_)
                                          ((lambda (_%$%g3785037927%_
                                                    _%$%g3785137929%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%$%g3785137929%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%$%g3794837951%_
                                                   _%$%g3794937954%_)
                                            (cons _%$%g3794837951%_
                                                  _%$%g3794937954%_))
                                          '()
                                          _%$%g3785037927%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%e3786637924%_
                                           _%$%hd3785337883%_)
                                          (_%$%g3784837872%_
                                           _%$%g3784937876%_)))))))
                      (_%$%loop3786137905%_ _%$%target3785837899%_ '()))
                    (_%$%g3784837872%_ _%$%g3784937876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3784837872%_
                                                   _%$%g3784937876%_))))
                                          (_%$%g3784837872%_
                                           _%$%g3784937876%_))))
                                  (_%$%g3784837872%_ _%$%g3784937876%_)))))
                      (_%$%g3784737957%_
                       (list _%thunk37844%_ _%fini37846%_)))))
                 (_%generate-catch36645%_
                  (lambda (_%handlers37259%_ _%thunk37261%_)
                    (let* ((_%$%g3726337271%_
                            (lambda (_%$%g3726437267%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3726437267%_)))
                           (_%$%g3726237840%_
                            (lambda (_%$%g3726437275%_)
                              ((lambda (_%$%g3726537278%_)
                                 (let _%lp37290%_ ((_%rest37293%_
                                                    _%handlers37259%_)
                                                   (_%clauses37295%_ '()))
                                   (let* ((_%$%rest3729637304%_ _%rest37293%_)
                                          (_%$%E3729937310%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%rest3729637304%_
                                                    '([hd . rest])
                                                    'else)
                                             (void)))
                                          (_%$%else3729837435%_
                                           (lambda ()
                                             (let* ((_%$%g3731637340%_
                                                     (lambda (_%$%g3731737336%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g3731737336%_)))
                                                    (_%$%g3731537431%_
                                                     (lambda (_%$%g3731737344%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g3731737344%_)
                                                           (let ((_%$%e3732037347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g3731737344%_)))
                     (let ((_%$%hd3732137351%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3732037347%_)))
                           (_%$%tl3732237354%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3732037347%_))))
                       (if (gx#stx-pair/null? _%$%hd3732137351%_)
                           (let ((_g39020_
                                  (gx#syntax-split-splice
                                   _%$%hd3732137351%_
                                   '0)))
                             (begin
                               (let ((_g39021_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g39020_)
                                            (##values-length _g39020_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g39021_ 2)))
                                     (error "Context expects 2 values"
                                            _g39021_)))
                               (let ((_%$%target3732337357%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39020_ 0)))
                                     (_%$%tl3732537360%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39020_ 1))))
                                 (if (gx#stx-null? _%$%tl3732537360%_)
                                     (letrec ((_%$%loop3732637363%_
                                               (lambda (_%$%hd3732437367%_
                                                        _%$%clause3733037370%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd3732437367%_)
                                                     (let ((_%$%e3732737372%_
                                                            (gx#syntax-e
                                                             _%$%hd3732437367%_)))
                                                       (let ((_%$%lp-hd3732837376%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3732737372%_)))
                     (_%$%lp-tl3732937379%_
                      (let () (declare (not safe)) (##cdr _%$%e3732737372%_))))
                 (_%$%loop3732637363%_
                  _%$%lp-tl3732937379%_
                  (cons _%$%lp-hd3732837376%_ _%$%clause3733037370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%clause3733137382%_
                                                            (reverse _%$%clause3733037370%_)))
                                                       (if (gx#stx-pair?
                                                            _%$%tl3732237354%_)
                                                           (let ((_%$%e3733237385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl3732237354%_)))
                     (let ((_%$%hd3733337389%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3733237385%_)))
                           (_%$%tl3733437392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3733237385%_))))
                       (if (gx#stx-null? _%$%tl3733437392%_)
                           ((lambda (_%$%g3731837395%_ _%$%g3731937397%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%g3726537278%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%$%g3742237425%_ _%$%g3742337428%_)
                                   (cons _%$%g3742237425%_ _%$%g3742337428%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%$%g3726537278%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%$%g3731937397%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%$%g3731837395%_ '()))))
                            _%$%hd3733337389%_
                            _%$%clause3733137382%_)
                           (_%$%g3731637340%_ _%$%g3731737344%_))))
                   (_%$%g3731637340%_ _%$%g3731737344%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop3732637363%_
                                        _%$%target3732337357%_
                                        '()))
                                     (_%$%g3731637340%_ _%$%g3731737344%_)))))
                           (_%$%g3731637340%_ _%$%g3731737344%_))))
                   (_%$%g3731637340%_ _%$%g3731737344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3731537431%_
                                                (list _%clauses37295%_
                                                      _%thunk37261%_)))))
                                          (_%$%K3730037824%_
                                           (lambda (_%rest37439%_ _%hd37441%_)
                                             (let* ((_%$%g3744637516%_
                                                     (lambda (_%$%g3744737512%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g3744737512%_)))
                                                    (_%$%g3744537588%_
                                                     (lambda (_%$%g3744737520%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g3744737520%_)
                                                           (let ((_%$%e3749937523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g3744737520%_)))
                     (let ((_%$%hd3750037527%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3749937523%_)))
                           (_%$%tl3750137530%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3749937523%_))))
                       (if (gx#stx-pair/null? _%$%tl3750137530%_)
                           (let ((_g39022_
                                  (gx#syntax-split-splice
                                   _%$%tl3750137530%_
                                   '0)))
                             (begin
                               (let ((_g39023_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g39022_)
                                            (##values-length _g39022_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g39023_ 2)))
                                     (error "Context expects 2 values"
                                            _g39023_)))
                               (let ((_%$%target3750237533%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39022_ 0)))
                                     (_%$%tl3750437536%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39022_ 1))))
                                 (if (gx#stx-null? _%$%tl3750437536%_)
                                     (letrec ((_%$%loop3750537539%_
                                               (lambda (_%$%hd3750337543%_
                                                        _%$%body3750937546%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd3750337543%_)
                                                     (let ((_%$%e3750637548%_
                                                            (gx#syntax-e
                                                             _%$%hd3750337543%_)))
                                                       (let ((_%$%lp-hd3750737552%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3750637548%_)))
                     (_%$%lp-tl3750837555%_
                      (let () (declare (not safe)) (##cdr _%$%e3750637548%_))))
                 (_%$%loop3750537539%_
                  _%$%lp-tl3750837555%_
                  (cons _%$%lp-hd3750737552%_ _%$%body3750937546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%body3751037558%_
                                                            (reverse _%$%body3750937546%_)))
                                                       ((lambda (_%$%g3749737561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3749837563%_)
                  (if (gx#underscore? _%$%g3749837563%_)
                      (_%lp37290%_
                       _%rest37439%_
                       (cons (cons '#t
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%$%g3757937582%_
                                                               _%$%g3758037585%_)
                                                        (cons _%$%g3757937582%_
                                                              _%$%g3758037585%_))
                                                      '()
                                                      _%$%g3749737561%_))
                                         '()))
                             _%clauses37295%_))
                      (_%$%g3744637516%_ _%$%g3744737520%_)))
                _%$%body3751037558%_
                _%$%hd3750037527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop3750537539%_
                                        _%$%target3750237533%_
                                        '()))
                                     (_%$%g3744637516%_ _%$%g3744737520%_)))))
                           (_%$%g3744637516%_ _%$%g3744737520%_))))
                   (_%$%g3744637516%_ _%$%g3744737520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3744437670%_
                                                     (lambda (_%$%g3744737592%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g3744737592%_)
                                                           (let ((_%$%e3748237595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g3744737592%_)))
                     (let ((_%$%hd3748337599%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3748237595%_)))
                           (_%$%tl3748437602%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3748237595%_))))
                       (if (gx#stx-pair? _%$%hd3748337599%_)
                           (let ((_%$%e3748537605%_
                                  (gx#syntax-e _%$%hd3748337599%_)))
                             (let ((_%$%hd3748637609%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e3748537605%_)))
                                   (_%$%tl3748737612%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e3748537605%_))))
                               (if (gx#stx-null? _%$%tl3748737612%_)
                                   (if (gx#stx-pair/null? _%$%tl3748437602%_)
                                       (let ((_g39024_
                                              (gx#syntax-split-splice
                                               _%$%tl3748437602%_
                                               '0)))
                                         (begin
                                           (let ((_g39025_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39024_)
                                                        (##values-length
                                                         _g39024_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39025_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39025_)))
                                           (let ((_%$%target3748837615%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39024_ 0)))
                                                 (_%$%tl3749037618%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39024_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl3749037618%_)
                                                 (letrec ((_%$%loop3749137621%_
                                                           (lambda (_%$%hd3748937625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%body3749537628%_)
                     (if (gx#stx-pair? _%$%hd3748937625%_)
                         (let ((_%$%e3749237630%_
                                (gx#syntax-e _%$%hd3748937625%_)))
                           (let ((_%$%lp-hd3749337634%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e3749237630%_)))
                                 (_%$%lp-tl3749437637%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e3749237630%_))))
                             (_%$%loop3749137621%_
                              _%$%lp-tl3749437637%_
                              (cons _%$%lp-hd3749337634%_
                                    _%$%body3749537628%_))))
                         (let ((_%$%body3749637640%_
                                (reverse _%$%body3749537628%_)))
                           ((lambda (_%$%g3748037643%_ _%$%g3748137645%_)
                              (if (gx#identifier? _%$%g3748137645%_)
                                  (_%lp37290%_
                                   _%rest37439%_
                                   (cons (cons '#t
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g3748137645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _%$%g3726537278%_ '()))
                               '())
                         (foldr (lambda (_%$%g3766137664%_ _%$%g3766237667%_)
                                  (cons _%$%g3766137664%_ _%$%g3766237667%_))
                                '()
                                _%$%g3748037643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%clauses37295%_))
                                  (_%$%g3744537588%_ _%$%g3744737592%_)))
                            _%$%body3749637640%_
                            _%$%hd3748637609%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop3749137621%_
                                                    _%$%target3748837615%_
                                                    '()))
                                                 (_%$%g3744537588%_
                                                  _%$%g3744737592%_)))))
                                       (_%$%g3744537588%_ _%$%g3744737592%_))
                                   (_%$%g3744537588%_ _%$%g3744737592%_))))
                           (_%$%g3744537588%_ _%$%g3744737592%_))))
                   (_%$%g3744537588%_ _%$%g3744737592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3744337766%_
                                                     (lambda (_%$%g3744737674%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g3744737674%_)
                                                           (let ((_%$%e3746237677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g3744737674%_)))
                     (let ((_%$%hd3746337681%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3746237677%_)))
                           (_%$%tl3746437684%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3746237677%_))))
                       (if (gx#stx-pair? _%$%hd3746337681%_)
                           (let ((_%$%e3746537687%_
                                  (gx#syntax-e _%$%hd3746337681%_)))
                             (let ((_%$%hd3746637691%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e3746537687%_)))
                                   (_%$%tl3746737694%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e3746537687%_))))
                               (if (gx#stx-pair? _%$%tl3746737694%_)
                                   (let ((_%$%e3746837697%_
                                          (gx#syntax-e _%$%tl3746737694%_)))
                                     (let ((_%$%hd3746937701%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e3746837697%_)))
                                           (_%$%tl3747037704%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e3746837697%_))))
                                       (if (gx#stx-null? _%$%tl3747037704%_)
                                           (if (gx#stx-pair/null?
                                                _%$%tl3746437684%_)
                                               (let ((_g39026_
                                                      (gx#syntax-split-splice
                                                       _%$%tl3746437684%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39026_)
                        (##values-length _g39026_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39027_ 2)))
                 (error "Context expects 2 values" _g39027_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target3747137707%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39026_
                                                             0)))
                                                         (_%$%tl3747337710%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39026_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl3747337710%_)
                                                         (letrec ((_%$%loop3747437713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd3747237717%_ _%$%body3747837720%_)
                             (if (gx#stx-pair? _%$%hd3747237717%_)
                                 (let ((_%$%e3747537722%_
                                        (gx#syntax-e _%$%hd3747237717%_)))
                                   (let ((_%$%lp-hd3747637726%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3747537722%_)))
                                         (_%$%lp-tl3747737729%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3747537722%_))))
                                     (_%$%loop3747437713%_
                                      _%$%lp-tl3747737729%_
                                      (cons _%$%lp-hd3747637726%_
                                            _%$%body3747837720%_))))
                                 (let ((_%$%body3747937732%_
                                        (reverse _%$%body3747837720%_)))
                                   ((lambda (_%$%g3745937735%_
                                             _%$%g3746037737%_
                                             _%$%g3746137738%_)
                                      (if (gx#identifier? _%$%g3746037737%_)
                                          (_%lp37290%_
                                           _%rest37439%_
                                           (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _%$%g3746137738%_ '()))
                     (cons _%$%g3726537278%_ '()))
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%$%g3746037737%_
                                             (cons _%$%g3726537278%_ '()))
                                       '())
                                 (foldr (lambda (_%$%g3775737760%_
                                                 _%$%g3775837763%_)
                                          (cons _%$%g3775737760%_
                                                _%$%g3775837763%_))
                                        '()
                                        _%$%g3745937735%_)))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%clauses37295%_))
                                          (_%$%g3744437670%_
                                           _%$%g3744737674%_)))
                                    _%$%body3747937732%_
                                    _%$%hd3746937701%_
                                    _%$%hd3746637691%_))))))
                   (_%$%loop3747437713%_ _%$%target3747137707%_ '()))
                 (_%$%g3744437670%_ _%$%g3744737674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3744437670%_
                                                _%$%g3744737674%_))
                                           (_%$%g3744437670%_
                                            _%$%g3744737674%_))))
                                   (_%$%g3744437670%_ _%$%g3744737674%_))))
                           (_%$%g3744437670%_ _%$%g3744737674%_))))
                   (_%$%g3744437670%_ _%$%g3744737674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3744237820%_
                                                     (lambda (_%$%g3744737770%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g3744737770%_)
                                                           (let ((_%$%e3745037773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g3744737770%_)))
                     (let ((_%$%hd3745137777%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3745037773%_)))
                           (_%$%tl3745237780%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3745037773%_))))
                       (if (gx#stx-pair? _%$%tl3745237780%_)
                           (let ((_%$%e3745337783%_
                                  (gx#syntax-e _%$%tl3745237780%_)))
                             (let ((_%$%hd3745437787%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e3745337783%_)))
                                   (_%$%tl3745537790%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e3745337783%_))))
                               (if (gx#identifier? _%$%hd3745437787%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g39028_|
                                        _%$%hd3745437787%_)
                                       (if (gx#stx-pair? _%$%tl3745537790%_)
                                           (let ((_%$%e3745637793%_
                                                  (gx#syntax-e
                                                   _%$%tl3745537790%_)))
                                             (let ((_%$%hd3745737797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e3745637793%_)))
                                                   (_%$%tl3745837800%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e3745637793%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl3745837800%_)
                                                   ((lambda (_%$%g3744837803%_
                                                             _%$%g3744937805%_)
                                                      (_%lp37290%_
                                                       _%rest37439%_
                                                       (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '?)
                                       (cons _%$%g3744937805%_ '()))
                                 (cons _%$%g3726537278%_ '()))
                           (cons (gx#datum->syntax '#f '=>)
                                 (cons _%$%g3744837803%_ '())))
                     _%clauses37295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%hd3745737797%_
                                                    _%$%hd3745137777%_)
                                                   (_%$%g3744337766%_
                                                    _%$%g3744737770%_))))
                                           (_%$%g3744337766%_
                                            _%$%g3744737770%_))
                                       (_%$%g3744337766%_ _%$%g3744737770%_))
                                   (_%$%g3744337766%_ _%$%g3744737770%_))))
                           (_%$%g3744337766%_ _%$%g3744737770%_))))
                   (_%$%g3744337766%_ _%$%g3744737770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3744237820%_
                                                _%hd37441%_)))))
                                     (if (pair? _%$%rest3729637304%_)
                                         (let ((_%$%hd3730137828%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%rest3729637304%_)))
                                               (_%$%tl3730237831%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%rest3729637304%_))))
                                           (let* ((_%hd37834%_
                                                   _%$%hd3730137828%_)
                                                  (_%rest37837%_
                                                   _%$%tl3730237831%_))
                                             (_%$%K3730037824%_
                                              _%rest37837%_
                                              _%hd37834%_)))
                                         (_%$%else3729837435%_)))))
                               _%$%g3726437275%_))))
                      (_%$%g3726237840%_ (gx#genident))))))
          (let* ((_%$%g3664736667%_
                  (lambda (_%$%g3664836663%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g3664836663%_)))
                 (_%$%g3664637255%_
                  (lambda (_%$%g3664836671%_)
                    (if (gx#stx-pair? _%$%g3664836671%_)
                        (let ((_%$%e3665036674%_
                               (gx#syntax-e _%$%g3664836671%_)))
                          (let ((_%$%hd3665136678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3665036674%_)))
                                (_%$%tl3665236681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3665036674%_))))
                            (if (gx#stx-pair/null? _%$%tl3665236681%_)
                                (let ((_g39029_
                                       (gx#syntax-split-splice
                                        _%$%tl3665236681%_
                                        '0)))
                                  (begin
                                    (let ((_g39030_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g39029_)
                                                 (##values-length _g39029_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g39030_ 2)))
                                          (error "Context expects 2 values"
                                                 _g39030_)))
                                    (let ((_%$%target3665336684%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g39029_ 0)))
                                          (_%$%tl3665536687%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g39029_ 1))))
                                      (if (gx#stx-null? _%$%tl3665536687%_)
                                          (letrec ((_%$%loop3665636690%_
                                                    (lambda (_%$%hd3665436694%_
                                                             _%$%e3666036697%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd3665436694%_)
                                                          (let ((_%$%e3665736699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd3665436694%_)))
                    (let ((_%$%lp-hd3665836703%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3665736699%_)))
                          (_%$%lp-tl3665936706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3665736699%_))))
                      (_%$%loop3665636690%_
                       _%$%lp-tl3665936706%_
                       (cons _%$%lp-hd3665836703%_ _%$%e3666036697%_))))
                  (let ((_%$%e3666136709%_ (reverse _%$%e3666036697%_)))
                    ((lambda (_%$%g3664936712%_)
                       (let _%lp36729%_ ((_%rest36732%_
                                          (foldr (lambda (_%$%g3724637249%_
                                                          _%$%g3724737252%_)
                                                   (cons _%$%g3724637249%_
                                                         _%$%g3724737252%_))
                                                 '()
                                                 _%$%g3664936712%_))
                                         (_%body36734%_ '()))
                         (let* ((_%$%g3673736749%_
                                 (lambda (_%$%g3673836745%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g3673836745%_)))
                                (_%$%g3673636760%_
                                 (lambda (_%$%g3673836753%_)
                                   (if (gx#stx-null? _%$%g3673836753%_)
                                       ((lambda ()
                                          (cons 'begin
                                                (reverse _%body36734%_))))
                                       (_%$%g3673736749%_ _%$%g3673836753%_))))
                                (_%$%g3673537243%_
                                 (lambda (_%$%g3673836764%_)
                                   (if (gx#stx-pair? _%$%g3673836764%_)
                                       (let ((_%$%e3674136767%_
                                              (gx#syntax-e _%$%g3673836764%_)))
                                         (let ((_%$%hd3674236771%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e3674136767%_)))
                                               (_%$%tl3674336774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e3674136767%_))))
                                           ((lambda (_%$%g3673936777%_
                                                     _%$%g3674036779%_)
                                              (let* ((_%$%g3679636829%_
                                                      (lambda (_%$%g3679736825%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g3679736825%_)))
                                                     (_%$%g3679536840%_
                                                      (lambda (_%$%g3679736833%_)
                                                        ((lambda ()
                                                           (_%lp36729%_
                                                            _%$%g3673936777%_
                                                            (cons _%$%g3674036779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body36734%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3679437171%_
                                                      (lambda (_%$%g3679736844%_)
                                                        (if (gx#stx-pair?
                                                             _%$%g3679736844%_)
                                                            (let ((_%$%e3681236847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%g3679736844%_)))
                      (let ((_%$%hd3681336851%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3681236847%_)))
                            (_%$%tl3681436854%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3681236847%_))))
                        (if (gx#identifier? _%$%hd3681336851%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g39031_|
                                 _%$%hd3681336851%_)
                                (if (gx#stx-pair/null? _%$%tl3681436854%_)
                                    (let ((_g39032_
                                           (gx#syntax-split-splice
                                            _%$%tl3681436854%_
                                            '0)))
                                      (begin
                                        (let ((_g39033_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g39032_)
                                                     (##values-length _g39032_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g39033_ 2)))
                                              (error "Context expects 2 values"
                                                     _g39033_)))
                                        (let ((_%$%target3681536857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g39032_ 0)))
                                              (_%$%tl3681736860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g39032_ 1))))
                                          (if (gx#stx-null? _%$%tl3681736860%_)
                                              (letrec ((_%$%loop3681836863%_
                                                        (lambda (_%$%hd3681636867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%handler3682236870%_)
                  (if (gx#stx-pair? _%$%hd3681636867%_)
                      (let ((_%$%e3681936872%_
                             (gx#syntax-e _%$%hd3681636867%_)))
                        (let ((_%$%lp-hd3682036876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3681936872%_)))
                              (_%$%lp-tl3682136879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3681936872%_))))
                          (_%$%loop3681836863%_
                           _%$%lp-tl3682136879%_
                           (cons _%$%lp-hd3682036876%_
                                 _%$%handler3682236870%_))))
                      (let ((_%$%handler3682336882%_
                             (reverse _%$%handler3682236870%_)))
                        ((lambda (_%$%g3681136885%_)
                           (let _%lp36902%_ ((_%rest36905%_ _%$%g3673936777%_)
                                             (_%handlers36907%_
                                              (cons (foldr (lambda (_%$%g3716237165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g3716337168%_)
                     (cons _%$%g3716237165%_ _%$%g3716337168%_))
                   '()
                   _%$%g3681136885%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                             (let* ((_%$%g3691136951%_
                                     (lambda (_%$%g3691236947%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3691236947%_)))
                                    (_%$%g3691036962%_
                                     (lambda (_%$%g3691236955%_)
                                       (if (gx#stx-null? _%$%g3691236955%_)
                                           ((lambda ()
                                              (_%generate-catch36645%_
                                               _%handlers36907%_
                                               (_%generate-thunk36642%_
                                                _%body36734%_))))
                                           (_%$%g3691136951%_
                                            _%$%g3691236955%_))))
                                    (_%$%g3690937077%_
                                     (lambda (_%$%g3691236966%_)
                                       (if (gx#stx-pair? _%$%g3691236966%_)
                                           (let ((_%$%e3693136969%_
                                                  (gx#syntax-e
                                                   _%$%g3691236966%_)))
                                             (let ((_%$%hd3693236973%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e3693136969%_)))
                                                   (_%$%tl3693336976%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e3693136969%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd3693236973%_)
                                                   (let ((_%$%e3693436979%_
                                                          (gx#syntax-e
                                                           _%$%hd3693236973%_)))
                                                     (let ((_%$%hd3693536983%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3693436979%_)))
                                                           (_%$%tl3693636986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3693436979%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd3693536983%_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core/more-sugar[1]#_g39034_|
                                                                _%$%hd3693536983%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl3693636986%_)
                           (let ((_g39035_
                                  (gx#syntax-split-splice
                                   _%$%tl3693636986%_
                                   '0)))
                             (begin
                               (let ((_g39036_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g39035_)
                                            (##values-length _g39035_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g39036_ 2)))
                                     (error "Context expects 2 values"
                                            _g39036_)))
                               (let ((_%$%target3693736989%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39035_ 0)))
                                     (_%$%tl3693936992%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39035_ 1))))
                                 (if (gx#stx-null? _%$%tl3693936992%_)
                                     (letrec ((_%$%loop3694036995%_
                                               (lambda (_%$%hd3693836999%_
                                                        _%$%fini3694437002%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd3693836999%_)
                                                     (let ((_%$%e3694137004%_
                                                            (gx#syntax-e
                                                             _%$%hd3693836999%_)))
                                                       (let ((_%$%lp-hd3694237008%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3694137004%_)))
                     (_%$%lp-tl3694337011%_
                      (let () (declare (not safe)) (##cdr _%$%e3694137004%_))))
                 (_%$%loop3694036995%_
                  _%$%lp-tl3694337011%_
                  (cons _%$%lp-hd3694237008%_ _%$%fini3694437002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%fini3694537014%_
                                                            (reverse _%$%fini3694437002%_)))
                                                       (if (gx#stx-null?
                                                            _%$%tl3693336976%_)
                                                           ((lambda (_%$%g3693037017%_)
                                                              (let* ((_%$%g3703837046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g3703937042%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g3703937042%_)))
                             (_%$%g3703737073%_
                              (lambda (_%$%g3703937050%_)
                                ((lambda (_%$%g3704037053%_)
                                   (_%generate-fini36644%_
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '()
                                                (cons _%$%g3704037053%_ '())))
                                    (foldr (lambda (_%$%g3706437067%_
                                                    _%$%g3706537070%_)
                                             (cons _%$%g3706437067%_
                                                   _%$%g3706537070%_))
                                           '()
                                           _%$%g3693037017%_)))
                                 _%$%g3703937050%_))))
                        (_%$%g3703737073%_
                         (_%generate-catch36645%_
                          _%handlers36907%_
                          (_%generate-thunk36642%_ _%body36734%_)))))
                    _%$%fini3694537014%_)
                   (_%$%g3691036962%_ _%$%g3691236966%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop3694036995%_
                                        _%$%target3693736989%_
                                        '()))
                                     (_%$%g3691036962%_ _%$%g3691236966%_)))))
                           (_%$%g3691036962%_ _%$%g3691236966%_))
                       (_%$%g3691036962%_ _%$%g3691236966%_))
                   (_%$%g3691036962%_ _%$%g3691236966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3691036962%_
                                                    _%$%g3691236966%_))))
                                           (_%$%g3691036962%_
                                            _%$%g3691236966%_))))
                                    (_%$%g3690837159%_
                                     (lambda (_%$%g3691237081%_)
                                       (if (gx#stx-pair? _%$%g3691237081%_)
                                           (let ((_%$%e3691537084%_
                                                  (gx#syntax-e
                                                   _%$%g3691237081%_)))
                                             (let ((_%$%hd3691637088%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e3691537084%_)))
                                                   (_%$%tl3691737091%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e3691537084%_))))
                                               (if (gx#stx-pair?
                                                    _%$%hd3691637088%_)
                                                   (let ((_%$%e3691837094%_
                                                          (gx#syntax-e
                                                           _%$%hd3691637088%_)))
                                                     (let ((_%$%hd3691937098%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3691837094%_)))
                                                           (_%$%tl3692037101%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3691837094%_))))
                                                       (if (gx#identifier?
                                                            _%$%hd3691937098%_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core/more-sugar[1]#_g39037_|
                                                                _%$%hd3691937098%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%tl3692037101%_)
                           (let ((_g39038_
                                  (gx#syntax-split-splice
                                   _%$%tl3692037101%_
                                   '0)))
                             (begin
                               (let ((_g39039_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g39038_)
                                            (##values-length _g39038_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g39039_ 2)))
                                     (error "Context expects 2 values"
                                            _g39039_)))
                               (let ((_%$%target3692137104%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39038_ 0)))
                                     (_%$%tl3692337107%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g39038_ 1))))
                                 (if (gx#stx-null? _%$%tl3692337107%_)
                                     (letrec ((_%$%loop3692437110%_
                                               (lambda (_%$%hd3692237114%_
                                                        _%$%handler3692837117%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd3692237114%_)
                                                     (let ((_%$%e3692537119%_
                                                            (gx#syntax-e
                                                             _%$%hd3692237114%_)))
                                                       (let ((_%$%lp-hd3692637123%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3692537119%_)))
                     (_%$%lp-tl3692737126%_
                      (let () (declare (not safe)) (##cdr _%$%e3692537119%_))))
                 (_%$%loop3692437110%_
                  _%$%lp-tl3692737126%_
                  (cons _%$%lp-hd3692637123%_ _%$%handler3692837117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%handler3692937129%_
                                                            (reverse _%$%handler3692837117%_)))
                                                       ((lambda (_%$%g3691337132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3691437134%_)
                  (_%lp36902%_
                   _%$%g3691337132%_
                   (cons (foldr (lambda (_%$%g3715037153%_ _%$%g3715137156%_)
                                  (cons _%$%g3715037153%_ _%$%g3715137156%_))
                                '()
                                _%$%g3691437134%_)
                         _%handlers36907%_)))
                _%$%tl3691737091%_
                _%$%handler3692937129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop3692437110%_
                                        _%$%target3692137104%_
                                        '()))
                                     (_%$%g3690937077%_ _%$%g3691237081%_)))))
                           (_%$%g3690937077%_ _%$%g3691237081%_))
                       (_%$%g3690937077%_ _%$%g3691237081%_))
                   (_%$%g3690937077%_ _%$%g3691237081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3690937077%_
                                                    _%$%g3691237081%_))))
                                           (_%$%g3690937077%_
                                            _%$%g3691237081%_)))))
                               (_%$%g3690837159%_ _%rest36905%_))))
                         _%$%handler3682336882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop3681836863%_
                                                 _%$%target3681536857%_
                                                 '()))
                                              (_%$%g3679536840%_
                                               _%$%g3679736844%_)))))
                                    (_%$%g3679536840%_ _%$%g3679736844%_))
                                (_%$%g3679536840%_ _%$%g3679736844%_))
                            (_%$%g3679536840%_ _%$%g3679736844%_))))
                    (_%$%g3679536840%_ _%$%g3679736844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3679337239%_
                                                      (lambda (_%$%g3679737175%_)
                                                        (if (gx#stx-pair?
                                                             _%$%g3679737175%_)
                                                            (let ((_%$%e3679937178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%g3679737175%_)))
                      (let ((_%$%hd3680037182%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3679937178%_)))
                            (_%$%tl3680137185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3679937178%_))))
                        (if (gx#identifier? _%$%hd3680037182%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g39040_|
                                 _%$%hd3680037182%_)
                                (if (gx#stx-pair/null? _%$%tl3680137185%_)
                                    (let ((_g39041_
                                           (gx#syntax-split-splice
                                            _%$%tl3680137185%_
                                            '0)))
                                      (begin
                                        (let ((_g39042_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g39041_)
                                                     (##values-length _g39041_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g39042_ 2)))
                                              (error "Context expects 2 values"
                                                     _g39042_)))
                                        (let ((_%$%target3680237188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g39041_ 0)))
                                              (_%$%tl3680437191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g39041_ 1))))
                                          (if (gx#stx-null? _%$%tl3680437191%_)
                                              (letrec ((_%$%loop3680537194%_
                                                        (lambda (_%$%hd3680337198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%fini3680937201%_)
                  (if (gx#stx-pair? _%$%hd3680337198%_)
                      (let ((_%$%e3680637203%_
                             (gx#syntax-e _%$%hd3680337198%_)))
                        (let ((_%$%lp-hd3680737207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3680637203%_)))
                              (_%$%lp-tl3680837210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3680637203%_))))
                          (_%$%loop3680537194%_
                           _%$%lp-tl3680837210%_
                           (cons _%$%lp-hd3680737207%_ _%$%fini3680937201%_))))
                      (let ((_%$%fini3681037213%_
                             (reverse _%$%fini3680937201%_)))
                        ((lambda (_%$%g3679837216%_)
                           (if (gx#stx-null? _%$%g3673936777%_)
                               (_%generate-fini36644%_
                                (_%generate-thunk36642%_ _%body36734%_)
                                (foldr (lambda (_%$%g3723037233%_
                                                _%$%g3723137236%_)
                                         (cons _%$%g3723037233%_
                                               _%$%g3723137236%_))
                                       '()
                                       _%$%g3679837216%_))
                               (gx#raise-syntax-error
                                '#f
                                '"Misplaced finally clause"
                                _%stx36639%_)))
                         _%$%fini3681037213%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop3680537194%_
                                                 _%$%target3680237188%_
                                                 '()))
                                              (_%$%g3679437171%_
                                               _%$%g3679737175%_)))))
                                    (_%$%g3679437171%_ _%$%g3679737175%_))
                                (_%$%g3679437171%_ _%$%g3679737175%_))
                            (_%$%g3679437171%_ _%$%g3679737175%_))))
                    (_%$%g3679437171%_ _%$%g3679737175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g3679337239%_
                                                 _%$%g3674036779%_)))
                                            _%$%tl3674336774%_
                                            _%$%hd3674236771%_)))
                                       (_%$%g3673636760%_
                                        _%$%g3673836764%_)))))
                           (_%$%g3673537243%_ _%rest36732%_))))
                     _%$%e3666136709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop3665636690%_
                                             _%$%target3665336684%_
                                             '()))
                                          (_%$%g3664736667%_
                                           _%$%g3664836671%_)))))
                                (_%$%g3664736667%_ _%$%g3664836671%_))))
                        (_%$%g3664736667%_ _%$%g3664836671%_)))))
            (_%$%g3664637255%_ _%stx36639%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx38055%_)
        (let* ((_%$%g3805938088%_
                (lambda (_%$%g3806038084%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3806038084%_)))
               (_%$%g3805838184%_
                (lambda (_%$%g3806038092%_)
                  (if (gx#stx-pair? _%$%g3806038092%_)
                      (let ((_%$%e3806338095%_
                             (gx#syntax-e _%$%g3806038092%_)))
                        (let ((_%$%hd3806438099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3806338095%_)))
                              (_%$%tl3806538102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3806338095%_))))
                          (if (gx#stx-pair/null? _%$%tl3806538102%_)
                              (let ((_g39043_
                                     (gx#syntax-split-splice
                                      _%$%tl3806538102%_
                                      '0)))
                                (begin
                                  (let ((_g39044_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g39043_)
                                               (##values-length _g39043_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g39044_ 2)))
                                        (error "Context expects 2 values"
                                               _g39044_)))
                                  (let ((_%$%target3806638105%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39043_ 0)))
                                        (_%$%tl3806838108%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39043_ 1))))
                                    (if (gx#stx-null? _%$%tl3806838108%_)
                                        (letrec ((_%$%loop3806938111%_
                                                  (lambda (_%$%hd3806738115%_
                                                           _%$%val3807338118%_
                                                           _%$%key3807438119%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3806738115%_)
                                                        (let ((_%$%e3807038121%_
                                                               (gx#syntax-e
                                                                _%$%hd3806738115%_)))
                                                          (let ((_%$%lp-hd3807138125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3807038121%_)))
                        (_%$%lp-tl3807238128%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3807038121%_))))
                    (if (gx#stx-pair? _%$%lp-hd3807138125%_)
                        (let ((_%$%e3807738131%_
                               (gx#syntax-e _%$%lp-hd3807138125%_)))
                          (let ((_%$%hd3807838135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3807738131%_)))
                                (_%$%tl3807938138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3807738131%_))))
                            (if (gx#stx-pair? _%$%tl3807938138%_)
                                (let ((_%$%e3808038141%_
                                       (gx#syntax-e _%$%tl3807938138%_)))
                                  (let ((_%$%hd3808138145%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3808038141%_)))
                                        (_%$%tl3808238148%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3808038141%_))))
                                    (if (gx#stx-null? _%$%tl3808238148%_)
                                        (_%$%loop3806938111%_
                                         _%$%lp-tl3807238128%_
                                         (cons _%$%hd3808138145%_
                                               _%$%val3807338118%_)
                                         (cons _%$%hd3807838135%_
                                               _%$%key3807438119%_))
                                        (_%$%g3805938088%_
                                         _%$%g3806038092%_))))
                                (_%$%g3805938088%_ _%$%g3806038092%_))))
                        (_%$%g3805938088%_ _%$%g3806038092%_))))
                (let ((_%$%val3807538151%_ (reverse _%$%val3807338118%_))
                      (_%$%key3807638153%_ (reverse _%$%key3807438119%_)))
                  ((lambda (_%$%g3806138155%_ _%$%g3806238157%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%$%g3806138155%_
                                    _%$%g3806238157%_)
                                   (foldr (lambda (_%$%g3817238176%_
                                                   _%$%g3817338179%_
                                                   _%$%g3817438181%_)
                                            (cons (cons _%$%g3817338179%_
                                                        (cons _%$%g3817238176%_
                                                              '()))
                                                  _%$%g3817438181%_))
                                          '()
                                          _%$%g3806138155%_
                                          _%$%g3806238157%_)))))
                   _%$%val3807538151%_
                   _%$%key3807638153%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3806938111%_
                                           _%$%target3806638105%_
                                           '()
                                           '()))
                                        (_%$%g3805938088%_
                                         _%$%g3806038092%_)))))
                              (_%$%g3805938088%_ _%$%g3806038092%_))))
                      (_%$%g3805938088%_ _%$%g3806038092%_)))))
          (_%$%g3805838184%_ _%$stx38055%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx38189%_)
        (let* ((_%$%g3819338222%_
                (lambda (_%$%g3819438218%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3819438218%_)))
               (_%$%g3819238318%_
                (lambda (_%$%g3819438226%_)
                  (if (gx#stx-pair? _%$%g3819438226%_)
                      (let ((_%$%e3819738229%_
                             (gx#syntax-e _%$%g3819438226%_)))
                        (let ((_%$%hd3819838233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3819738229%_)))
                              (_%$%tl3819938236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3819738229%_))))
                          (if (gx#stx-pair/null? _%$%tl3819938236%_)
                              (let ((_g39045_
                                     (gx#syntax-split-splice
                                      _%$%tl3819938236%_
                                      '0)))
                                (begin
                                  (let ((_g39046_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g39045_)
                                               (##values-length _g39045_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g39046_ 2)))
                                        (error "Context expects 2 values"
                                               _g39046_)))
                                  (let ((_%$%target3820038239%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39045_ 0)))
                                        (_%$%tl3820238242%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39045_ 1))))
                                    (if (gx#stx-null? _%$%tl3820238242%_)
                                        (letrec ((_%$%loop3820338245%_
                                                  (lambda (_%$%hd3820138249%_
                                                           _%$%val3820738252%_
                                                           _%$%key3820838253%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3820138249%_)
                                                        (let ((_%$%e3820438255%_
                                                               (gx#syntax-e
                                                                _%$%hd3820138249%_)))
                                                          (let ((_%$%lp-hd3820538259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3820438255%_)))
                        (_%$%lp-tl3820638262%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3820438255%_))))
                    (if (gx#stx-pair? _%$%lp-hd3820538259%_)
                        (let ((_%$%e3821138265%_
                               (gx#syntax-e _%$%lp-hd3820538259%_)))
                          (let ((_%$%hd3821238269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3821138265%_)))
                                (_%$%tl3821338272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3821138265%_))))
                            (if (gx#stx-pair? _%$%tl3821338272%_)
                                (let ((_%$%e3821438275%_
                                       (gx#syntax-e _%$%tl3821338272%_)))
                                  (let ((_%$%hd3821538279%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3821438275%_)))
                                        (_%$%tl3821638282%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3821438275%_))))
                                    (if (gx#stx-null? _%$%tl3821638282%_)
                                        (_%$%loop3820338245%_
                                         _%$%lp-tl3820638262%_
                                         (cons _%$%hd3821538279%_
                                               _%$%val3820738252%_)
                                         (cons _%$%hd3821238269%_
                                               _%$%key3820838253%_))
                                        (_%$%g3819338222%_
                                         _%$%g3819438226%_))))
                                (_%$%g3819338222%_ _%$%g3819438226%_))))
                        (_%$%g3819338222%_ _%$%g3819438226%_))))
                (let ((_%$%val3820938285%_ (reverse _%$%val3820738252%_))
                      (_%$%key3821038287%_ (reverse _%$%key3820838253%_)))
                  ((lambda (_%$%g3819538289%_ _%$%g3819638291%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%$%g3819538289%_
                                    _%$%g3819638291%_)
                                   (foldr (lambda (_%$%g3830638310%_
                                                   _%$%g3830738313%_
                                                   _%$%g3830838315%_)
                                            (cons (cons _%$%g3830738313%_
                                                        (cons _%$%g3830638310%_
                                                              '()))
                                                  _%$%g3830838315%_))
                                          '()
                                          _%$%g3819538289%_
                                          _%$%g3819638291%_)))))
                   _%$%val3820938285%_
                   _%$%key3821038287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3820338245%_
                                           _%$%target3820038239%_
                                           '()
                                           '()))
                                        (_%$%g3819338222%_
                                         _%$%g3819438226%_)))))
                              (_%$%g3819338222%_ _%$%g3819438226%_))))
                      (_%$%g3819338222%_ _%$%g3819438226%_)))))
          (_%$%g3819238318%_ _%$stx38189%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx38323%_)
        (let* ((_%$%g3832738356%_
                (lambda (_%$%g3832838352%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3832838352%_)))
               (_%$%g3832638452%_
                (lambda (_%$%g3832838360%_)
                  (if (gx#stx-pair? _%$%g3832838360%_)
                      (let ((_%$%e3833138363%_
                             (gx#syntax-e _%$%g3832838360%_)))
                        (let ((_%$%hd3833238367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3833138363%_)))
                              (_%$%tl3833338370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3833138363%_))))
                          (if (gx#stx-pair/null? _%$%tl3833338370%_)
                              (let ((_g39047_
                                     (gx#syntax-split-splice
                                      _%$%tl3833338370%_
                                      '0)))
                                (begin
                                  (let ((_g39048_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g39047_)
                                               (##values-length _g39047_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g39048_ 2)))
                                        (error "Context expects 2 values"
                                               _g39048_)))
                                  (let ((_%$%target3833438373%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39047_ 0)))
                                        (_%$%tl3833638376%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39047_ 1))))
                                    (if (gx#stx-null? _%$%tl3833638376%_)
                                        (letrec ((_%$%loop3833738379%_
                                                  (lambda (_%$%hd3833538383%_
                                                           _%$%val3834138386%_
                                                           _%$%key3834238387%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3833538383%_)
                                                        (let ((_%$%e3833838389%_
                                                               (gx#syntax-e
                                                                _%$%hd3833538383%_)))
                                                          (let ((_%$%lp-hd3833938393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3833838389%_)))
                        (_%$%lp-tl3834038396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3833838389%_))))
                    (if (gx#stx-pair? _%$%lp-hd3833938393%_)
                        (let ((_%$%e3834538399%_
                               (gx#syntax-e _%$%lp-hd3833938393%_)))
                          (let ((_%$%hd3834638403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3834538399%_)))
                                (_%$%tl3834738406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3834538399%_))))
                            (if (gx#stx-pair? _%$%tl3834738406%_)
                                (let ((_%$%e3834838409%_
                                       (gx#syntax-e _%$%tl3834738406%_)))
                                  (let ((_%$%hd3834938413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3834838409%_)))
                                        (_%$%tl3835038416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3834838409%_))))
                                    (if (gx#stx-null? _%$%tl3835038416%_)
                                        (_%$%loop3833738379%_
                                         _%$%lp-tl3834038396%_
                                         (cons _%$%hd3834938413%_
                                               _%$%val3834138386%_)
                                         (cons _%$%hd3834638403%_
                                               _%$%key3834238387%_))
                                        (_%$%g3832738356%_
                                         _%$%g3832838360%_))))
                                (_%$%g3832738356%_ _%$%g3832838360%_))))
                        (_%$%g3832738356%_ _%$%g3832838360%_))))
                (let ((_%$%val3834338419%_ (reverse _%$%val3834138386%_))
                      (_%$%key3834438421%_ (reverse _%$%key3834238387%_)))
                  ((lambda (_%$%g3832938423%_ _%$%g3833038425%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%$%g3832938423%_
                                    _%$%g3833038425%_)
                                   (foldr (lambda (_%$%g3844038444%_
                                                   _%$%g3844138447%_
                                                   _%$%g3844238449%_)
                                            (cons (cons _%$%g3844138447%_
                                                        (cons _%$%g3844038444%_
                                                              '()))
                                                  _%$%g3844238449%_))
                                          '()
                                          _%$%g3832938423%_
                                          _%$%g3833038425%_)))))
                   _%$%val3834338419%_
                   _%$%key3834438421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3833738379%_
                                           _%$%target3833438373%_
                                           '()
                                           '()))
                                        (_%$%g3832738356%_
                                         _%$%g3832838360%_)))))
                              (_%$%g3832738356%_ _%$%g3832838360%_))))
                      (_%$%g3832738356%_ _%$%g3832838360%_)))))
          (_%$%g3832638452%_ _%$stx38323%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx38457%_)
        (let* ((_%$%g3846038484%_
                (lambda (_%$%g3846138480%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3846138480%_)))
               (_%$%g3845938725%_
                (lambda (_%$%g3846138488%_)
                  (if (gx#stx-pair? _%$%g3846138488%_)
                      (let ((_%$%e3846438491%_
                             (gx#syntax-e _%$%g3846138488%_)))
                        (let ((_%$%hd3846538495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3846438491%_)))
                              (_%$%tl3846638498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3846438491%_))))
                          (if (gx#stx-pair? _%$%tl3846638498%_)
                              (let ((_%$%e3846738501%_
                                     (gx#syntax-e _%$%tl3846638498%_)))
                                (let ((_%$%hd3846838505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3846738501%_)))
                                      (_%$%tl3846938508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3846738501%_))))
                                  (if (gx#stx-pair/null? _%$%tl3846938508%_)
                                      (let ((_g39049_
                                             (gx#syntax-split-splice
                                              _%$%tl3846938508%_
                                              '0)))
                                        (begin
                                          (let ((_g39050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39049_)
                                                       (##values-length
                                                        _g39049_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39050_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39050_)))
                                          (let ((_%$%target3847038511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39049_ 0)))
                                                (_%$%tl3847238514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39049_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3847238514%_)
                                                (letrec ((_%$%loop3847338517%_
                                                          (lambda (_%$%hd3847138521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry3847738524%_)
                    (if (gx#stx-pair? _%$%hd3847138521%_)
                        (let ((_%$%e3847438526%_
                               (gx#syntax-e _%$%hd3847138521%_)))
                          (let ((_%$%lp-hd3847538530%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3847438526%_)))
                                (_%$%lp-tl3847638533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3847438526%_))))
                            (_%$%loop3847338517%_
                             _%$%lp-tl3847638533%_
                             (cons _%$%lp-hd3847538530%_
                                   _%$%entry3847738524%_))))
                        (let ((_%$%entry3847838536%_
                               (reverse _%$%entry3847738524%_)))
                          ((lambda (_%$%g3846238539%_ _%$%g3846338541%_)
                             (let* ((_%$%g3855938567%_
                                     (lambda (_%$%g3856038563%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3856038563%_)))
                                    (_%$%g3855838713%_
                                     (lambda (_%$%g3856038571%_)
                                       ((lambda (_%$%g3856138574%_)
                                          (let* ((_%$%g3858638612%_
                                                  (lambda (_%$%g3858738608%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g3858738608%_)))
                                                 (_%$%g3858538701%_
                                                  (lambda (_%$%g3858738616%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%g3858738616%_)
                                                        (let ((_g39051_
                                                               (gx#syntax-split-splice
                                                                _%$%g3858738616%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g39052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g39051_)
                                 (##values-length _g39051_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g39052_ 2)))
                          (error "Context expects 2 values" _g39052_)))
                    (let ((_%$%target3859038619%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g39051_ 0)))
                          (_%$%tl3859238622%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g39051_ 1))))
                      (if (gx#stx-null? _%$%tl3859238622%_)
                          (letrec ((_%$%loop3859338625%_
                                    (lambda (_%$%hd3859138629%_
                                             _%$%val3859738632%_
                                             _%$%key3859838633%_)
                                      (if (gx#stx-pair? _%$%hd3859138629%_)
                                          (let ((_%$%e3859438635%_
                                                 (gx#syntax-e
                                                  _%$%hd3859138629%_)))
                                            (let ((_%$%lp-hd3859538639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3859438635%_)))
                                                  (_%$%lp-tl3859638642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3859438635%_))))
                                              (if (gx#stx-pair?
                                                   _%$%lp-hd3859538639%_)
                                                  (let ((_%$%e3860138645%_
                                                         (gx#syntax-e
                                                          _%$%lp-hd3859538639%_)))
                                                    (let ((_%$%hd3860238649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3860138645%_)))
                                                          (_%$%tl3860338652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3860138645%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl3860338652%_)
                                                          (let ((_%$%e3860438655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3860338652%_)))
                    (let ((_%$%hd3860538659%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3860438655%_)))
                          (_%$%tl3860638662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3860438655%_))))
                      (if (gx#stx-null? _%$%tl3860638662%_)
                          (_%$%loop3859338625%_
                           _%$%lp-tl3859638642%_
                           (cons _%$%hd3860538659%_ _%$%val3859738632%_)
                           (cons _%$%hd3860238649%_ _%$%key3859838633%_))
                          (_%$%g3858638612%_ _%$%g3858738616%_))))
                  (_%$%g3858638612%_ _%$%g3858738616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3858638612%_
                                                   _%$%g3858738616%_))))
                                          (let ((_%$%val3859938665%_
                                                 (reverse _%$%val3859738632%_))
                                                (_%$%key3860038667%_
                                                 (reverse _%$%key3859838633%_)))
                                            ((lambda (_%$%g3858838669%_
                                                      _%$%g3858938671%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%$%g3846338541%_
                                     (cons 'size:
                                           (cons _%$%g3856138574%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%$%g3858838669%_
                      _%$%g3858938671%_)
                     (foldr (lambda (_%$%g3868938693%_
                                     _%$%g3869038696%_
                                     _%$%g3869138698%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%$%g3869038696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%g3868938693%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%g3869138698%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%$%g3858838669%_
                            _%$%g3858938671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%val3859938665%_
                                             _%$%key3860038667%_))))))
                            (_%$%loop3859338625%_
                             _%$%target3859038619%_
                             '()
                             '()))
                          (_%$%g3858638612%_ _%$%g3858738616%_)))))
                (_%$%g3858638612%_ _%$%g3858738616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g3858538701%_
                                             (foldr (lambda (_%$%g3870438707%_
                                                             _%$%g3870538710%_)
                                                      (cons _%$%g3870438707%_
                                                            _%$%g3870538710%_))
                                                    '()
                                                    _%$%g3846238539%_))))
                                        _%$%g3856038571%_))))
                               (_%$%g3855838713%_
                                (gx#stx-length
                                 (foldr (lambda (_%$%g3871638719%_
                                                 _%$%g3871738722%_)
                                          (cons _%$%g3871638719%_
                                                _%$%g3871738722%_))
                                        '()
                                        _%$%g3846238539%_)))))
                           _%$%entry3847838536%_
                           _%$%hd3846838505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3847338517%_
                                                   _%$%target3847038511%_
                                                   '()))
                                                (_%$%g3846038484%_
                                                 _%$%g3846138488%_)))))
                                      (_%$%g3846038484%_ _%$%g3846138488%_))))
                              (_%$%g3846038484%_ _%$%g3846138488%_))))
                      (_%$%g3846038484%_ _%$%g3846138488%_)))))
          (_%$%g3845938725%_ _%stx38457%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx38731%_)
        (let* ((_%$%g3873438748%_
                (lambda (_%$%g3873538744%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3873538744%_)))
               (_%$%g3873338820%_
                (lambda (_%$%g3873538752%_)
                  (if (gx#stx-pair? _%$%g3873538752%_)
                      (let ((_%$%e3873738755%_
                             (gx#syntax-e _%$%g3873538752%_)))
                        (let ((_%$%hd3873838759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3873738755%_)))
                              (_%$%tl3873938762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3873738755%_))))
                          (if (gx#stx-pair? _%$%tl3873938762%_)
                              (let ((_%$%e3874038765%_
                                     (gx#syntax-e _%$%tl3873938762%_)))
                                (let ((_%$%hd3874138769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3874038765%_)))
                                      (_%$%tl3874238772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3874038765%_))))
                                  (if (gx#stx-null? _%$%tl3874238772%_)
                                      ((lambda (_%$%g3873638775%_)
                                         (if (gx#stx-string? _%$%g3873638775%_)
                                             (let* ((_%$%g3878938797%_
                                                     (lambda (_%$%g3879038793%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g3879038793%_)))
                                                    (_%$%g3878838816%_
                                                     (lambda (_%$%g3879038801%_)
                                                       ((lambda (_%$%g3879138804%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%$%g3879138804%_ '())))
                _%$%g3879038801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3878838816%_
                                                (string->bytes
                                                 (gx#stx-e
                                                  _%$%g3873638775%_))))
                                             (_%$%g3873438748%_
                                              _%$%g3873538752%_)))
                                       _%$%hd3874138769%_)
                                      (_%$%g3873438748%_ _%$%g3873538752%_))))
                              (_%$%g3873438748%_ _%$%g3873538752%_))))
                      (_%$%g3873438748%_ _%$%g3873538752%_)))))
          (_%$%g3873338820%_ _%stx38731%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx38824%_)
        (let* ((_%$%g3882738841%_
                (lambda (_%$%g3882838837%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3882838837%_)))
               (_%$%g3882638913%_
                (lambda (_%$%g3882838845%_)
                  (if (gx#stx-pair? _%$%g3882838845%_)
                      (let ((_%$%e3883038848%_
                             (gx#syntax-e _%$%g3882838845%_)))
                        (let ((_%$%hd3883138852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3883038848%_)))
                              (_%$%tl3883238855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3883038848%_))))
                          (if (gx#stx-pair? _%$%tl3883238855%_)
                              (let ((_%$%e3883338858%_
                                     (gx#syntax-e _%$%tl3883238855%_)))
                                (let ((_%$%hd3883438862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3883338858%_)))
                                      (_%$%tl3883538865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3883338858%_))))
                                  (if (gx#stx-null? _%$%tl3883538865%_)
                                      ((lambda (_%$%g3882938868%_)
                                         (let* ((_%$%g3888238890%_
                                                 (lambda (_%$%g3888338886%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3888338886%_)))
                                                (_%$%g3888138909%_
                                                 (lambda (_%$%g3888338894%_)
                                                   ((lambda (_%$%g3888438897%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g3888438897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g3888338894%_))))
                                           (_%$%g3888138909%_
                                            (gx#eval-syntax+1
                                             _%$%g3882938868%_))))
                                       _%$%hd3883438862%_)
                                      (_%$%g3882738841%_ _%$%g3882838845%_))))
                              (_%$%g3882738841%_ _%$%g3882838845%_))))
                      (_%$%g3882738841%_ _%$%g3882838845%_)))))
          (_%$%g3882638913%_ _%stx38824%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx38917%_)
        (let* ((_%$%g3892038934%_
                (lambda (_%$%g3892138930%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3892138930%_)))
               (_%$%g3891938975%_
                (lambda (_%$%g3892138938%_)
                  (if (gx#stx-pair? _%$%g3892138938%_)
                      (let ((_%$%e3892338941%_
                             (gx#syntax-e _%$%g3892138938%_)))
                        (let ((_%$%hd3892438945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3892338941%_)))
                              (_%$%tl3892538948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3892338941%_))))
                          (if (gx#stx-pair? _%$%tl3892538948%_)
                              (let ((_%$%e3892638951%_
                                     (gx#syntax-e _%$%tl3892538948%_)))
                                (let ((_%$%hd3892738955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3892638951%_)))
                                      (_%$%tl3892838958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3892638951%_))))
                                  (if (gx#stx-null? _%$%tl3892838958%_)
                                      ((lambda (_%$%g3892238961%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%$%g3892238961%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%$%hd3892738955%_)
                                      (_%$%g3892038934%_ _%$%g3892138938%_))))
                              (_%$%g3892038934%_ _%$%g3892138938%_))))
                      (_%$%g3892038934%_ _%$%g3892138938%_)))))
          (_%$%g3891938975%_ _%stx38917%_))))))
