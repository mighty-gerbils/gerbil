(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770327921)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156752 (list gx#expander::t))
            (__tmp156751 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156752
         '(id depth)
         __tmp156751
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156748%_
        (apply make-instance gx#syntax-pattern::t _%$args156748%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self156734%_ _%stx156735%_)
        (let ((_%self156738%_ _%self156734%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156735%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156201%_)
        (letrec ((_%generate156203%_
                  (lambda (_%e156443%_)
                    (letrec ((_%BUG156445%_
                              (lambda (_%q156610%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156201%_
                                         _%e156443%_
                                         _%q156610%_))))
                             (_%local-pattern-e156446%_
                              (lambda (_%pat156608%_)
                                (let ((__tmp156753
                                       (##structure-ref
                                        _%pat156608%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156753))))
                             (_%getvar156447%_
                              (lambda (_%q156605%_ _%vars156606%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156605%_
                                   _%vars156606%_
                                   _%BUG156445%_))))
                             (_%getarg156448%_
                              (lambda (_%arg156571%_ _%vars156572%_)
                                (let* ((_%arg156573156580%_ _%arg156571%_)
                                       (_%E156575156584%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156573156580%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156576156593%_
                                        (lambda (_%e156587%_ _%tag156588%_)
                                          (let ((_%$e156590%_ _%tag156588%_))
                                            (if (eq? 'ref _%$e156590%_)
                                                (_%getvar156447%_
                                                 _%e156587%_
                                                 _%vars156572%_)
                                                (if (eq? 'pattern _%$e156590%_)
                                                    (_%local-pattern-e156446%_
                                                     _%e156587%_)
                                                    (_%BUG156445%_
                                                     _%arg156571%_)))))))
                                  (if (pair? _%arg156573156580%_)
                                      (let ((_%hd156577156596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156573156580%_)))
                                            (_%tl156578156598%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156573156580%_))))
                                        (let* ((_%tag156601%_
                                                _%hd156577156596%_)
                                               (_%e156603%_
                                                _%tl156578156598%_))
                                          (_%K156576156593%_
                                           _%e156603%_
                                           _%tag156601%_)))
                                      (_%E156575156584%_))))))
                      (let _%recur156450%_ ((_%e156452%_ _%e156443%_)
                                            (_%vars156453%_ '()))
                        (let* ((_%e156454156461%_ _%e156452%_)
                               (_%E156456156465%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156454156461%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156457156559%_
                                (lambda (_%body156468%_ _%tag156469%_)
                                  (let ((_%$e156471%_ _%tag156469%_))
                                    (if (eq? 'datum _%$e156471%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156468%_))
                                        (if (eq? 'term _%$e156471%_)
                                            (let ((_%id156474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156468%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156474%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156477%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156474%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156477%_)
                                                        (let ((__tmp156754
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156468%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156754))
                (let ((__tmp156756
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156468%_)))
                      (__tmp156755
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156468%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156756
                   __tmp156755
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156474%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156468%_))
                                                      (_%BUG156445%_
                                                       _%e156452%_))))
                                            (if (eq? 'pattern _%$e156471%_)
                                                (_%local-pattern-e156446%_
                                                 _%body156468%_)
                                                (if (eq? 'ref _%$e156471%_)
                                                    (_%getvar156447%_
                                                     _%body156468%_
                                                     _%vars156453%_)
                                                    (if (eq? 'cons
                                                             _%$e156471%_)
                                                        (let ((__tmp156758
                                                               (_%recur156450%_
                                                                (car _%body156468%_)
                                                                _%vars156453%_))
                                                              (__tmp156757
                                                               (_%recur156450%_
                                                                (cdr _%body156468%_)
                                                                _%vars156453%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156758
                                                           __tmp156757))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156471%_)
                    (let ((__tmp156759
                           (_%recur156450%_ _%body156468%_ _%vars156453%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156759))
                    (if (eq? 'box _%$e156471%_)
                        (let ((__tmp156760
                               (_%recur156450%_
                                _%body156468%_
                                _%vars156453%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156760))
                        (if (eq? 'splice _%$e156471%_)
                            (let* ((_%body156480156491%_ _%body156468%_)
                                   (_%E156482156495%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156480156491%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156483156533%_
                                    (lambda (_%args156498%_
                                             _%iv156499%_
                                             _%hd156500%_
                                             _%depth156501%_)
                                      (let* ((_%targets156507%_
                                              (map (lambda (_%g156502156504%_)
                                                     (_%getarg156448%_
                                                      _%g156502156504%_
                                                      _%vars156453%_))
                                                   _%args156498%_))
                                             (_%fold-in156509%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156498%_)))
                                             (_%fold-out156511%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156513%_
                                              (let ((__tmp156761
                                                     (cons _%fold-out156511%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156761
                                                 _%fold-in156509%_)))
                                             (_%lambda-body156530%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156501%_ '1))
                                                  (let ((_%r-args156521%_
                                                         (map (lambda (_%arg156515%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156515%_)))
                      _%args156498%_))
                (_%r-vars156522%_
                 (let ((__tmp156762
                        (lambda (_%arg156517%_ _%var156518%_ _%r156519%_)
                          (cons (cons (cdr _%arg156517%_) _%var156518%_)
                                _%r156519%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156762
                    _%vars156453%_
                    _%args156498%_
                    _%fold-in156509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156450%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156501%_ '1))
                         (cons _%hd156500%_
                               (cons (cons 'var _%fold-out156511%_)
                                     _%r-args156521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156522%_))
                                                  (let* ((_%hd-vars156528%_
                                                          (let ((__tmp156763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156524%_ _%var156525%_ _%r156526%_)
                           (cons (cons (cdr _%arg156524%_) _%var156525%_)
                                 _%r156526%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156763
                     _%vars156453%_
                     _%args156498%_
                     _%fold-in156509%_)))
                 (__tmp156764
                  (_%recur156450%_ _%hd156500%_ _%hd-vars156528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156764
                                                     _%fold-out156511%_)))))
                                        (let ((__tmp156768
                                               (if (let ((__tmp156769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156507%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156769 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156507%_))
                                                   '#!void))
                                              (__tmp156765
                                               (let ((__tmp156767
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156513%_
                                                         _%lambda-body156530%_)))
                                                     (__tmp156766
                                                      (_%recur156450%_
                                                       _%iv156499%_
                                                       _%vars156453%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156767
                                                  __tmp156766
                                                  _%targets156507%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156768
                                           __tmp156765))))))
                              (if (pair? _%body156480156491%_)
                                  (let ((_%hd156484156536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156480156491%_)))
                                        (_%tl156485156538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156480156491%_))))
                                    (let ((_%depth156541%_ _%hd156484156536%_))
                                      (if (pair? _%tl156485156538%_)
                                          (let ((_%hd156486156543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156485156538%_)))
                                                (_%tl156487156545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156485156538%_))))
                                            (let ((_%hd156548%_
                                                   _%hd156486156543%_))
                                              (if (pair? _%tl156487156545%_)
                                                  (let ((_%hd156488156550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156487156545%_)))
                                                        (_%tl156489156552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156487156545%_))))
                                                    (let* ((_%iv156555%_
                                                            _%hd156488156550%_)
                                                           (_%args156557%_
                                                            _%tl156489156552%_))
                                                      (_%K156483156533%_
                                                       _%args156557%_
                                                       _%iv156555%_
                                                       _%hd156548%_
                                                       _%depth156541%_)))
                                                  (_%E156482156495%_))))
                                          (_%E156482156495%_))))
                                  (_%E156482156495%_)))
                            (if (eq? 'var _%$e156471%_)
                                _%body156468%_
                                (_%BUG156445%_ _%e156452%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156454156461%_)
                              (let ((_%hd156458156562%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156454156461%_)))
                                    (_%tl156459156564%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156454156461%_))))
                                (let* ((_%tag156567%_ _%hd156458156562%_)
                                       (_%body156569%_ _%tl156459156564%_))
                                  (_%K156457156559%_
                                   _%body156569%_
                                   _%tag156567%_)))
                              (_%E156456156465%_)))))))
                 (_%parse156204%_
                  (lambda (_%e156245%_)
                    (letrec ((_%make-cons156247%_
                              (lambda (_%hd156435%_ _%tl156436%_)
                                (let ((_g156770_ _%hd156435%_)
                                      (_g156772_ _%tl156436%_))
                                  (begin
                                    (let ((_g156771_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156770_)
                                                 (##values-length _g156770_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156771_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156771_)))
                                    (let ((_g156773_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156772_)
                                                 (##values-length _g156772_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156773_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156773_)))
                                    (let ((_%hd-e156438%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156770_ 0)))
                                          (_%hd-vars156439%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156770_ 1))))
                                      (let ((_%tl-e156440%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156772_ 0)))
                                            (_%tl-vars156441%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156772_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156438%_
                                                            _%tl-e156440%_))
                                                (append _%hd-vars156439%_
                                                        _%tl-vars156441%_))))))))
                             (_%make-splice156248%_
                              (lambda (_%where156371%_
                                       _%depth156372%_
                                       _%hd156373%_
                                       _%tl156374%_)
                                (let ((_g156774_ _%hd156373%_)
                                      (_g156776_ _%tl156374%_))
                                  (begin
                                    (let ((_g156775_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156774_)
                                                 (##values-length _g156774_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156775_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156775_)))
                                    (let ((_g156777_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156776_)
                                                 (##values-length _g156776_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156777_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156777_)))
                                    (let ((_%hd-e156376%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156774_ 0)))
                                          (_%hd-vars156377%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156774_ 1))))
                                      (let ((_%tl-e156378%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156776_ 0)))
                                            (_%tl-vars156379%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156776_ 1))))
                                        (let _%lp156381%_ ((_%rest156383%_
                                                            _%hd-vars156377%_)
                                                           (_%targets156384%_
                                                            '())
                                                           (_%vars156385%_
                                                            _%tl-vars156379%_))
                                          (let* ((_%rest156386156396%_
                                                  _%rest156383%_)
                                                 (_%else156388156404%_
                                                  (lambda ()
                                                    (if (null? _%targets156384%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156201%_
                                                           _%where156371%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156372%_
                                    (cons _%hd-e156376%_
                                          (cons _%tl-e156378%_
                                                _%targets156384%_))))
                        _%vars156385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156390156416%_
                                                  (lambda (_%rest156407%_
                                                           _%hd-pat156408%_
                                                           _%hd-depth*156409%_)
                                                    (let ((_%hd-depth156411%_
                                                           (fx- _%hd-depth*156409%_
                                                                _%depth156372%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156411%_))
                                                          (_%lp156381%_
                                                           _%rest156407%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156408%_)
                         _%targets156384%_)
                   (cons (cons _%hd-depth156411%_ _%hd-pat156408%_)
                         _%vars156385%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156411%_))
                      (_%lp156381%_
                       _%rest156407%_
                       (cons (cons 'pattern _%hd-pat156408%_)
                             _%targets156384%_)
                       _%vars156385%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156201%_
                         _%where156371%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156386156396%_)
                                                (let ((_%hd156391156419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156386156396%_)))
                                                      (_%tl156392156421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156386156396%_))))
                                                  (if (pair? _%hd156391156419%_)
                                                      (let ((_%hd156393156424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156391156419%_)))
                    (_%tl156394156426%_
                     (let () (declare (not safe)) (##cdr _%hd156391156419%_))))
                (let* ((_%hd-depth*156429%_ _%hd156393156424%_)
                       (_%hd-pat156431%_ _%tl156394156426%_)
                       (_%rest156433%_ _%tl156392156421%_))
                  (_%K156390156416%_
                   _%rest156433%_
                   _%hd-pat156431%_
                   _%hd-depth*156429%_)))
              (_%else156388156404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156388156404%_))))))))))
                             (_%recur156249%_
                              (lambda (_%e156254%_ _%is-e?156255%_)
                                (if (_%is-e?156255%_ _%e156254%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156201%_))
                                    (if (gx#syntax-local-pattern? _%e156254%_)
                                        (let* ((_%pat156259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156254%_)))
                                               (_%depth156261%_
                                                (##structure-ref
                                                 _%pat156259%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156261%_)
                                              (values (cons 'ref _%pat156259%_)
                                                      (cons (cons _%depth156261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156259%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156259%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156254%_))
                                            (values (cons 'term _%e156254%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156254%_))
                                                (let* ((_%e156265156272%_
                                                        _%e156254%_)
                                                       (_%E156267156276%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156265156272%_))))
                                                       (_%E156266156358%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156265156272%_))
                      (let ((_%e156268156280%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156265156272%_))))
                        (let ((_%hd156269156283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156268156280%_)))
                              (_%tl156270156285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156268156280%_))))
                          (let* ((_%hd156288%_ _%hd156269156283%_)
                                 (_%rest156290%_ _%tl156270156285%_))
                            (if (_%is-e?156255%_ _%hd156288%_)
                                (let* ((_%e156291156298%_ _%rest156290%_)
                                       (_%E156293156302%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156201%_
                                             _%e156254%_))))
                                       (_%E156292156316%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156291156298%_))
                                              (let ((_%e156294156306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156291156298%_))))
                                                (let ((_%hd156295156309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156294156306%_)))
                                                      (_%tl156296156311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156294156306%_))))
                                                  (let ((_%rest156314%_
                                                         _%hd156295156309%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156296156311%_))
                                                        (_%recur156249%_
                                                         _%rest156314%_
                                                         false)
                                                        (_%E156293156302%_)))))
                                              (_%E156293156302%_)))))
                                  (_%E156292156316%_))
                                (let _%lp156320%_ ((_%rest156322%_
                                                    _%rest156290%_)
                                                   (_%depth156323%_ '0))
                                  (let* ((_%e156324156331%_ _%rest156322%_)
                                         (_%E156326156335%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156323%_)
                                                (_%make-splice156248%_
                                                 _%e156254%_
                                                 _%depth156323%_
                                                 (_%recur156249%_
                                                  _%hd156288%_
                                                  _%is-e?156255%_)
                                                 (_%recur156249%_
                                                  _%rest156322%_
                                                  _%is-e?156255%_))
                                                (_%make-cons156247%_
                                                 (_%recur156249%_
                                                  _%hd156288%_
                                                  _%is-e?156255%_)
                                                 (_%recur156249%_
                                                  _%rest156322%_
                                                  _%is-e?156255%_)))))
                                         (_%E156325156354%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156324156331%_))
                                                (let ((_%e156327156339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156324156331%_))))
                                                  (let ((_%hd156328156342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156327156339%_)))
                                                        (_%tl156329156344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156327156339%_))))
                                                    (let* ((_%rest-hd156347%_
                                                            _%hd156328156342%_)
                                                           (_%rest-tl156349%_
                                                            _%tl156329156344%_))
                                                      (if (_%is-e?156255%_
                                                           _%rest-hd156347%_)
                                                          (_%lp156320%_
                                                           _%rest-tl156349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156323%_)
                      (_%make-splice156248%_
                       _%e156254%_
                       _%depth156323%_
                       (_%recur156249%_ _%hd156288%_ _%is-e?156255%_)
                       (_%recur156249%_ _%rest156322%_ _%is-e?156255%_))
                      (_%make-cons156247%_
                       (_%recur156249%_ _%hd156288%_ _%is-e?156255%_)
                       (_%recur156249%_ _%rest156322%_ _%is-e?156255%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156326156335%_)))))
                                    (_%E156325156354%_)))))))
                      (_%E156267156276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156266156358%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156254%_))
                                                    (let ((_g156778_
                                                           (_%recur156249%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156254%_)))
                    _%is-e?156255%_)))
              (begin
                (let ((_g156779_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156778_)
                             (##values-length _g156778_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156779_ 2)))
                      (error "Context expects 2 values" _g156779_)))
                (let ((_%e156363%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156778_ 0)))
                      (_%vars156364%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156778_ 1))))
                  (values (cons 'vector _%e156363%_) _%vars156364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156254%_))
                                                        (let ((_g156780_
                                                               (_%recur156249%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156254%_)))
                        _%is-e?156255%_)))
                  (begin
                    (let ((_g156781_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156780_)
                                 (##values-length _g156780_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156781_ 2)))
                          (error "Context expects 2 values" _g156781_)))
                    (let ((_%e156367%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156780_ 0)))
                          (_%vars156368%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156780_ 1))))
                      (values (cons 'box _%e156367%_) _%vars156368%_))))
                (values (cons 'datum _%e156254%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156782_
                             (_%recur156249%_ _%e156245%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156783_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156782_)
                                       (##values-length _g156782_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156783_ 2)))
                                (error "Context expects 2 values" _g156783_)))
                          (let ((_%tree156251%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156782_ 0)))
                                (_%vars156252%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156782_ 1))))
                            (if (null? _%vars156252%_)
                                _%tree156251%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156201%_
                                   _%vars156252%_))))))))))
          (let* ((_%e156205156215%_ _%stx156201%_)
                 (_%E156207156219%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156201%_))))
                 (_%E156206156241%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156205156215%_))
                        (let ((_%e156208156223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156205156215%_))))
                          (let ((_%hd156209156226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156208156223%_)))
                                (_%tl156210156228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156208156223%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156210156228%_))
                                (let ((_%e156211156231%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156210156228%_))))
                                  (let ((_%hd156212156234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156211156231%_)))
                                        (_%tl156213156236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156211156231%_))))
                                    (let ((_%form156239%_ _%hd156212156234%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156213156236%_))
                                          (let ((__tmp156785
                                                 (_%generate156203%_
                                                  (_%parse156204%_
                                                   _%form156239%_)))
                                                (__tmp156784
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156201%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156785
                                             __tmp156784))
                                          (_%E156207156219%_)))))
                                (_%E156207156219%_))))
                        (_%E156207156219%_)))))
            (_%E156206156241%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155450%_
               _%identifier=?155451%_
               _%unwrap-e155452%_
               _%wrap-e155453%_)
        (letrec ((_%generate-bindings155455%_
                  (lambda (_%target156065%_
                           _%ids156066%_
                           _%clauses156067%_
                           _%clause-ids156068%_
                           _%E156069%_)
                    (letrec ((_%generate1156071%_
                              (lambda (_%clause156168%_
                                       _%clause-id156169%_
                                       _%E156170%_)
                                (cons (cons _%clause-id156169%_ '())
                                      (cons (let ((__tmp156787
                                                   (cons _%target156065%_ '()))
                                                  (__tmp156786
                                                   (_%generate-clause155457%_
                                                    _%target156065%_
                                                    _%ids156066%_
                                                    _%clause156168%_
                                                    _%E156170%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156787
                                               __tmp156786))
                                            '())))))
                      (let _%lp156073%_ ((_%rest156075%_ _%clauses156067%_)
                                         (_%rest-ids156076%_
                                          _%clause-ids156068%_)
                                         (_%bindings156077%_ '()))
                        (let* ((_%rest156078156086%_ _%rest156075%_)
                               (_%else156080156094%_
                                (lambda () _%bindings156077%_))
                               (_%K156082156156%_
                                (lambda (_%rest156097%_ _%clause156098%_)
                                  (let* ((_%rest-ids156099156106%_
                                          _%rest-ids156076%_)
                                         (_%E156101156110%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids156099156106%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K156102156144%_
                                          (lambda (_%rest-ids156113%_
                                                   _%clause-id156114%_)
                                            (let* ((_%rest-ids156115156123%_
                                                    _%rest-ids156113%_)
                                                   (_%else156117156131%_
                                                    (lambda ()
                                                      (cons (_%generate1156071%_
                                                             _%clause156098%_
                                                             _%clause-id156114%_
                                                             _%E156069%_)
                                                            _%bindings156077%_)))
                                                   (_%K156119156136%_
                                                    (lambda (_%next-clause-id156134%_)
                                                      (_%lp156073%_
                                                       _%rest156097%_
                                                       _%rest-ids156113%_
                                                       (cons (_%generate1156071%_
                                                              _%clause156098%_
                                                              _%clause-id156114%_
                                                              _%next-clause-id156134%_)
                                                             _%bindings156077%_)))))
                                              (if (pair? _%rest-ids156115156123%_)
                                                  (let* ((_%hd156120156139%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids156115156123%_)))
                                                         (_%next-clause-id156142%_
                                                          _%hd156120156139%_))
                                                    (_%K156119156136%_
                                                     _%next-clause-id156142%_))
                                                  (_%else156117156131%_))))))
                                    (if (pair? _%rest-ids156099156106%_)
                                        (let ((_%hd156103156147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids156099156106%_)))
                                              (_%tl156104156149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids156099156106%_))))
                                          (let* ((_%clause-id156152%_
                                                  _%hd156103156147%_)
                                                 (_%rest-ids156154%_
                                                  _%tl156104156149%_))
                                            (_%K156102156144%_
                                             _%rest-ids156154%_
                                             _%clause-id156152%_)))
                                        (_%E156101156110%_))))))
                          (if (pair? _%rest156078156086%_)
                              (let ((_%hd156083156159%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest156078156086%_)))
                                    (_%tl156084156161%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest156078156086%_))))
                                (let* ((_%clause156164%_ _%hd156083156159%_)
                                       (_%rest156166%_ _%tl156084156161%_))
                                  (_%K156082156156%_
                                   _%rest156166%_
                                   _%clause156164%_)))
                              (_%else156080156094%_)))))))
                 (_%generate-body155456%_
                  (lambda (_%bindings156025%_ _%body156026%_)
                    (let _%recur156028%_ ((_%rest156030%_ _%bindings156025%_))
                      (let* ((_%rest156031156039%_ _%rest156030%_)
                             (_%else156033156047%_ (lambda () _%body156026%_))
                             (_%K156035156053%_
                              (lambda (_%rest156050%_ _%hd156051%_)
                                (let ((__tmp156789 (cons _%hd156051%_ '()))
                                      (__tmp156788
                                       (_%recur156028%_ _%rest156050%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156789
                                   __tmp156788)))))
                        (if (pair? _%rest156031156039%_)
                            (let ((_%hd156036156056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156031156039%_)))
                                  (_%tl156037156058%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156031156039%_))))
                              (let* ((_%hd156061%_ _%hd156036156056%_)
                                     (_%rest156063%_ _%tl156037156058%_))
                                (_%K156035156053%_
                                 _%rest156063%_
                                 _%hd156061%_)))
                            (_%else156033156047%_))))))
                 (_%generate-clause155457%_
                  (lambda (_%target155888%_
                           _%ids155889%_
                           _%clause155890%_
                           _%E155891%_)
                    (letrec ((_%generate1155893%_
                              (lambda (_%hd155980%_
                                       _%fender155981%_
                                       _%body155982%_)
                                (let ((_g156790_
                                       (_%parse-clause155459%_
                                        _%hd155980%_
                                        _%ids155889%_)))
                                  (begin
                                    (let ((_g156791_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156790_)
                                                 (##values-length _g156790_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156791_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156791_)))
                                    (let ((_%e155984%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156790_ 0)))
                                          (_%mvars155985%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156790_ 1))))
                                      (let* ((_%pvars155987%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars155985%_))))
                                             (_%E155989%_
                                              (cons _%E155891%_
                                                    (cons _%target155888%_
                                                          '())))
                                             (_%K156022%_
                                              (let ((__tmp156792
                                                     (let ((__tmp156794
                                                            (map (lambda (_%mvar155991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar155992%_)
                           (let* ((_%mvar155993156000%_ _%mvar155991%_)
                                  (_%E155995156004%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar155993156000%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K155996156010%_
                                   (lambda (_%depth156007%_ _%id156008%_)
                                     (cons _%id156008%_
                                           (cons (let ((__tmp156796
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id156008%_)))
                                                       (__tmp156795
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar155992%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156796
                                                    __tmp156795
                                                    _%depth156007%_))
                                                 '())))))
                             (if (pair? _%mvar155993156000%_)
                                 (let ((_%hd155997156013%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar155993156000%_)))
                                       (_%tl155998156015%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar155993156000%_))))
                                   (let* ((_%id156018%_ _%hd155997156013%_)
                                          (_%depth156020%_ _%tl155998156015%_))
                                     (_%K155996156010%_
                                      _%depth156020%_
                                      _%id156018%_)))
                                 (_%E155995156004%_))))
                         _%mvars155985%_
                         _%pvars155987%_))
                   (__tmp156793
                    (if (eq? _%fender155981%_ '#t)
                        _%body155982%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender155981%_
                           _%body155982%_
                           _%E155989%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156794 __tmp156793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars155987%_
                                                 __tmp156792))))
                                        (_%generate-match155458%_
                                         _%hd155980%_
                                         _%target155888%_
                                         _%e155984%_
                                         _%mvars155985%_
                                         _%K156022%_
                                         _%E155989%_))))))))
                      (let* ((_%e155894155914%_ _%clause155890%_)
                             (_%E155903155918%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155894155914%_))))
                             (_%E155896155952%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155894155914%_))
                                    (let ((_%e155904155922%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155894155914%_))))
                                      (let ((_%hd155905155925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155904155922%_)))
                                            (_%tl155906155927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155904155922%_))))
                                        (let ((_%hd155930%_
                                               _%hd155905155925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155906155927%_))
                                              (let ((_%e155907155932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155906155927%_))))
                                                (let ((_%hd155908155935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155907155932%_)))
                                                      (_%tl155909155937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155907155932%_))))
                                                  (let ((_%fender155940%_
                                                         _%hd155908155935%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155909155937%_))
                                                        (let ((_%e155910155942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155909155937%_))))
                  (let ((_%hd155911155945%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155910155942%_)))
                        (_%tl155912155947%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155910155942%_))))
                    (let ((_%body155950%_ _%hd155911155945%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155912155947%_))
                          (_%generate1155893%_
                           _%hd155930%_
                           _%fender155940%_
                           _%body155950%_)
                          (_%E155903155918%_)))))
                (_%E155903155918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155903155918%_)))))
                                    (_%E155903155918%_))))
                             (_%E155895155976%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155894155914%_))
                                    (let ((_%e155897155956%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155894155914%_))))
                                      (let ((_%hd155898155959%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155897155956%_)))
                                            (_%tl155899155961%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155897155956%_))))
                                        (let ((_%hd155964%_
                                               _%hd155898155959%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155899155961%_))
                                              (let ((_%e155900155966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155899155961%_))))
                                                (let ((_%hd155901155969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155900155966%_)))
                                                      (_%tl155902155971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155900155966%_))))
                                                  (let ((_%body155974%_
                                                         _%hd155901155969%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155902155971%_))
                                                        (_%generate1155893%_
                                                         _%hd155964%_
                                                         '#t
                                                         _%body155974%_)
                                                        (_%E155896155952%_)))))
                                              (_%E155896155952%_)))))
                                    (_%E155896155952%_)))))
                        (_%E155895155976%_)))))
                 (_%generate-match155458%_
                  (lambda (_%where155637%_
                           _%target155638%_
                           _%hd155639%_
                           _%mvars155640%_
                           _%K155641%_
                           _%E155642%_)
                    (letrec ((_%BUG155644%_
                              (lambda (_%q155886%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155450%_
                                         _%hd155639%_
                                         _%q155886%_))))
                             (_%recur155645%_
                              (lambda (_%e155736%_
                                       _%vars155737%_
                                       _%target155738%_
                                       _%E155739%_
                                       _%k155740%_)
                                (let* ((_%e155741155748%_ _%e155736%_)
                                       (_%E155743155752%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155741155748%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155744155874%_
                                        (lambda (_%body155755%_ _%tag155756%_)
                                          (let ((_%$e155758%_ _%tag155756%_))
                                            (if (eq? 'any _%$e155758%_)
                                                (_%k155740%_ _%vars155737%_)
                                                (if (eq? 'id _%$e155758%_)
                                                    (let ((__tmp156801
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155738%_)))
                                                          (__tmp156797
                                                           (let ((__tmp156799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156800
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155453%_
                                    _%body155755%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155451%_
                             __tmp156800
                             _%target155738%_)))
                         (__tmp156798 (_%k155740%_ _%vars155737%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156799 __tmp156798 _%E155739%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156801 __tmp156797 _%E155739%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155758%_)
                                                        (_%k155740%_
                                                         (cons (cons _%body155755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155738%_)
                       _%vars155737%_))
                (if (eq? 'cons _%$e155758%_)
                    (let ((_%$e155761%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155762%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155763%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156807
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155738%_)))
                            (__tmp156802
                             (let ((__tmp156806
                                    (cons (cons (cons _%$e155761%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155452%_
                                                         _%target155738%_))
                                                      '()))
                                          '()))
                                   (__tmp156803
                                    (let ((__tmp156805
                                           (cons (cons (cons _%$hd155762%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155761%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155761%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156804
                                           (let* ((_%body155764155771%_
                                                   _%body155755%_)
                                                  (_%E155766155775%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155764155771%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155767155783%_
                                                   (lambda (_%tl155778%_
                                                            _%hd155779%_)
                                                     (_%recur155645%_
                                                      _%hd155779%_
                                                      _%vars155737%_
                                                      _%$hd155762%_
                                                      _%E155739%_
                                                      (lambda (_%vars155781%_)
                                                        (_%recur155645%_
                                                         _%tl155778%_
                                                         _%vars155781%_
                                                         _%$tl155763%_
                                                         _%E155739%_
                                                         _%k155740%_))))))
                                             (if (pair? _%body155764155771%_)
                                                 (let ((_%hd155768155786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155764155771%_)))
                                                       (_%tl155769155788%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155764155771%_))))
                                                   (let* ((_%hd155791%_
                                                           _%hd155768155786%_)
                                                          (_%tl155793%_
                                                           _%tl155769155788%_))
                                                     (_%K155767155783%_
                                                      _%tl155793%_
                                                      _%hd155791%_)))
                                                 (_%E155766155775%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156805
                                       __tmp156804))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156806
                                __tmp156803))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156807
                         __tmp156802
                         _%E155739%_)))
                    (if (eq? 'splice _%$e155758%_)
                        (let* ((_%body155794155801%_ _%body155755%_)
                               (_%E155796155805%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155794155801%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155797155856%_
                                (lambda (_%tl155808%_ _%hd155809%_)
                                  (let* ((_%rlen155811%_
                                          (_%splice-rlen155646%_ _%tl155808%_))
                                         (_%$target155813%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155815%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155817%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155819%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155821%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155823%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155825%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155827%_
                                          (_%splice-vars155647%_ _%hd155809%_))
                                         (_%lvars155829%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155827%_)))
                                         (_%tlvars155831%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155827%_)))
                                         (_%linit155835%_
                                          (map (lambda (_%var155833%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155829%_)))
                                    (letrec ((_%make-loop155838%_
                                              (lambda (_%vars155842%_)
                                                (let ((__tmp156809
                                                       (cons (cons (cons _%$lp155819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156822
                                        (cons _%$hd155815%_ _%lvars155829%_))
                                       (__tmp156810
                                        (let ((__tmp156821
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155815%_)))
                                              (__tmp156815
                                               (let ((__tmp156820
                                                      (cons (cons (cons _%$lp-e155821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155452%_
                                   _%$hd155815%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156816
                                                      (let ((__tmp156819
                                                             (cons (cons (cons _%$lp-hd155823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155821%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155825%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155821%_))
                                             '()))
                                 '())))
                    (__tmp156817
                     (_%recur155645%_
                      _%hd155809%_
                      '()
                      _%$lp-hd155823%_
                      _%E155739%_
                      (lambda (_%hdvars155844%_)
                        (cons _%$lp155819%_
                              (cons _%$lp-tl155825%_
                                    (map (lambda (_%svar155846%_
                                                  _%lvar155847%_)
                                           (let ((__tmp156818
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155846%_
                                                     _%hdvars155844%_
                                                     _%BUG155644%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156818
                                              _%lvar155847%_)))
                                         _%svars155827%_
                                         _%lvars155829%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156819 __tmp156817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156820
                                                  __tmp156816)))
                                              (__tmp156811
                                               (let ((__tmp156814
                                                      (map (lambda (_%lvar155849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155850%_)
                     (cons (cons _%tlvar155850%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155849%_))
                                 '())))
                   _%lvars155829%_
                   _%tlvars155831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156812
                                                      (_%k155740%_
                                                       (let ((__tmp156813
                                                              (lambda (_%svar155852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155853%_
                               _%r155854%_)
                        (cons (cons _%svar155852%_ _%tlvar155853%_)
                              _%r155854%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156813
                  _%vars155842%_
                  _%svars155827%_
                  _%tlvars155831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156814
                                                  __tmp156812))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156821
                                           __tmp156815
                                           __tmp156811))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156822
                                    __tmp156810))
                                 '()))
                     '()))
              (__tmp156808
               (cons _%$lp155819%_ (cons _%$target155813%_ _%linit155835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156809
                                                   __tmp156808)))))
                                      (let ((_%body155840%_
                                             (let ((__tmp156824
                                                    (cons (cons (cons _%$target155813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155817%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155738%_
                                 _%rlen155811%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156823
                                                    (_%recur155645%_
                                                     _%tl155808%_
                                                     _%vars155737%_
                                                     _%$tl155817%_
                                                     _%E155739%_
                                                     _%make-loop155838%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156824
                                                __tmp156823))))
                                        (let ((__tmp156828
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155738%_)))
                                              (__tmp156825
                                               (if (zero? _%rlen155811%_)
                                                   _%body155840%_
                                                   (let ((__tmp156826
                                                          (let ((__tmp156827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155738%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156827 _%rlen155811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156826
                                                      _%body155840%_
                                                      _%E155739%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156828
                                           __tmp156825
                                           _%E155739%_))))))))
                          (if (pair? _%body155794155801%_)
                              (let ((_%hd155798155859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155794155801%_)))
                                    (_%tl155799155861%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155794155801%_))))
                                (let* ((_%hd155864%_ _%hd155798155859%_)
                                       (_%tl155866%_ _%tl155799155861%_))
                                  (_%K155797155856%_
                                   _%tl155866%_
                                   _%hd155864%_)))
                              (_%E155796155805%_)))
                        (if (eq? 'null _%$e155758%_)
                            (let ((__tmp156830
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155738%_)))
                                  (__tmp156829 (_%k155740%_ _%vars155737%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156830
                               __tmp156829
                               _%E155739%_))
                            (if (eq? 'vector _%$e155758%_)
                                (let ((_%$e155868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156835
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155738%_)))
                                        (__tmp156831
                                         (let ((__tmp156833
                                                (cons (cons (cons _%$e155868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156834
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155452%_
                                    _%target155738%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156834))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156832
                                                (_%recur155645%_
                                                 _%body155755%_
                                                 _%vars155737%_
                                                 _%$e155868%_
                                                 _%E155739%_
                                                 _%k155740%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156833
                                            __tmp156832))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156835
                                     __tmp156831
                                     _%E155739%_)))
                                (if (eq? 'box _%$e155758%_)
                                    (let ((_%$e155870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156840
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155738%_)))
                                            (__tmp156836
                                             (let ((__tmp156838
                                                    (cons (cons (cons _%$e155870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156839
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155452%_
                                        _%target155738%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156839))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156837
                                                    (_%recur155645%_
                                                     _%body155755%_
                                                     _%vars155737%_
                                                     _%$e155870%_
                                                     _%E155739%_
                                                     _%k155740%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156838
                                                __tmp156837))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156840
                                         __tmp156836
                                         _%E155739%_)))
                                    (if (eq? 'datum _%$e155758%_)
                                        (let ((_%$e155872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156846
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155738%_)))
                                                (__tmp156841
                                                 (let ((__tmp156845
                                                        (cons (cons (cons _%$e155872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155738%_))
                                  '()))
                      '()))
               (__tmp156842
                (let ((__tmp156844
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155872%_ _%body155755%_)))
                      (__tmp156843 (_%k155740%_ _%vars155737%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156844 __tmp156843 _%E155739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156845
                                                    __tmp156842))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156846
                                             __tmp156841
                                             _%E155739%_)))
                                        (_%BUG155644%_
                                         _%e155736%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155741155748%_)
                                      (let ((_%hd155745155877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155741155748%_)))
                                            (_%tl155746155879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155741155748%_))))
                                        (let* ((_%tag155882%_
                                                _%hd155745155877%_)
                                               (_%body155884%_
                                                _%tl155746155879%_))
                                          (_%K155744155874%_
                                           _%body155884%_
                                           _%tag155882%_)))
                                      (_%E155743155752%_)))))
                             (_%splice-rlen155646%_
                              (lambda (_%e155698%_)
                                (let _%lp155700%_ ((_%e155702%_ _%e155698%_)
                                                   (_%n155703%_ '0))
                                  (let* ((_%e155704155711%_ _%e155702%_)
                                         (_%E155706155715%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155704155711%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155707155724%_
                                          (lambda (_%body155718%_
                                                   _%tag155719%_)
                                            (let ((_%$e155721%_ _%tag155719%_))
                                              (if (eq? 'splice _%$e155721%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155450%_
                                                     _%where155637%_))
                                                  (if (eq? 'cons _%$e155721%_)
                                                      (_%lp155700%_
                                                       (cdr _%body155718%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155703%_
                                                                '1)))
                                                      _%n155703%_))))))
                                    (if (pair? _%e155704155711%_)
                                        (let ((_%hd155708155727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155704155711%_)))
                                              (_%tl155709155729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155704155711%_))))
                                          (let* ((_%tag155732%_
                                                  _%hd155708155727%_)
                                                 (_%body155734%_
                                                  _%tl155709155729%_))
                                            (_%K155707155724%_
                                             _%body155734%_
                                             _%tag155732%_)))
                                        (_%E155706155715%_))))))
                             (_%splice-vars155647%_
                              (lambda (_%e155654%_)
                                (let _%recur155656%_ ((_%e155658%_ _%e155654%_)
                                                      (_%vars155659%_ '()))
                                  (let* ((_%e155660155667%_ _%e155658%_)
                                         (_%E155662155671%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155660155667%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155663155686%_
                                          (lambda (_%body155674%_
                                                   _%tag155675%_)
                                            (let ((_%$e155677%_ _%tag155675%_))
                                              (if (eq? 'var _%$e155677%_)
                                                  (cons _%body155674%_
                                                        _%vars155659%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155677%_)
                                                          (eq? 'splice
                                                               _%$e155677%_))
                                                      (_%recur155656%_
                                                       (cdr _%body155674%_)
                                                       (_%recur155656%_
                                                        (car _%body155674%_)
                                                        _%vars155659%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155677%_)
                      (eq? 'box _%$e155677%_))
                  (_%recur155656%_ _%body155674%_ _%vars155659%_)
                  _%vars155659%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155660155667%_)
                                        (let ((_%hd155664155689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155660155667%_)))
                                              (_%tl155665155691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155660155667%_))))
                                          (let* ((_%tag155694%_
                                                  _%hd155664155689%_)
                                                 (_%body155696%_
                                                  _%tl155665155691%_))
                                            (_%K155663155686%_
                                             _%body155696%_
                                             _%tag155694%_)))
                                        (_%E155662155671%_))))))
                             (_%make-body155648%_
                              (lambda (_%vars155650%_)
                                (cons _%K155641%_
                                      (map (lambda (_%mvar155652%_)
                                             (let ((__tmp156847
                                                    (car _%mvar155652%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156847
                                                _%vars155650%_
                                                _%BUG155644%_)))
                                           _%mvars155640%_)))))
                      (_%recur155645%_
                       _%hd155639%_
                       '()
                       _%target155638%_
                       _%E155642%_
                       _%make-body155648%_))))
                 (_%parse-clause155459%_
                  (lambda (_%hd155531%_ _%ids155532%_)
                    (let _%recur155534%_ ((_%e155536%_ _%hd155531%_)
                                          (_%vars155537%_ '())
                                          (_%depth155538%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155536%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155536%_))
                              (values '(any) _%vars155537%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155536%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155450%_
                                     _%hd155531%_))
                                  (if (let ((__tmp156848
                                             (lambda (_%id155543%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155536%_
                                                  _%id155543%_)))))
                                        (declare (not safe))
                                        (__find __tmp156848 _%ids155532%_))
                                      (values (cons 'id _%e155536%_)
                                              _%vars155537%_)
                                      (if (let ((__tmp156849
                                                 (lambda (_%var155546%_)
                                                   (let ((__tmp156850
                                                          (car _%var155546%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155536%_
                                                      __tmp156850)))))
                                            (declare (not safe))
                                            (__find __tmp156849
                                                    _%vars155537%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155450%_
                                             _%e155536%_))
                                          (values (cons 'var _%e155536%_)
                                                  (cons (cons _%e155536%_
                                                              _%depth155538%_)
                                                        _%vars155537%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155536%_))
                              (let* ((_%e155550155557%_ _%e155536%_)
                                     (_%E155552155561%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155550155557%_))))
                                     (_%E155551155622%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155550155557%_))
                                            (let ((_%e155553155565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155550155557%_))))
                                              (let ((_%hd155554155568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155553155565%_)))
                                                    (_%tl155555155570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155553155565%_))))
                                                (let* ((_%hd155573%_
                                                        _%hd155554155568%_)
                                                       (_%rest155575%_
                                                        _%tl155555155570%_)
                                                       (_%make-pair155590%_
                                                        (lambda (_%tag155577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155578%_
                         _%tl155579%_)
                  (let* ((_%hd-depth155581%_
                          (if (eq? _%tag155577%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155538%_ '1))
                              _%depth155538%_))
                         (_g156851_
                          (_%recur155534%_
                           _%hd155578%_
                           _%vars155537%_
                           _%hd-depth155581%_)))
                    (begin
                      (let ((_g156852_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156851_)
                                   (##values-length _g156851_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156852_ 2)))
                            (error "Context expects 2 values" _g156852_)))
                      (let ((_%hd155583%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156851_ 0)))
                            (_%vars155584%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156851_ 1))))
                        (let ((_g156853_
                               (_%recur155534%_
                                _%tl155579%_
                                _%vars155584%_
                                _%depth155538%_)))
                          (begin
                            (let ((_g156854_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156853_)
                                         (##values-length _g156853_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156854_ 2)))
                                  (error "Context expects 2 values"
                                         _g156854_)))
                            (let ((_%tl155586%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156853_ 0)))
                                  (_%vars155587%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156853_ 1))))
                              (values (cons _%tag155577%_
                                            (cons _%hd155583%_ _%tl155586%_))
                                      _%vars155587%_)))))))))
               (_%e155591155598%_ _%rest155575%_)
               (_%E155593155602%_
                (lambda ()
                  (_%make-pair155590%_ 'cons _%hd155573%_ _%rest155575%_)))
               (_%E155592155618%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155591155598%_))
                      (let ((_%e155594155606%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155591155598%_))))
                        (let ((_%hd155595155609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155594155606%_)))
                              (_%tl155596155611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155594155606%_))))
                          (let* ((_%rest-hd155614%_ _%hd155595155609%_)
                                 (_%rest-tl155616%_ _%tl155596155611%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155614%_))
                                (_%make-pair155590%_
                                 'splice
                                 _%hd155573%_
                                 _%rest-tl155616%_)
                                (_%make-pair155590%_
                                 'cons
                                 _%hd155573%_
                                 _%rest155575%_)))))
                      (_%E155593155602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155592155618%_))))
                                            (_%E155552155561%_)))))
                                (_%E155551155622%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155536%_))
                                  (values '(null) _%vars155537%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155536%_))
                                      (let ((_g156855_
                                             (_%recur155534%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155536%_)))
                                              _%vars155537%_
                                              _%depth155538%_)))
                                        (begin
                                          (let ((_g156856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156855_)
                                                       (##values-length
                                                        _g156855_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156856_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156856_)))
                                          (let ((_%e155628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156855_ 0)))
                                                (_%vars155629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156855_
                                                    1))))
                                            (values (cons 'vector _%e155628%_)
                                                    _%vars155629%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155536%_))
                                          (let ((_g156857_
                                                 (_%recur155534%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155536%_)))
                                                  _%vars155537%_
                                                  _%depth155538%_)))
                                            (begin
                                              (let ((_g156858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156857_)
                                                           (##values-length
                                                            _g156857_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156858_)))
                                              (let ((_%e155632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156857_
                                                        0)))
                                                    (_%vars155633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156857_
                                                        1))))
                                                (values (cons 'box _%e155632%_)
                                                        _%vars155633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155536%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155536%_)))
                                                      _%vars155537%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155450%_
                                                 _%e155536%_))))))))))))
          (let* ((_%e155460155473%_ _%stx155450%_)
                 (_%E155462155477%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155460155473%_))))
                 (_%E155461155527%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155460155473%_))
                        (let ((_%e155463155481%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155460155473%_))))
                          (let ((_%hd155464155484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155463155481%_)))
                                (_%tl155465155486%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155463155481%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155465155486%_))
                                (let ((_%e155466155489%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155465155486%_))))
                                  (let ((_%hd155467155492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155466155489%_)))
                                        (_%tl155468155494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155466155489%_))))
                                    (let ((_%expr155497%_ _%hd155467155492%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155468155494%_))
                                          (let ((_%e155469155499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155468155494%_))))
                                            (let ((_%hd155470155502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155469155499%_)))
                                                  (_%tl155471155504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155469155499%_))))
                                              (let* ((_%ids155507%_
                                                      _%hd155470155502%_)
                                                     (_%clauses155509%_
                                                      _%tl155471155504%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155507%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155509%_))
                                                        (let* ((_%ids155514%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155507%_)))
                       (_%clauses155516%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155509%_)))
                       (_%clause-ids155518%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155516%_)))
                       (_%E155520%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155522%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155524%_
                        (if (null? _%clauses155516%_)
                            _%E155520%_
                            (car _%clause-ids155518%_))))
                  (let ((__tmp156860
                         (let ((__tmp156861
                                (let ((__tmp156863
                                       (let ((__tmp156865
                                              (cons (cons (cons _%E155520%_
                                                                '())
                                                          (cons (let ((__tmp156867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155522%_ '()))
                              (__tmp156866
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155522%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156867 __tmp156866))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156864
                                              (_%generate-body155456%_
                                               (_%generate-bindings155455%_
                                                _%target155522%_
                                                _%ids155514%_
                                                _%clauses155516%_
                                                _%clause-ids155518%_
                                                _%E155520%_)
                                               (cons _%first155524%_
                                                     (cons _%expr155497%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156865
                                          __tmp156864)))
                                      (__tmp156862
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155450%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156863
                                   __tmp156862))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156861)))
                        (__tmp156859
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155450%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156860 __tmp156859)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155450%_
                                                       _%ids155507%_))))))
                                          (_%E155462155477%_)))))
                                (_%E155462155477%_))))
                        (_%E155462155477%_)))))
            (_%E155461155527%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156175%_)
        (let* ((_%identifier=?156177%_ 'free-identifier=?)
               (_%unwrap-e156179%_ 'syntax-e)
               (_%wrap-e156181%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156175%_
           _%identifier=?156177%_
           _%unwrap-e156179%_
           _%wrap-e156181%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156183%_ _%identifier=?156184%_)
        (let* ((_%unwrap-e156186%_ 'syntax-e) (_%wrap-e156188%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156183%_
           _%identifier=?156184%_
           _%unwrap-e156186%_
           _%wrap-e156188%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156190%_ _%identifier=?156191%_ _%unwrap-e156192%_)
        (let ((_%wrap-e156194%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156190%_
           _%identifier=?156191%_
           _%unwrap-e156192%_
           _%wrap-e156194%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156868_
        (let ((_g156869_ (let () (declare (not safe)) (##length _g156868_))))
          (cond ((let () (declare (not safe)) (##fx= _g156869_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156868_))
                ((let () (declare (not safe)) (##fx= _g156869_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156868_))
                ((let () (declare (not safe)) (##fx= _g156869_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156868_))
                ((let () (declare (not safe)) (##fx= _g156869_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156868_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155447%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155447%_))
            (let ((__tmp156870
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155447%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156870 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155405%_ . _%rest155406%_)
        (let ((_%len155408%_ (length _%hd155405%_)))
          (let _%lp155410%_ ((_%rest155412%_ _%rest155406%_))
            (let* ((_%rest155413155421%_ _%rest155412%_)
                   (_%else155415155429%_ (lambda () '#!void))
                   (_%K155417155435%_
                    (lambda (_%rest155432%_ _%hd155433%_)
                      (if (let ((__tmp156871 (length _%hd155433%_)))
                            (declare (not safe))
                            (##fx= _%len155408%_ __tmp156871))
                          (_%lp155410%_ _%rest155432%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155433%_))))))
              (if (pair? _%rest155413155421%_)
                  (let ((_%hd155418155438%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155413155421%_)))
                        (_%tl155419155440%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155413155421%_))))
                    (let* ((_%hd155443%_ _%hd155418155438%_)
                           (_%rest155445%_ _%tl155419155440%_))
                      (_%K155417155435%_ _%rest155445%_ _%hd155443%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155355%_ _%n155356%_)
        (let _%lp155358%_ ((_%rest155361%_ _%stx155355%_) (_%r155363%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155361%_))
              (let* ((_%g155365155372%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155361%_)))
                     (_%E155367155376%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155365155372%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155368155383%_
                      (lambda (_%rest155379%_ _%hd155380%_)
                        (_%lp155358%_
                         _%rest155379%_
                         (cons _%hd155380%_ _%r155363%_)))))
                (if (pair? _%g155365155372%_)
                    (let ((_%hd155369155386%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155365155372%_)))
                          (_%tl155370155388%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155365155372%_))))
                      (let* ((_%hd155391%_ _%hd155369155386%_)
                             (_%rest155393%_ _%tl155370155388%_))
                        (_%K155368155383%_ _%rest155393%_ _%hd155391%_)))
                    (_%E155367155376%_)))
              (let _%lp155395%_ ((_%n155397%_ _%n155356%_)
                                 (_%l155398%_ _%r155363%_)
                                 (_%r155400%_ _%rest155361%_))
                (if (null? _%l155398%_)
                    (values _%l155398%_ _%r155400%_)
                    (if (fxpositive? _%n155397%_)
                        (_%lp155395%_
                         (let () (declare (not safe)) (##fx- _%n155397%_ '1))
                         (cdr _%l155398%_)
                         (cons (car _%l155398%_) _%r155400%_))
                        (values (reverse! _%l155398%_) _%r155400%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155305%_ _%n155306%_)
        (let _%lp155308%_ ((_%rest155311%_ _%stx155305%_) (_%r155313%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155311%_))
              (let* ((_%g155315155322%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155311%_)))
                     (_%E155317155326%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155315155322%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155318155333%_
                      (lambda (_%rest155329%_ _%hd155330%_)
                        (_%lp155308%_
                         _%rest155329%_
                         (cons _%hd155330%_ _%r155313%_)))))
                (if (pair? _%g155315155322%_)
                    (let ((_%hd155319155336%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155315155322%_)))
                          (_%tl155320155338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155315155322%_))))
                      (let* ((_%hd155341%_ _%hd155319155336%_)
                             (_%rest155343%_ _%tl155320155338%_))
                        (_%K155318155333%_ _%rest155343%_ _%hd155341%_)))
                    (_%E155317155326%_)))
              (let _%lp155345%_ ((_%n155347%_ _%n155306%_)
                                 (_%l155348%_ _%r155313%_)
                                 (_%r155350%_ _%rest155311%_))
                (if (null? _%l155348%_)
                    (vector _%l155348%_ _%r155350%_)
                    (if (fxpositive? _%n155347%_)
                        (_%lp155345%_
                         (let () (declare (not safe)) (##fx- _%n155347%_ '1))
                         (cdr _%l155348%_)
                         (cons (car _%l155348%_) _%r155350%_))
                        (vector (reverse! _%l155348%_) _%r155350%_))))))))))
