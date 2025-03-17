(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1742226232)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp134165 (list gx#expander::t))
            (__tmp134164 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp134165
         '(id depth)
         __tmp134164
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args134161%_
        (apply make-instance gx#syntax-pattern::t _%$args134161%_)))
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
      (lambda (_%self132614134145%_ _%stx134147%_)
        (let* ((_%self134149%_ _%self132614134145%_)
               (_%self134151%_ _%self134149%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx134147%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133612%_)
        (letrec ((_%generate133614%_
                  (lambda (_%e133854%_)
                    (letrec ((_%BUG133856%_
                              (lambda (_%q134021%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133612%_
                                         _%e133854%_
                                         _%q134021%_))))
                             (_%local-pattern-e133857%_
                              (lambda (_%pat134019%_)
                                (let ((__tmp134166
                                       (##structure-ref
                                        _%pat134019%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp134166))))
                             (_%getvar133858%_
                              (lambda (_%q134016%_ _%vars134017%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q134016%_
                                   _%vars134017%_
                                   _%BUG133856%_))))
                             (_%getarg133859%_
                              (lambda (_%arg133982%_ _%vars133983%_)
                                (let* ((_%arg133984133991%_ _%arg133982%_)
                                       (_%E133986133995%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133984133991%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133987134004%_
                                        (lambda (_%e133998%_ _%tag133999%_)
                                          (let ((_%$e134001%_ _%tag133999%_))
                                            (if (eq? 'ref _%$e134001%_)
                                                (_%getvar133858%_
                                                 _%e133998%_
                                                 _%vars133983%_)
                                                (if (eq? 'pattern _%$e134001%_)
                                                    (_%local-pattern-e133857%_
                                                     _%e133998%_)
                                                    (_%BUG133856%_
                                                     _%arg133982%_)))))))
                                  (if (pair? _%arg133984133991%_)
                                      (let ((_%hd133988134007%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133984133991%_)))
                                            (_%tl133989134009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133984133991%_))))
                                        (let* ((_%tag134012%_
                                                _%hd133988134007%_)
                                               (_%e134014%_
                                                _%tl133989134009%_))
                                          (_%K133987134004%_
                                           _%e134014%_
                                           _%tag134012%_)))
                                      (_%E133986133995%_))))))
                      (let _%recur133861%_ ((_%e133863%_ _%e133854%_)
                                            (_%vars133864%_ '()))
                        (let* ((_%e133865133872%_ _%e133863%_)
                               (_%E133867133876%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133865133872%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133868133970%_
                                (lambda (_%body133879%_ _%tag133880%_)
                                  (let ((_%$e133882%_ _%tag133880%_))
                                    (if (eq? 'datum _%$e133882%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133879%_))
                                        (if (eq? 'term _%$e133882%_)
                                            (let ((_%id133885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133879%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133885%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133885%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133888%_)
                                                        (let ((__tmp134167
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133879%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp134167))
                (let ((__tmp134169
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133879%_)))
                      (__tmp134168
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133879%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp134169
                   __tmp134168
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133885%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133879%_))
                                                      (_%BUG133856%_
                                                       _%e133863%_))))
                                            (if (eq? 'pattern _%$e133882%_)
                                                (_%local-pattern-e133857%_
                                                 _%body133879%_)
                                                (if (eq? 'ref _%$e133882%_)
                                                    (_%getvar133858%_
                                                     _%body133879%_
                                                     _%vars133864%_)
                                                    (if (eq? 'cons
                                                             _%$e133882%_)
                                                        (let ((__tmp134171
                                                               (_%recur133861%_
                                                                (car _%body133879%_)
                                                                _%vars133864%_))
                                                              (__tmp134170
                                                               (_%recur133861%_
                                                                (cdr _%body133879%_)
                                                                _%vars133864%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp134171
                                                           __tmp134170))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133882%_)
                    (let ((__tmp134172
                           (_%recur133861%_ _%body133879%_ _%vars133864%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp134172))
                    (if (eq? 'box _%$e133882%_)
                        (let ((__tmp134173
                               (_%recur133861%_
                                _%body133879%_
                                _%vars133864%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp134173))
                        (if (eq? 'splice _%$e133882%_)
                            (let* ((_%body133891133902%_ _%body133879%_)
                                   (_%E133893133906%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133891133902%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133894133944%_
                                    (lambda (_%args133909%_
                                             _%iv133910%_
                                             _%hd133911%_
                                             _%depth133912%_)
                                      (let* ((_%targets133918%_
                                              (map (lambda (_%g133913133915%_)
                                                     (_%getarg133859%_
                                                      _%g133913133915%_
                                                      _%vars133864%_))
                                                   _%args133909%_))
                                             (_%fold-in133920%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133909%_)))
                                             (_%fold-out133922%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133924%_
                                              (let ((__tmp134174
                                                     (cons _%fold-out133922%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp134174
                                                 _%fold-in133920%_)))
                                             (_%lambda-body133941%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133912%_ '1))
                                                  (let ((_%r-args133932%_
                                                         (map (lambda (_%arg133926%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133926%_)))
                      _%args133909%_))
                (_%r-vars133933%_
                 (let ((__tmp134175
                        (lambda (_%arg133928%_ _%var133929%_ _%r133930%_)
                          (cons (cons (cdr _%arg133928%_) _%var133929%_)
                                _%r133930%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp134175
                    _%vars133864%_
                    _%args133909%_
                    _%fold-in133920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133861%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133912%_ '1))
                         (cons _%hd133911%_
                               (cons (cons 'var _%fold-out133922%_)
                                     _%r-args133932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133933%_))
                                                  (let* ((_%hd-vars133939%_
                                                          (let ((__tmp134176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133935%_ _%var133936%_ _%r133937%_)
                           (cons (cons (cdr _%arg133935%_) _%var133936%_)
                                 _%r133937%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp134176
                     _%vars133864%_
                     _%args133909%_
                     _%fold-in133920%_)))
                 (__tmp134177
                  (_%recur133861%_ _%hd133911%_ _%hd-vars133939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp134177
                                                     _%fold-out133922%_)))))
                                        (let ((__tmp134181
                                               (if (let ((__tmp134182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133918%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp134182 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133918%_))
                                                   '#!void))
                                              (__tmp134178
                                               (let ((__tmp134180
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133924%_
                                                         _%lambda-body133941%_)))
                                                     (__tmp134179
                                                      (_%recur133861%_
                                                       _%iv133910%_
                                                       _%vars133864%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp134180
                                                  __tmp134179
                                                  _%targets133918%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp134181
                                           __tmp134178))))))
                              (if (pair? _%body133891133902%_)
                                  (let ((_%hd133895133947%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133891133902%_)))
                                        (_%tl133896133949%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133891133902%_))))
                                    (let ((_%depth133952%_ _%hd133895133947%_))
                                      (if (pair? _%tl133896133949%_)
                                          (let ((_%hd133897133954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133896133949%_)))
                                                (_%tl133898133956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133896133949%_))))
                                            (let ((_%hd133959%_
                                                   _%hd133897133954%_))
                                              (if (pair? _%tl133898133956%_)
                                                  (let ((_%hd133899133961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133898133956%_)))
                                                        (_%tl133900133963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133898133956%_))))
                                                    (let* ((_%iv133966%_
                                                            _%hd133899133961%_)
                                                           (_%args133968%_
                                                            _%tl133900133963%_))
                                                      (_%K133894133944%_
                                                       _%args133968%_
                                                       _%iv133966%_
                                                       _%hd133959%_
                                                       _%depth133952%_)))
                                                  (_%E133893133906%_))))
                                          (_%E133893133906%_))))
                                  (_%E133893133906%_)))
                            (if (eq? 'var _%$e133882%_)
                                _%body133879%_
                                (_%BUG133856%_ _%e133863%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133865133872%_)
                              (let ((_%hd133869133973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133865133872%_)))
                                    (_%tl133870133975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133865133872%_))))
                                (let* ((_%tag133978%_ _%hd133869133973%_)
                                       (_%body133980%_ _%tl133870133975%_))
                                  (_%K133868133970%_
                                   _%body133980%_
                                   _%tag133978%_)))
                              (_%E133867133876%_)))))))
                 (_%parse133615%_
                  (lambda (_%e133656%_)
                    (letrec ((_%make-cons133658%_
                              (lambda (_%hd133846%_ _%tl133847%_)
                                (let ((_g134183_ _%hd133846%_)
                                      (_g134185_ _%tl133847%_))
                                  (begin
                                    (let ((_g134184_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134183_)
                                                 (##values-length _g134183_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134184_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134184_)))
                                    (let ((_g134186_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134185_)
                                                 (##values-length _g134185_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134186_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134186_)))
                                    (let ((_%hd-e133849%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134183_ 0)))
                                          (_%hd-vars133850%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134183_ 1))))
                                      (let ((_%tl-e133851%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134185_ 0)))
                                            (_%tl-vars133852%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134185_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133849%_
                                                            _%tl-e133851%_))
                                                (append _%hd-vars133850%_
                                                        _%tl-vars133852%_))))))))
                             (_%make-splice133659%_
                              (lambda (_%where133782%_
                                       _%depth133783%_
                                       _%hd133784%_
                                       _%tl133785%_)
                                (let ((_g134187_ _%hd133784%_)
                                      (_g134189_ _%tl133785%_))
                                  (begin
                                    (let ((_g134188_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134187_)
                                                 (##values-length _g134187_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134188_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134188_)))
                                    (let ((_g134190_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134189_)
                                                 (##values-length _g134189_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134190_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134190_)))
                                    (let ((_%hd-e133787%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134187_ 0)))
                                          (_%hd-vars133788%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134187_ 1))))
                                      (let ((_%tl-e133789%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134189_ 0)))
                                            (_%tl-vars133790%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134189_ 1))))
                                        (let _%lp133792%_ ((_%rest133794%_
                                                            _%hd-vars133788%_)
                                                           (_%targets133795%_
                                                            '())
                                                           (_%vars133796%_
                                                            _%tl-vars133790%_))
                                          (let* ((_%rest133797133807%_
                                                  _%rest133794%_)
                                                 (_%else133799133815%_
                                                  (lambda ()
                                                    (if (null? _%targets133795%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133612%_
                                                           _%where133782%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133783%_
                                    (cons _%hd-e133787%_
                                          (cons _%tl-e133789%_
                                                _%targets133795%_))))
                        _%vars133796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133801133827%_
                                                  (lambda (_%rest133818%_
                                                           _%hd-pat133819%_
                                                           _%hd-depth*133820%_)
                                                    (let ((_%hd-depth133822%_
                                                           (fx- _%hd-depth*133820%_
                                                                _%depth133783%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133822%_))
                                                          (_%lp133792%_
                                                           _%rest133818%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133819%_)
                         _%targets133795%_)
                   (cons (cons _%hd-depth133822%_ _%hd-pat133819%_)
                         _%vars133796%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133822%_))
                      (_%lp133792%_
                       _%rest133818%_
                       (cons (cons 'pattern _%hd-pat133819%_)
                             _%targets133795%_)
                       _%vars133796%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133612%_
                         _%where133782%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133797133807%_)
                                                (let ((_%hd133802133830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133797133807%_)))
                                                      (_%tl133803133832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133797133807%_))))
                                                  (if (pair? _%hd133802133830%_)
                                                      (let ((_%hd133804133835%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133802133830%_)))
                    (_%tl133805133837%_
                     (let () (declare (not safe)) (##cdr _%hd133802133830%_))))
                (let* ((_%hd-depth*133840%_ _%hd133804133835%_)
                       (_%hd-pat133842%_ _%tl133805133837%_)
                       (_%rest133844%_ _%tl133803133832%_))
                  (_%K133801133827%_
                   _%rest133844%_
                   _%hd-pat133842%_
                   _%hd-depth*133840%_)))
              (_%else133799133815%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133799133815%_))))))))))
                             (_%recur133660%_
                              (lambda (_%e133665%_ _%is-e?133666%_)
                                (if (_%is-e?133666%_ _%e133665%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133612%_))
                                    (if (gx#syntax-local-pattern? _%e133665%_)
                                        (let* ((_%pat133670%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133665%_)))
                                               (_%depth133672%_
                                                (##structure-ref
                                                 _%pat133670%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133672%_)
                                              (values (cons 'ref _%pat133670%_)
                                                      (cons (cons _%depth133672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133670%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133670%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133665%_))
                                            (values (cons 'term _%e133665%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133665%_))
                                                (let* ((_%e133676133683%_
                                                        _%e133665%_)
                                                       (_%E133678133687%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133676133683%_))))
                                                       (_%E133677133769%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133676133683%_))
                      (let ((_%e133679133691%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133676133683%_))))
                        (let ((_%hd133680133694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133679133691%_)))
                              (_%tl133681133696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133679133691%_))))
                          (let* ((_%hd133699%_ _%hd133680133694%_)
                                 (_%rest133701%_ _%tl133681133696%_))
                            (if (_%is-e?133666%_ _%hd133699%_)
                                (let* ((_%e133702133709%_ _%rest133701%_)
                                       (_%E133704133713%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133612%_
                                             _%e133665%_))))
                                       (_%E133703133727%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133702133709%_))
                                              (let ((_%e133705133717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133702133709%_))))
                                                (let ((_%hd133706133720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133705133717%_)))
                                                      (_%tl133707133722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133705133717%_))))
                                                  (let ((_%rest133725%_
                                                         _%hd133706133720%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133707133722%_))
                                                        (_%recur133660%_
                                                         _%rest133725%_
                                                         false)
                                                        (_%E133704133713%_)))))
                                              (_%E133704133713%_)))))
                                  (_%E133703133727%_))
                                (let _%lp133731%_ ((_%rest133733%_
                                                    _%rest133701%_)
                                                   (_%depth133734%_ '0))
                                  (let* ((_%e133735133742%_ _%rest133733%_)
                                         (_%E133737133746%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133734%_)
                                                (_%make-splice133659%_
                                                 _%e133665%_
                                                 _%depth133734%_
                                                 (_%recur133660%_
                                                  _%hd133699%_
                                                  _%is-e?133666%_)
                                                 (_%recur133660%_
                                                  _%rest133733%_
                                                  _%is-e?133666%_))
                                                (_%make-cons133658%_
                                                 (_%recur133660%_
                                                  _%hd133699%_
                                                  _%is-e?133666%_)
                                                 (_%recur133660%_
                                                  _%rest133733%_
                                                  _%is-e?133666%_)))))
                                         (_%E133736133765%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133735133742%_))
                                                (let ((_%e133738133750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133735133742%_))))
                                                  (let ((_%hd133739133753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133738133750%_)))
                                                        (_%tl133740133755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133738133750%_))))
                                                    (let* ((_%rest-hd133758%_
                                                            _%hd133739133753%_)
                                                           (_%rest-tl133760%_
                                                            _%tl133740133755%_))
                                                      (if (_%is-e?133666%_
                                                           _%rest-hd133758%_)
                                                          (_%lp133731%_
                                                           _%rest-tl133760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133734%_)
                      (_%make-splice133659%_
                       _%e133665%_
                       _%depth133734%_
                       (_%recur133660%_ _%hd133699%_ _%is-e?133666%_)
                       (_%recur133660%_ _%rest133733%_ _%is-e?133666%_))
                      (_%make-cons133658%_
                       (_%recur133660%_ _%hd133699%_ _%is-e?133666%_)
                       (_%recur133660%_ _%rest133733%_ _%is-e?133666%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133737133746%_)))))
                                    (_%E133736133765%_)))))))
                      (_%E133678133687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133677133769%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133665%_))
                                                    (let ((_g134191_
                                                           (_%recur133660%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133665%_)))
                    _%is-e?133666%_)))
              (begin
                (let ((_g134192_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g134191_)
                             (##values-length _g134191_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134192_ 2)))
                      (error "Context expects 2 values" _g134192_)))
                (let ((_%e133774%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134191_ 0)))
                      (_%vars133775%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134191_ 1))))
                  (values (cons 'vector _%e133774%_) _%vars133775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133665%_))
                                                        (let ((_g134193_
                                                               (_%recur133660%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133665%_)))
                        _%is-e?133666%_)))
                  (begin
                    (let ((_g134194_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g134193_)
                                 (##values-length _g134193_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g134194_ 2)))
                          (error "Context expects 2 values" _g134194_)))
                    (let ((_%e133778%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134193_ 0)))
                          (_%vars133779%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134193_ 1))))
                      (values (cons 'box _%e133778%_) _%vars133779%_))))
                (values (cons 'datum _%e133665%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g134195_
                             (_%recur133660%_ _%e133656%_ gx#ellipsis?)))
                        (begin
                          (let ((_g134196_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g134195_)
                                       (##values-length _g134195_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g134196_ 2)))
                                (error "Context expects 2 values" _g134196_)))
                          (let ((_%tree133662%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134195_ 0)))
                                (_%vars133663%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134195_ 1))))
                            (if (null? _%vars133663%_)
                                _%tree133662%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133612%_
                                   _%vars133663%_))))))))))
          (let* ((_%e133616133626%_ _%stx133612%_)
                 (_%E133618133630%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133612%_))))
                 (_%E133617133652%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133616133626%_))
                        (let ((_%e133619133634%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133616133626%_))))
                          (let ((_%hd133620133637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133619133634%_)))
                                (_%tl133621133639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133619133634%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133621133639%_))
                                (let ((_%e133622133642%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133621133639%_))))
                                  (let ((_%hd133623133645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133622133642%_)))
                                        (_%tl133624133647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133622133642%_))))
                                    (let ((_%form133650%_ _%hd133623133645%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133624133647%_))
                                          (let ((__tmp134198
                                                 (_%generate133614%_
                                                  (_%parse133615%_
                                                   _%form133650%_)))
                                                (__tmp134197
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133612%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp134198
                                             __tmp134197))
                                          (_%E133618133630%_)))))
                                (_%E133618133630%_))))
                        (_%E133618133630%_)))))
            (_%E133617133652%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132861%_
               _%identifier=?132862%_
               _%unwrap-e132863%_
               _%wrap-e132864%_)
        (letrec ((_%generate-bindings132866%_
                  (lambda (_%target133476%_
                           _%ids133477%_
                           _%clauses133478%_
                           _%clause-ids133479%_
                           _%E133480%_)
                    (letrec ((_%generate1133482%_
                              (lambda (_%clause133579%_
                                       _%clause-id133580%_
                                       _%E133581%_)
                                (cons (cons _%clause-id133580%_ '())
                                      (cons (let ((__tmp134200
                                                   (cons _%target133476%_ '()))
                                                  (__tmp134199
                                                   (_%generate-clause132868%_
                                                    _%target133476%_
                                                    _%ids133477%_
                                                    _%clause133579%_
                                                    _%E133581%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp134200
                                               __tmp134199))
                                            '())))))
                      (let _%lp133484%_ ((_%rest133486%_ _%clauses133478%_)
                                         (_%rest-ids133487%_
                                          _%clause-ids133479%_)
                                         (_%bindings133488%_ '()))
                        (let* ((_%rest133489133497%_ _%rest133486%_)
                               (_%else133491133505%_
                                (lambda () _%bindings133488%_))
                               (_%K133493133567%_
                                (lambda (_%rest133508%_ _%clause133509%_)
                                  (let* ((_%rest-ids133510133517%_
                                          _%rest-ids133487%_)
                                         (_%E133512133521%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133510133517%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133513133555%_
                                          (lambda (_%rest-ids133524%_
                                                   _%clause-id133525%_)
                                            (let* ((_%rest-ids133526133534%_
                                                    _%rest-ids133524%_)
                                                   (_%else133528133542%_
                                                    (lambda ()
                                                      (cons (_%generate1133482%_
                                                             _%clause133509%_
                                                             _%clause-id133525%_
                                                             _%E133480%_)
                                                            _%bindings133488%_)))
                                                   (_%K133530133547%_
                                                    (lambda (_%next-clause-id133545%_)
                                                      (_%lp133484%_
                                                       _%rest133508%_
                                                       _%rest-ids133524%_
                                                       (cons (_%generate1133482%_
                                                              _%clause133509%_
                                                              _%clause-id133525%_
                                                              _%next-clause-id133545%_)
                                                             _%bindings133488%_)))))
                                              (if (pair? _%rest-ids133526133534%_)
                                                  (let* ((_%hd133531133550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133526133534%_)))
                                                         (_%next-clause-id133553%_
                                                          _%hd133531133550%_))
                                                    (_%K133530133547%_
                                                     _%next-clause-id133553%_))
                                                  (_%else133528133542%_))))))
                                    (if (pair? _%rest-ids133510133517%_)
                                        (let ((_%hd133514133558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133510133517%_)))
                                              (_%tl133515133560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133510133517%_))))
                                          (let* ((_%clause-id133563%_
                                                  _%hd133514133558%_)
                                                 (_%rest-ids133565%_
                                                  _%tl133515133560%_))
                                            (_%K133513133555%_
                                             _%rest-ids133565%_
                                             _%clause-id133563%_)))
                                        (_%E133512133521%_))))))
                          (if (pair? _%rest133489133497%_)
                              (let ((_%hd133494133570%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133489133497%_)))
                                    (_%tl133495133572%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133489133497%_))))
                                (let* ((_%clause133575%_ _%hd133494133570%_)
                                       (_%rest133577%_ _%tl133495133572%_))
                                  (_%K133493133567%_
                                   _%rest133577%_
                                   _%clause133575%_)))
                              (_%else133491133505%_)))))))
                 (_%generate-body132867%_
                  (lambda (_%bindings133436%_ _%body133437%_)
                    (let _%recur133439%_ ((_%rest133441%_ _%bindings133436%_))
                      (let* ((_%rest133442133450%_ _%rest133441%_)
                             (_%else133444133458%_ (lambda () _%body133437%_))
                             (_%K133446133464%_
                              (lambda (_%rest133461%_ _%hd133462%_)
                                (let ((__tmp134202 (cons _%hd133462%_ '()))
                                      (__tmp134201
                                       (_%recur133439%_ _%rest133461%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp134202
                                   __tmp134201)))))
                        (if (pair? _%rest133442133450%_)
                            (let ((_%hd133447133467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133442133450%_)))
                                  (_%tl133448133469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133442133450%_))))
                              (let* ((_%hd133472%_ _%hd133447133467%_)
                                     (_%rest133474%_ _%tl133448133469%_))
                                (_%K133446133464%_
                                 _%rest133474%_
                                 _%hd133472%_)))
                            (_%else133444133458%_))))))
                 (_%generate-clause132868%_
                  (lambda (_%target133299%_
                           _%ids133300%_
                           _%clause133301%_
                           _%E133302%_)
                    (letrec ((_%generate1133304%_
                              (lambda (_%hd133391%_
                                       _%fender133392%_
                                       _%body133393%_)
                                (let ((_g134203_
                                       (_%parse-clause132870%_
                                        _%hd133391%_
                                        _%ids133300%_)))
                                  (begin
                                    (let ((_g134204_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134203_)
                                                 (##values-length _g134203_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134204_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134204_)))
                                    (let ((_%e133395%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134203_ 0)))
                                          (_%mvars133396%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134203_ 1))))
                                      (let* ((_%pvars133398%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133396%_))))
                                             (_%E133400%_
                                              (cons _%E133302%_
                                                    (cons _%target133299%_
                                                          '())))
                                             (_%K133433%_
                                              (let ((__tmp134205
                                                     (let ((__tmp134207
                                                            (map (lambda (_%mvar133402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133403%_)
                           (let* ((_%mvar133404133411%_ _%mvar133402%_)
                                  (_%E133406133415%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133404133411%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133407133421%_
                                   (lambda (_%depth133418%_ _%id133419%_)
                                     (cons _%id133419%_
                                           (cons (let ((__tmp134209
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133419%_)))
                                                       (__tmp134208
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133403%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134209
                                                    __tmp134208
                                                    _%depth133418%_))
                                                 '())))))
                             (if (pair? _%mvar133404133411%_)
                                 (let ((_%hd133408133424%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133404133411%_)))
                                       (_%tl133409133426%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133404133411%_))))
                                   (let* ((_%id133429%_ _%hd133408133424%_)
                                          (_%depth133431%_ _%tl133409133426%_))
                                     (_%K133407133421%_
                                      _%depth133431%_
                                      _%id133429%_)))
                                 (_%E133406133415%_))))
                         _%mvars133396%_
                         _%pvars133398%_))
                   (__tmp134206
                    (if (eq? _%fender133392%_ '#t)
                        _%body133393%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133392%_
                           _%body133393%_
                           _%E133400%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp134207 __tmp134206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133398%_
                                                 __tmp134205))))
                                        (_%generate-match132869%_
                                         _%hd133391%_
                                         _%target133299%_
                                         _%e133395%_
                                         _%mvars133396%_
                                         _%K133433%_
                                         _%E133400%_))))))))
                      (let* ((_%e133305133325%_ _%clause133301%_)
                             (_%E133314133329%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133305133325%_))))
                             (_%E133307133363%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133305133325%_))
                                    (let ((_%e133315133333%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133305133325%_))))
                                      (let ((_%hd133316133336%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133315133333%_)))
                                            (_%tl133317133338%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133315133333%_))))
                                        (let ((_%hd133341%_
                                               _%hd133316133336%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133317133338%_))
                                              (let ((_%e133318133343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133317133338%_))))
                                                (let ((_%hd133319133346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133318133343%_)))
                                                      (_%tl133320133348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133318133343%_))))
                                                  (let ((_%fender133351%_
                                                         _%hd133319133346%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133320133348%_))
                                                        (let ((_%e133321133353%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133320133348%_))))
                  (let ((_%hd133322133356%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133321133353%_)))
                        (_%tl133323133358%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133321133353%_))))
                    (let ((_%body133361%_ _%hd133322133356%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133323133358%_))
                          (_%generate1133304%_
                           _%hd133341%_
                           _%fender133351%_
                           _%body133361%_)
                          (_%E133314133329%_)))))
                (_%E133314133329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133314133329%_)))))
                                    (_%E133314133329%_))))
                             (_%E133306133387%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133305133325%_))
                                    (let ((_%e133308133367%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133305133325%_))))
                                      (let ((_%hd133309133370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133308133367%_)))
                                            (_%tl133310133372%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133308133367%_))))
                                        (let ((_%hd133375%_
                                               _%hd133309133370%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133310133372%_))
                                              (let ((_%e133311133377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133310133372%_))))
                                                (let ((_%hd133312133380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133311133377%_)))
                                                      (_%tl133313133382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133311133377%_))))
                                                  (let ((_%body133385%_
                                                         _%hd133312133380%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133313133382%_))
                                                        (_%generate1133304%_
                                                         _%hd133375%_
                                                         '#t
                                                         _%body133385%_)
                                                        (_%E133307133363%_)))))
                                              (_%E133307133363%_)))))
                                    (_%E133307133363%_)))))
                        (_%E133306133387%_)))))
                 (_%generate-match132869%_
                  (lambda (_%where133048%_
                           _%target133049%_
                           _%hd133050%_
                           _%mvars133051%_
                           _%K133052%_
                           _%E133053%_)
                    (letrec ((_%BUG133055%_
                              (lambda (_%q133297%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132861%_
                                         _%hd133050%_
                                         _%q133297%_))))
                             (_%recur133056%_
                              (lambda (_%e133147%_
                                       _%vars133148%_
                                       _%target133149%_
                                       _%E133150%_
                                       _%k133151%_)
                                (let* ((_%e133152133159%_ _%e133147%_)
                                       (_%E133154133163%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e133152133159%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K133155133285%_
                                        (lambda (_%body133166%_ _%tag133167%_)
                                          (let ((_%$e133169%_ _%tag133167%_))
                                            (if (eq? 'any _%$e133169%_)
                                                (_%k133151%_ _%vars133148%_)
                                                (if (eq? 'id _%$e133169%_)
                                                    (let ((__tmp134214
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target133149%_)))
                                                          (__tmp134210
                                                           (let ((__tmp134212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134213
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132864%_
                                    _%body133166%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132862%_
                             __tmp134213
                             _%target133149%_)))
                         (__tmp134211 (_%k133151%_ _%vars133148%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134212 __tmp134211 _%E133150%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134214 __tmp134210 _%E133150%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e133169%_)
                                                        (_%k133151%_
                                                         (cons (cons _%body133166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target133149%_)
                       _%vars133148%_))
                (if (eq? 'cons _%$e133169%_)
                    (let ((_%$e133172%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd133173%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl133174%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134220
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target133149%_)))
                            (__tmp134215
                             (let ((__tmp134219
                                    (cons (cons (cons _%$e133172%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132863%_
                                                         _%target133149%_))
                                                      '()))
                                          '()))
                                   (__tmp134216
                                    (let ((__tmp134218
                                           (cons (cons (cons _%$hd133173%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e133172%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl133174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e133172%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134217
                                           (let* ((_%body133175133182%_
                                                   _%body133166%_)
                                                  (_%E133177133186%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body133175133182%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K133178133194%_
                                                   (lambda (_%tl133189%_
                                                            _%hd133190%_)
                                                     (_%recur133056%_
                                                      _%hd133190%_
                                                      _%vars133148%_
                                                      _%$hd133173%_
                                                      _%E133150%_
                                                      (lambda (_%vars133192%_)
                                                        (_%recur133056%_
                                                         _%tl133189%_
                                                         _%vars133192%_
                                                         _%$tl133174%_
                                                         _%E133150%_
                                                         _%k133151%_))))))
                                             (if (pair? _%body133175133182%_)
                                                 (let ((_%hd133179133197%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body133175133182%_)))
                                                       (_%tl133180133199%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body133175133182%_))))
                                                   (let* ((_%hd133202%_
                                                           _%hd133179133197%_)
                                                          (_%tl133204%_
                                                           _%tl133180133199%_))
                                                     (_%K133178133194%_
                                                      _%tl133204%_
                                                      _%hd133202%_)))
                                                 (_%E133177133186%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134218
                                       __tmp134217))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134219
                                __tmp134216))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134220
                         __tmp134215
                         _%E133150%_)))
                    (if (eq? 'splice _%$e133169%_)
                        (let* ((_%body133205133212%_ _%body133166%_)
                               (_%E133207133216%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body133205133212%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K133208133267%_
                                (lambda (_%tl133219%_ _%hd133220%_)
                                  (let* ((_%rlen133222%_
                                          (_%splice-rlen133057%_ _%tl133219%_))
                                         (_%$target133224%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133226%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133228%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133230%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133232%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133234%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133236%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133238%_
                                          (_%splice-vars133058%_ _%hd133220%_))
                                         (_%lvars133240%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133238%_)))
                                         (_%tlvars133242%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133238%_)))
                                         (_%linit133246%_
                                          (map (lambda (_%var133244%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133240%_)))
                                    (letrec ((_%make-loop133249%_
                                              (lambda (_%vars133253%_)
                                                (let ((__tmp134222
                                                       (cons (cons (cons _%$lp133230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134235
                                        (cons _%$hd133226%_ _%lvars133240%_))
                                       (__tmp134223
                                        (let ((__tmp134234
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133226%_)))
                                              (__tmp134228
                                               (let ((__tmp134233
                                                      (cons (cons (cons _%$lp-e133232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132863%_
                                   _%$hd133226%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134229
                                                      (let ((__tmp134232
                                                             (cons (cons (cons _%$lp-hd133234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133232%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133236%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133232%_))
                                             '()))
                                 '())))
                    (__tmp134230
                     (_%recur133056%_
                      _%hd133220%_
                      '()
                      _%$lp-hd133234%_
                      _%E133150%_
                      (lambda (_%hdvars133255%_)
                        (cons _%$lp133230%_
                              (cons _%$lp-tl133236%_
                                    (map (lambda (_%svar133257%_
                                                  _%lvar133258%_)
                                           (let ((__tmp134231
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133257%_
                                                     _%hdvars133255%_
                                                     _%BUG133055%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134231
                                              _%lvar133258%_)))
                                         _%svars133238%_
                                         _%lvars133240%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134232 __tmp134230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134233
                                                  __tmp134229)))
                                              (__tmp134224
                                               (let ((__tmp134227
                                                      (map (lambda (_%lvar133260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133261%_)
                     (cons (cons _%tlvar133261%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133260%_))
                                 '())))
                   _%lvars133240%_
                   _%tlvars133242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134225
                                                      (_%k133151%_
                                                       (let ((__tmp134226
                                                              (lambda (_%svar133263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133264%_
                               _%r133265%_)
                        (cons (cons _%svar133263%_ _%tlvar133264%_)
                              _%r133265%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134226
                  _%vars133253%_
                  _%svars133238%_
                  _%tlvars133242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134227
                                                  __tmp134225))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134234
                                           __tmp134228
                                           __tmp134224))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134235
                                    __tmp134223))
                                 '()))
                     '()))
              (__tmp134221
               (cons _%$lp133230%_ (cons _%$target133224%_ _%linit133246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134222
                                                   __tmp134221)))))
                                      (let ((_%body133251%_
                                             (let ((__tmp134237
                                                    (cons (cons (cons _%$target133224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133228%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target133149%_
                                 _%rlen133222%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134236
                                                    (_%recur133056%_
                                                     _%tl133219%_
                                                     _%vars133148%_
                                                     _%$tl133228%_
                                                     _%E133150%_
                                                     _%make-loop133249%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134237
                                                __tmp134236))))
                                        (let ((__tmp134241
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target133149%_)))
                                              (__tmp134238
                                               (if (zero? _%rlen133222%_)
                                                   _%body133251%_
                                                   (let ((__tmp134239
                                                          (let ((__tmp134240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target133149%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134240 _%rlen133222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134239
                                                      _%body133251%_
                                                      _%E133150%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134241
                                           __tmp134238
                                           _%E133150%_))))))))
                          (if (pair? _%body133205133212%_)
                              (let ((_%hd133209133270%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body133205133212%_)))
                                    (_%tl133210133272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body133205133212%_))))
                                (let* ((_%hd133275%_ _%hd133209133270%_)
                                       (_%tl133277%_ _%tl133210133272%_))
                                  (_%K133208133267%_
                                   _%tl133277%_
                                   _%hd133275%_)))
                              (_%E133207133216%_)))
                        (if (eq? 'null _%$e133169%_)
                            (let ((__tmp134243
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target133149%_)))
                                  (__tmp134242 (_%k133151%_ _%vars133148%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134243
                               __tmp134242
                               _%E133150%_))
                            (if (eq? 'vector _%$e133169%_)
                                (let ((_%$e133279%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134248
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target133149%_)))
                                        (__tmp134244
                                         (let ((__tmp134246
                                                (cons (cons (cons _%$e133279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134247
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132863%_
                                    _%target133149%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134247))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134245
                                                (_%recur133056%_
                                                 _%body133166%_
                                                 _%vars133148%_
                                                 _%$e133279%_
                                                 _%E133150%_
                                                 _%k133151%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134246
                                            __tmp134245))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134248
                                     __tmp134244
                                     _%E133150%_)))
                                (if (eq? 'box _%$e133169%_)
                                    (let ((_%$e133281%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134253
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target133149%_)))
                                            (__tmp134249
                                             (let ((__tmp134251
                                                    (cons (cons (cons _%$e133281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134252
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132863%_
                                        _%target133149%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134252))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134250
                                                    (_%recur133056%_
                                                     _%body133166%_
                                                     _%vars133148%_
                                                     _%$e133281%_
                                                     _%E133150%_
                                                     _%k133151%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134251
                                                __tmp134250))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134253
                                         __tmp134249
                                         _%E133150%_)))
                                    (if (eq? 'datum _%$e133169%_)
                                        (let ((_%$e133283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134259
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target133149%_)))
                                                (__tmp134254
                                                 (let ((__tmp134258
                                                        (cons (cons (cons _%$e133283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target133149%_))
                                  '()))
                      '()))
               (__tmp134255
                (let ((__tmp134257
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133283%_ _%body133166%_)))
                      (__tmp134256 (_%k133151%_ _%vars133148%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134257 __tmp134256 _%E133150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134258
                                                    __tmp134255))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134259
                                             __tmp134254
                                             _%E133150%_)))
                                        (_%BUG133055%_
                                         _%e133147%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e133152133159%_)
                                      (let ((_%hd133156133288%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133152133159%_)))
                                            (_%tl133157133290%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133152133159%_))))
                                        (let* ((_%tag133293%_
                                                _%hd133156133288%_)
                                               (_%body133295%_
                                                _%tl133157133290%_))
                                          (_%K133155133285%_
                                           _%body133295%_
                                           _%tag133293%_)))
                                      (_%E133154133163%_)))))
                             (_%splice-rlen133057%_
                              (lambda (_%e133109%_)
                                (let _%lp133111%_ ((_%e133113%_ _%e133109%_)
                                                   (_%n133114%_ '0))
                                  (let* ((_%e133115133122%_ _%e133113%_)
                                         (_%E133117133126%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e133115133122%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K133118133135%_
                                          (lambda (_%body133129%_
                                                   _%tag133130%_)
                                            (let ((_%$e133132%_ _%tag133130%_))
                                              (if (eq? 'splice _%$e133132%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132861%_
                                                     _%where133048%_))
                                                  (if (eq? 'cons _%$e133132%_)
                                                      (_%lp133111%_
                                                       (cdr _%body133129%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n133114%_
                                                                '1)))
                                                      _%n133114%_))))))
                                    (if (pair? _%e133115133122%_)
                                        (let ((_%hd133119133138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133115133122%_)))
                                              (_%tl133120133140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133115133122%_))))
                                          (let* ((_%tag133143%_
                                                  _%hd133119133138%_)
                                                 (_%body133145%_
                                                  _%tl133120133140%_))
                                            (_%K133118133135%_
                                             _%body133145%_
                                             _%tag133143%_)))
                                        (_%E133117133126%_))))))
                             (_%splice-vars133058%_
                              (lambda (_%e133065%_)
                                (let _%recur133067%_ ((_%e133069%_ _%e133065%_)
                                                      (_%vars133070%_ '()))
                                  (let* ((_%e133071133078%_ _%e133069%_)
                                         (_%E133073133082%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e133071133078%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K133074133097%_
                                          (lambda (_%body133085%_
                                                   _%tag133086%_)
                                            (let ((_%$e133088%_ _%tag133086%_))
                                              (if (eq? 'var _%$e133088%_)
                                                  (cons _%body133085%_
                                                        _%vars133070%_)
                                                  (if (or (eq? 'cons
                                                               _%$e133088%_)
                                                          (eq? 'splice
                                                               _%$e133088%_))
                                                      (_%recur133067%_
                                                       (cdr _%body133085%_)
                                                       (_%recur133067%_
                                                        (car _%body133085%_)
                                                        _%vars133070%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e133088%_)
                      (eq? 'box _%$e133088%_))
                  (_%recur133067%_ _%body133085%_ _%vars133070%_)
                  _%vars133070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e133071133078%_)
                                        (let ((_%hd133075133100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133071133078%_)))
                                              (_%tl133076133102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133071133078%_))))
                                          (let* ((_%tag133105%_
                                                  _%hd133075133100%_)
                                                 (_%body133107%_
                                                  _%tl133076133102%_))
                                            (_%K133074133097%_
                                             _%body133107%_
                                             _%tag133105%_)))
                                        (_%E133073133082%_))))))
                             (_%make-body133059%_
                              (lambda (_%vars133061%_)
                                (cons _%K133052%_
                                      (map (lambda (_%mvar133063%_)
                                             (let ((__tmp134260
                                                    (car _%mvar133063%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134260
                                                _%vars133061%_
                                                _%BUG133055%_)))
                                           _%mvars133051%_)))))
                      (_%recur133056%_
                       _%hd133050%_
                       '()
                       _%target133049%_
                       _%E133053%_
                       _%make-body133059%_))))
                 (_%parse-clause132870%_
                  (lambda (_%hd132942%_ _%ids132943%_)
                    (let _%recur132945%_ ((_%e132947%_ _%hd132942%_)
                                          (_%vars132948%_ '())
                                          (_%depth132949%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132947%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132947%_))
                              (values '(any) _%vars132948%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132947%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132861%_
                                     _%hd132942%_))
                                  (if (let ((__tmp134261
                                             (lambda (_%id132954%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132947%_
                                                  _%id132954%_)))))
                                        (declare (not safe))
                                        (__find __tmp134261 _%ids132943%_))
                                      (values (cons 'id _%e132947%_)
                                              _%vars132948%_)
                                      (if (let ((__tmp134262
                                                 (lambda (_%var132957%_)
                                                   (let ((__tmp134263
                                                          (car _%var132957%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132947%_
                                                      __tmp134263)))))
                                            (declare (not safe))
                                            (__find __tmp134262
                                                    _%vars132948%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132861%_
                                             _%e132947%_))
                                          (values (cons 'var _%e132947%_)
                                                  (cons (cons _%e132947%_
                                                              _%depth132949%_)
                                                        _%vars132948%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132947%_))
                              (let* ((_%e132961132968%_ _%e132947%_)
                                     (_%E132963132972%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132961132968%_))))
                                     (_%E132962133033%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132961132968%_))
                                            (let ((_%e132964132976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132961132968%_))))
                                              (let ((_%hd132965132979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132964132976%_)))
                                                    (_%tl132966132981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132964132976%_))))
                                                (let* ((_%hd132984%_
                                                        _%hd132965132979%_)
                                                       (_%rest132986%_
                                                        _%tl132966132981%_)
                                                       (_%make-pair133001%_
                                                        (lambda (_%tag132988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132989%_
                         _%tl132990%_)
                  (let* ((_%hd-depth132992%_
                          (if (eq? _%tag132988%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132949%_ '1))
                              _%depth132949%_))
                         (_g134264_
                          (_%recur132945%_
                           _%hd132989%_
                           _%vars132948%_
                           _%hd-depth132992%_)))
                    (begin
                      (let ((_g134265_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134264_)
                                   (##values-length _g134264_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134265_ 2)))
                            (error "Context expects 2 values" _g134265_)))
                      (let ((_%hd132994%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134264_ 0)))
                            (_%vars132995%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134264_ 1))))
                        (let ((_g134266_
                               (_%recur132945%_
                                _%tl132990%_
                                _%vars132995%_
                                _%depth132949%_)))
                          (begin
                            (let ((_g134267_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134266_)
                                         (##values-length _g134266_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134267_ 2)))
                                  (error "Context expects 2 values"
                                         _g134267_)))
                            (let ((_%tl132997%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134266_ 0)))
                                  (_%vars132998%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134266_ 1))))
                              (values (cons _%tag132988%_
                                            (cons _%hd132994%_ _%tl132997%_))
                                      _%vars132998%_)))))))))
               (_%e133002133009%_ _%rest132986%_)
               (_%E133004133013%_
                (lambda ()
                  (_%make-pair133001%_ 'cons _%hd132984%_ _%rest132986%_)))
               (_%E133003133029%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e133002133009%_))
                      (let ((_%e133005133017%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133002133009%_))))
                        (let ((_%hd133006133020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133005133017%_)))
                              (_%tl133007133022%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133005133017%_))))
                          (let* ((_%rest-hd133025%_ _%hd133006133020%_)
                                 (_%rest-tl133027%_ _%tl133007133022%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd133025%_))
                                (_%make-pair133001%_
                                 'splice
                                 _%hd132984%_
                                 _%rest-tl133027%_)
                                (_%make-pair133001%_
                                 'cons
                                 _%hd132984%_
                                 _%rest132986%_)))))
                      (_%E133004133013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133003133029%_))))
                                            (_%E132963132972%_)))))
                                (_%E132962133033%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132947%_))
                                  (values '(null) _%vars132948%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132947%_))
                                      (let ((_g134268_
                                             (_%recur132945%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132947%_)))
                                              _%vars132948%_
                                              _%depth132949%_)))
                                        (begin
                                          (let ((_g134269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134268_)
                                                       (##values-length
                                                        _g134268_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134269_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134269_)))
                                          (let ((_%e133039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134268_ 0)))
                                                (_%vars133040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134268_
                                                    1))))
                                            (values (cons 'vector _%e133039%_)
                                                    _%vars133040%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132947%_))
                                          (let ((_g134270_
                                                 (_%recur132945%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132947%_)))
                                                  _%vars132948%_
                                                  _%depth132949%_)))
                                            (begin
                                              (let ((_g134271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134270_)
                                                           (##values-length
                                                            _g134270_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134271_)))
                                              (let ((_%e133043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134270_
                                                        0)))
                                                    (_%vars133044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134270_
                                                        1))))
                                                (values (cons 'box _%e133043%_)
                                                        _%vars133044%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132947%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132947%_)))
                                                      _%vars132948%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132861%_
                                                 _%e132947%_))))))))))))
          (let* ((_%e132871132884%_ _%stx132861%_)
                 (_%E132873132888%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132871132884%_))))
                 (_%E132872132938%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132871132884%_))
                        (let ((_%e132874132892%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132871132884%_))))
                          (let ((_%hd132875132895%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132874132892%_)))
                                (_%tl132876132897%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132874132892%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132876132897%_))
                                (let ((_%e132877132900%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132876132897%_))))
                                  (let ((_%hd132878132903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132877132900%_)))
                                        (_%tl132879132905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132877132900%_))))
                                    (let ((_%expr132908%_ _%hd132878132903%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132879132905%_))
                                          (let ((_%e132880132910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132879132905%_))))
                                            (let ((_%hd132881132913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132880132910%_)))
                                                  (_%tl132882132915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132880132910%_))))
                                              (let* ((_%ids132918%_
                                                      _%hd132881132913%_)
                                                     (_%clauses132920%_
                                                      _%tl132882132915%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132918%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132920%_))
                                                        (let* ((_%ids132925%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132918%_)))
                       (_%clauses132927%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132920%_)))
                       (_%clause-ids132929%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132927%_)))
                       (_%E132931%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132933%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132935%_
                        (if (null? _%clauses132927%_)
                            _%E132931%_
                            (car _%clause-ids132929%_))))
                  (let ((__tmp134273
                         (let ((__tmp134274
                                (let ((__tmp134276
                                       (let ((__tmp134278
                                              (cons (cons (cons _%E132931%_
                                                                '())
                                                          (cons (let ((__tmp134280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132933%_ '()))
                              (__tmp134279
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132933%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134280 __tmp134279))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134277
                                              (_%generate-body132867%_
                                               (_%generate-bindings132866%_
                                                _%target132933%_
                                                _%ids132925%_
                                                _%clauses132927%_
                                                _%clause-ids132929%_
                                                _%E132931%_)
                                               (cons _%first132935%_
                                                     (cons _%expr132908%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134278
                                          __tmp134277)))
                                      (__tmp134275
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132861%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134276
                                   __tmp134275))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134274)))
                        (__tmp134272
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132861%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134273 __tmp134272)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132861%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132861%_
                                                       _%ids132918%_))))))
                                          (_%E132873132888%_)))))
                                (_%E132873132888%_))))
                        (_%E132873132888%_)))))
            (_%E132872132938%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133586%_)
        (let* ((_%identifier=?133588%_ 'free-identifier=?)
               (_%unwrap-e133590%_ 'syntax-e)
               (_%wrap-e133592%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133586%_
           _%identifier=?133588%_
           _%unwrap-e133590%_
           _%wrap-e133592%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133594%_ _%identifier=?133595%_)
        (let* ((_%unwrap-e133597%_ 'syntax-e) (_%wrap-e133599%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133594%_
           _%identifier=?133595%_
           _%unwrap-e133597%_
           _%wrap-e133599%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133601%_ _%identifier=?133602%_ _%unwrap-e133603%_)
        (let ((_%wrap-e133605%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133601%_
           _%identifier=?133602%_
           _%unwrap-e133603%_
           _%wrap-e133605%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134282_
        (let ((_g134281_ (let () (declare (not safe)) (##length _g134282_))))
          (cond ((let () (declare (not safe)) (##fx= _g134281_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134282_))
                ((let () (declare (not safe)) (##fx= _g134281_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134282_))
                ((let () (declare (not safe)) (##fx= _g134281_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134282_))
                ((let () (declare (not safe)) (##fx= _g134281_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134282_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132858%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132858%_))
            (let ((__tmp134283
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132858%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134283 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132816%_ . _%rest132817%_)
        (let ((_%len132819%_ (length _%hd132816%_)))
          (let _%lp132821%_ ((_%rest132823%_ _%rest132817%_))
            (let* ((_%rest132824132832%_ _%rest132823%_)
                   (_%else132826132840%_ (lambda () '#!void))
                   (_%K132828132846%_
                    (lambda (_%rest132843%_ _%hd132844%_)
                      (if (let ((__tmp134284 (length _%hd132844%_)))
                            (declare (not safe))
                            (##fx= _%len132819%_ __tmp134284))
                          (_%lp132821%_ _%rest132843%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132844%_))))))
              (if (pair? _%rest132824132832%_)
                  (let ((_%hd132829132849%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132824132832%_)))
                        (_%tl132830132851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132824132832%_))))
                    (let* ((_%hd132854%_ _%hd132829132849%_)
                           (_%rest132856%_ _%tl132830132851%_))
                      (_%K132828132846%_ _%rest132856%_ _%hd132854%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132766%_ _%n132767%_)
        (let _%lp132769%_ ((_%rest132772%_ _%stx132766%_) (_%r132774%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132772%_))
              (let* ((_%g132776132783%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132772%_)))
                     (_%E132778132787%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132776132783%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132779132794%_
                      (lambda (_%rest132790%_ _%hd132791%_)
                        (_%lp132769%_
                         _%rest132790%_
                         (cons _%hd132791%_ _%r132774%_)))))
                (if (pair? _%g132776132783%_)
                    (let ((_%hd132780132797%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132776132783%_)))
                          (_%tl132781132799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132776132783%_))))
                      (let* ((_%hd132802%_ _%hd132780132797%_)
                             (_%rest132804%_ _%tl132781132799%_))
                        (_%K132779132794%_ _%rest132804%_ _%hd132802%_)))
                    (_%E132778132787%_)))
              (let _%lp132806%_ ((_%n132808%_ _%n132767%_)
                                 (_%l132809%_ _%r132774%_)
                                 (_%r132811%_ _%rest132772%_))
                (if (null? _%l132809%_)
                    (values _%l132809%_ _%r132811%_)
                    (if (fxpositive? _%n132808%_)
                        (_%lp132806%_
                         (let () (declare (not safe)) (##fx- _%n132808%_ '1))
                         (cdr _%l132809%_)
                         (cons (car _%l132809%_) _%r132811%_))
                        (values (reverse! _%l132809%_) _%r132811%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx132716%_ _%n132717%_)
        (let _%lp132719%_ ((_%rest132722%_ _%stx132716%_) (_%r132724%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132722%_))
              (let* ((_%g132726132733%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132722%_)))
                     (_%E132728132737%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132726132733%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132729132744%_
                      (lambda (_%rest132740%_ _%hd132741%_)
                        (_%lp132719%_
                         _%rest132740%_
                         (cons _%hd132741%_ _%r132724%_)))))
                (if (pair? _%g132726132733%_)
                    (let ((_%hd132730132747%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132726132733%_)))
                          (_%tl132731132749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132726132733%_))))
                      (let* ((_%hd132752%_ _%hd132730132747%_)
                             (_%rest132754%_ _%tl132731132749%_))
                        (_%K132729132744%_ _%rest132754%_ _%hd132752%_)))
                    (_%E132728132737%_)))
              (let _%lp132756%_ ((_%n132758%_ _%n132717%_)
                                 (_%l132759%_ _%r132724%_)
                                 (_%r132761%_ _%rest132722%_))
                (if (null? _%l132759%_)
                    (vector _%l132759%_ _%r132761%_)
                    (if (fxpositive? _%n132758%_)
                        (_%lp132756%_
                         (let () (declare (not safe)) (##fx- _%n132758%_ '1))
                         (cdr _%l132759%_)
                         (cons (car _%l132759%_) _%r132761%_))
                        (vector (reverse! _%l132759%_) _%r132761%_))))))))))
