(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713631267)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp132769 (list gx#expander::t))
            (__tmp132768 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp132769
         '(id depth)
         __tmp132768
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args132765%_
        (apply make-instance gx#syntax-pattern::t _%$args132765%_)))
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
      (lambda (_%self131372132749%_ _%stx132751%_)
        (let* ((_%self132753%_ _%self131372132749%_)
               (_%self132755%_ _%self132753%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx132751%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx132215%_)
        (letrec ((_%generate132217%_
                  (lambda (_%e132457%_)
                    (letrec ((_%BUG132459%_
                              (lambda (_%q132624%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx132215%_
                                         _%e132457%_
                                         _%q132624%_))))
                             (_%local-pattern-e132460%_
                              (lambda (_%pat132622%_)
                                (let ((__tmp132770
                                       (##structure-ref
                                        _%pat132622%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp132770))))
                             (_%getvar132461%_
                              (lambda (_%q132619%_ _%vars132620%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q132619%_
                                   _%vars132620%_
                                   _%BUG132459%_))))
                             (_%getarg132462%_
                              (lambda (_%arg132585%_ _%vars132586%_)
                                (let* ((_%arg132587132594%_ _%arg132585%_)
                                       (_%E132589132598%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132587132594%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132590132607%_
                                        (lambda (_%e132601%_ _%tag132602%_)
                                          (let ((_%$e132604%_ _%tag132602%_))
                                            (if (eq? 'ref _%$e132604%_)
                                                (_%getvar132461%_
                                                 _%e132601%_
                                                 _%vars132586%_)
                                                (if (eq? 'pattern _%$e132604%_)
                                                    (_%local-pattern-e132460%_
                                                     _%e132601%_)
                                                    (_%BUG132459%_
                                                     _%arg132585%_)))))))
                                  (if (pair? _%arg132587132594%_)
                                      (let ((_%hd132591132610%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132587132594%_)))
                                            (_%tl132592132612%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132587132594%_))))
                                        (let* ((_%tag132615%_
                                                _%hd132591132610%_)
                                               (_%e132617%_
                                                _%tl132592132612%_))
                                          (_%K132590132607%_
                                           _%e132617%_
                                           _%tag132615%_)))
                                      (_%E132589132598%_))))))
                      (let _%recur132464%_ ((_%e132466%_ _%e132457%_)
                                            (_%vars132467%_ '()))
                        (let* ((_%e132468132475%_ _%e132466%_)
                               (_%E132470132479%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132468132475%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132471132573%_
                                (lambda (_%body132482%_ _%tag132483%_)
                                  (let ((_%$e132485%_ _%tag132483%_))
                                    (if (eq? 'datum _%$e132485%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132482%_))
                                        (if (eq? 'term _%$e132485%_)
                                            (let ((_%id132488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132482%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132488%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132488%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132491%_)
                                                        (let ((__tmp132771
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132482%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp132771))
                (let ((__tmp132773
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132482%_)))
                      (__tmp132772
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132482%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp132773
                   __tmp132772
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132488%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132482%_))
                                                      (_%BUG132459%_
                                                       _%e132466%_))))
                                            (if (eq? 'pattern _%$e132485%_)
                                                (_%local-pattern-e132460%_
                                                 _%body132482%_)
                                                (if (eq? 'ref _%$e132485%_)
                                                    (_%getvar132461%_
                                                     _%body132482%_
                                                     _%vars132467%_)
                                                    (if (eq? 'cons
                                                             _%$e132485%_)
                                                        (let ((__tmp132775
                                                               (_%recur132464%_
                                                                (car _%body132482%_)
                                                                _%vars132467%_))
                                                              (__tmp132774
                                                               (_%recur132464%_
                                                                (cdr _%body132482%_)
                                                                _%vars132467%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp132775
                                                           __tmp132774))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132485%_)
                    (let ((__tmp132776
                           (_%recur132464%_ _%body132482%_ _%vars132467%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp132776))
                    (if (eq? 'box _%$e132485%_)
                        (let ((__tmp132777
                               (_%recur132464%_
                                _%body132482%_
                                _%vars132467%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp132777))
                        (if (eq? 'splice _%$e132485%_)
                            (let* ((_%body132494132505%_ _%body132482%_)
                                   (_%E132496132509%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132494132505%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132497132547%_
                                    (lambda (_%args132512%_
                                             _%iv132513%_
                                             _%hd132514%_
                                             _%depth132515%_)
                                      (let* ((_%targets132521%_
                                              (map (lambda (_%g132516132518%_)
                                                     (_%getarg132462%_
                                                      _%g132516132518%_
                                                      _%vars132467%_))
                                                   _%args132512%_))
                                             (_%fold-in132523%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132512%_)))
                                             (_%fold-out132525%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132527%_
                                              (let ((__tmp132778
                                                     (cons _%fold-out132525%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp132778
                                                 _%fold-in132523%_)))
                                             (_%lambda-body132544%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132515%_ '1))
                                                  (let ((_%r-args132535%_
                                                         (map (lambda (_%arg132529%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132529%_)))
                      _%args132512%_))
                (_%r-vars132536%_
                 (let ((__tmp132779
                        (lambda (_%arg132531%_ _%var132532%_ _%r132533%_)
                          (cons (cons (cdr _%arg132531%_) _%var132532%_)
                                _%r132533%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp132779
                    _%vars132467%_
                    _%args132512%_
                    _%fold-in132523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132464%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132515%_ '1))
                         (cons _%hd132514%_
                               (cons (cons 'var _%fold-out132525%_)
                                     _%r-args132535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132536%_))
                                                  (let* ((_%hd-vars132542%_
                                                          (let ((__tmp132780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132538%_ _%var132539%_ _%r132540%_)
                           (cons (cons (cdr _%arg132538%_) _%var132539%_)
                                 _%r132540%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp132780
                     _%vars132467%_
                     _%args132512%_
                     _%fold-in132523%_)))
                 (__tmp132781
                  (_%recur132464%_ _%hd132514%_ _%hd-vars132542%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp132781
                                                     _%fold-out132525%_)))))
                                        (let ((__tmp132785
                                               (if (let ((__tmp132786
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132521%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp132786 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132521%_))
                                                   '#!void))
                                              (__tmp132782
                                               (let ((__tmp132784
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132527%_
                                                         _%lambda-body132544%_)))
                                                     (__tmp132783
                                                      (_%recur132464%_
                                                       _%iv132513%_
                                                       _%vars132467%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp132784
                                                  __tmp132783
                                                  _%targets132521%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp132785
                                           __tmp132782))))))
                              (if (pair? _%body132494132505%_)
                                  (let ((_%hd132498132550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132494132505%_)))
                                        (_%tl132499132552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132494132505%_))))
                                    (let ((_%depth132555%_ _%hd132498132550%_))
                                      (if (pair? _%tl132499132552%_)
                                          (let ((_%hd132500132557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132499132552%_)))
                                                (_%tl132501132559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132499132552%_))))
                                            (let ((_%hd132562%_
                                                   _%hd132500132557%_))
                                              (if (pair? _%tl132501132559%_)
                                                  (let ((_%hd132502132564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132501132559%_)))
                                                        (_%tl132503132566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132501132559%_))))
                                                    (let* ((_%iv132569%_
                                                            _%hd132502132564%_)
                                                           (_%args132571%_
                                                            _%tl132503132566%_))
                                                      (_%K132497132547%_
                                                       _%args132571%_
                                                       _%iv132569%_
                                                       _%hd132562%_
                                                       _%depth132555%_)))
                                                  (_%E132496132509%_))))
                                          (_%E132496132509%_))))
                                  (_%E132496132509%_)))
                            (if (eq? 'var _%$e132485%_)
                                _%body132482%_
                                (_%BUG132459%_ _%e132466%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e132468132475%_)
                              (let ((_%hd132472132576%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132468132475%_)))
                                    (_%tl132473132578%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132468132475%_))))
                                (let* ((_%tag132581%_ _%hd132472132576%_)
                                       (_%body132583%_ _%tl132473132578%_))
                                  (_%K132471132573%_
                                   _%body132583%_
                                   _%tag132581%_)))
                              (_%E132470132479%_)))))))
                 (_%parse132218%_
                  (lambda (_%e132259%_)
                    (letrec ((_%make-cons132261%_
                              (lambda (_%hd132449%_ _%tl132450%_)
                                (let ((_g132787_ _%hd132449%_)
                                      (_g132789_ _%tl132450%_))
                                  (begin
                                    (let ((_g132788_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132787_)
                                                 (##vector-length _g132787_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132788_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132788_)))
                                    (let ((_g132790_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132789_)
                                                 (##vector-length _g132789_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132790_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132790_)))
                                    (let ((_%hd-e132452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132787_ 0)))
                                          (_%hd-vars132453%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132787_ 1))))
                                      (let ((_%tl-e132454%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132789_ 0)))
                                            (_%tl-vars132455%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132789_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132452%_
                                                            _%tl-e132454%_))
                                                (append _%hd-vars132453%_
                                                        _%tl-vars132455%_))))))))
                             (_%make-splice132262%_
                              (lambda (_%where132385%_
                                       _%depth132386%_
                                       _%hd132387%_
                                       _%tl132388%_)
                                (let ((_g132791_ _%hd132387%_)
                                      (_g132793_ _%tl132388%_))
                                  (begin
                                    (let ((_g132792_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132791_)
                                                 (##vector-length _g132791_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132792_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132792_)))
                                    (let ((_g132794_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132793_)
                                                 (##vector-length _g132793_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132794_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132794_)))
                                    (let ((_%hd-e132390%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132791_ 0)))
                                          (_%hd-vars132391%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132791_ 1))))
                                      (let ((_%tl-e132392%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132793_ 0)))
                                            (_%tl-vars132393%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132793_ 1))))
                                        (let _%lp132395%_ ((_%rest132397%_
                                                            _%hd-vars132391%_)
                                                           (_%targets132398%_
                                                            '())
                                                           (_%vars132399%_
                                                            _%tl-vars132393%_))
                                          (let* ((_%rest132400132410%_
                                                  _%rest132397%_)
                                                 (_%else132402132418%_
                                                  (lambda ()
                                                    (if (null? _%targets132398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx132215%_
                                                           _%where132385%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth132386%_
                                    (cons _%hd-e132390%_
                                          (cons _%tl-e132392%_
                                                _%targets132398%_))))
                        _%vars132399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K132404132430%_
                                                  (lambda (_%rest132421%_
                                                           _%hd-pat132422%_
                                                           _%hd-depth*132423%_)
                                                    (let ((_%hd-depth132425%_
                                                           (fx- _%hd-depth*132423%_
                                                                _%depth132386%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth132425%_))
                                                          (_%lp132395%_
                                                           _%rest132421%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat132422%_)
                         _%targets132398%_)
                   (cons (cons _%hd-depth132425%_ _%hd-pat132422%_)
                         _%vars132399%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth132425%_))
                      (_%lp132395%_
                       _%rest132421%_
                       (cons (cons 'pattern _%hd-pat132422%_)
                             _%targets132398%_)
                       _%vars132399%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx132215%_
                         _%where132385%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest132400132410%_)
                                                (let ((_%hd132405132433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest132400132410%_)))
                                                      (_%tl132406132435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest132400132410%_))))
                                                  (if (pair? _%hd132405132433%_)
                                                      (let ((_%hd132407132438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd132405132433%_)))
                    (_%tl132408132440%_
                     (let () (declare (not safe)) (##cdr _%hd132405132433%_))))
                (let* ((_%hd-depth*132443%_ _%hd132407132438%_)
                       (_%hd-pat132445%_ _%tl132408132440%_)
                       (_%rest132447%_ _%tl132406132435%_))
                  (_%K132404132430%_
                   _%rest132447%_
                   _%hd-pat132445%_
                   _%hd-depth*132443%_)))
              (_%else132402132418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else132402132418%_))))))))))
                             (_%recur132263%_
                              (lambda (_%e132268%_ _%is-e?132269%_)
                                (if (_%is-e?132269%_ _%e132268%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx132215%_))
                                    (if (gx#syntax-local-pattern? _%e132268%_)
                                        (let* ((_%pat132273%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e132268%_)))
                                               (_%depth132275%_
                                                (##structure-ref
                                                 _%pat132273%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth132275%_)
                                              (values (cons 'ref _%pat132273%_)
                                                      (cons (cons _%depth132275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat132273%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat132273%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e132268%_))
                                            (values (cons 'term _%e132268%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e132268%_))
                                                (let* ((_%e132279132286%_
                                                        _%e132268%_)
                                                       (_%E132281132290%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e132279132286%_))))
                                                       (_%E132280132372%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e132279132286%_))
                      (let ((_%e132282132294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132279132286%_))))
                        (let ((_%hd132283132297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132282132294%_)))
                              (_%tl132284132299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132282132294%_))))
                          (let* ((_%hd132302%_ _%hd132283132297%_)
                                 (_%rest132304%_ _%tl132284132299%_))
                            (if (_%is-e?132269%_ _%hd132302%_)
                                (let* ((_%e132305132312%_ _%rest132304%_)
                                       (_%E132307132316%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx132215%_
                                             _%e132268%_))))
                                       (_%E132306132330%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e132305132312%_))
                                              (let ((_%e132308132320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e132305132312%_))))
                                                (let ((_%hd132309132323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132308132320%_)))
                                                      (_%tl132310132325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132308132320%_))))
                                                  (let ((_%rest132328%_
                                                         _%hd132309132323%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132310132325%_))
                                                        (_%recur132263%_
                                                         _%rest132328%_
                                                         false)
                                                        (_%E132307132316%_)))))
                                              (_%E132307132316%_)))))
                                  (_%E132306132330%_))
                                (let _%lp132334%_ ((_%rest132336%_
                                                    _%rest132304%_)
                                                   (_%depth132337%_ '0))
                                  (let* ((_%e132338132345%_ _%rest132336%_)
                                         (_%E132340132349%_
                                          (lambda ()
                                            (if (fxpositive? _%depth132337%_)
                                                (_%make-splice132262%_
                                                 _%e132268%_
                                                 _%depth132337%_
                                                 (_%recur132263%_
                                                  _%hd132302%_
                                                  _%is-e?132269%_)
                                                 (_%recur132263%_
                                                  _%rest132336%_
                                                  _%is-e?132269%_))
                                                (_%make-cons132261%_
                                                 (_%recur132263%_
                                                  _%hd132302%_
                                                  _%is-e?132269%_)
                                                 (_%recur132263%_
                                                  _%rest132336%_
                                                  _%is-e?132269%_)))))
                                         (_%E132339132368%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e132338132345%_))
                                                (let ((_%e132341132353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e132338132345%_))))
                                                  (let ((_%hd132342132356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e132341132353%_)))
                                                        (_%tl132343132358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e132341132353%_))))
                                                    (let* ((_%rest-hd132361%_
                                                            _%hd132342132356%_)
                                                           (_%rest-tl132363%_
                                                            _%tl132343132358%_))
                                                      (if (_%is-e?132269%_
                                                           _%rest-hd132361%_)
                                                          (_%lp132334%_
                                                           _%rest-tl132363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth132337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth132337%_)
                      (_%make-splice132262%_
                       _%e132268%_
                       _%depth132337%_
                       (_%recur132263%_ _%hd132302%_ _%is-e?132269%_)
                       (_%recur132263%_ _%rest132336%_ _%is-e?132269%_))
                      (_%make-cons132261%_
                       (_%recur132263%_ _%hd132302%_ _%is-e?132269%_)
                       (_%recur132263%_ _%rest132336%_ _%is-e?132269%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E132340132349%_)))))
                                    (_%E132339132368%_)))))))
                      (_%E132281132290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132280132372%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e132268%_))
                                                    (let ((_g132795_
                                                           (_%recur132263%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e132268%_)))
                    _%is-e?132269%_)))
              (begin
                (let ((_g132796_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g132795_)
                             (##vector-length _g132795_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g132796_ 2)))
                      (error "Context expects 2 values" _g132796_)))
                (let ((_%e132377%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132795_ 0)))
                      (_%vars132378%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132795_ 1))))
                  (values (cons 'vector _%e132377%_) _%vars132378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e132268%_))
                                                        (let ((_g132797_
                                                               (_%recur132263%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e132268%_)))
                        _%is-e?132269%_)))
                  (begin
                    (let ((_g132798_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g132797_)
                                 (##vector-length _g132797_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g132798_ 2)))
                          (error "Context expects 2 values" _g132798_)))
                    (let ((_%e132381%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132797_ 0)))
                          (_%vars132382%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132797_ 1))))
                      (values (cons 'box _%e132381%_) _%vars132382%_))))
                (values (cons 'datum _%e132268%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g132799_
                             (_%recur132263%_ _%e132259%_ gx#ellipsis?)))
                        (begin
                          (let ((_g132800_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g132799_)
                                       (##vector-length _g132799_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g132800_ 2)))
                                (error "Context expects 2 values" _g132800_)))
                          (let ((_%tree132265%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132799_ 0)))
                                (_%vars132266%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132799_ 1))))
                            (if (null? _%vars132266%_)
                                _%tree132265%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx132215%_
                                   _%vars132266%_))))))))))
          (let* ((_%e132219132229%_ _%stx132215%_)
                 (_%E132221132233%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx132215%_))))
                 (_%E132220132255%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132219132229%_))
                        (let ((_%e132222132237%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132219132229%_))))
                          (let ((_%hd132223132240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132222132237%_)))
                                (_%tl132224132242%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132222132237%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132224132242%_))
                                (let ((_%e132225132245%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132224132242%_))))
                                  (let ((_%hd132226132248%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132225132245%_)))
                                        (_%tl132227132250%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132225132245%_))))
                                    (let ((_%form132253%_ _%hd132226132248%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl132227132250%_))
                                          (let ((__tmp132802
                                                 (_%generate132217%_
                                                  (_%parse132218%_
                                                   _%form132253%_)))
                                                (__tmp132801
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx132215%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp132802
                                             __tmp132801))
                                          (_%E132221132233%_)))))
                                (_%E132221132233%_))))
                        (_%E132221132233%_)))))
            (_%E132220132255%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131464%_
               _%identifier=?131465%_
               _%unwrap-e131466%_
               _%wrap-e131467%_)
        (letrec ((_%generate-bindings131469%_
                  (lambda (_%target132079%_
                           _%ids132080%_
                           _%clauses132081%_
                           _%clause-ids132082%_
                           _%E132083%_)
                    (letrec ((_%generate1132085%_
                              (lambda (_%clause132182%_
                                       _%clause-id132183%_
                                       _%E132184%_)
                                (cons (cons _%clause-id132183%_ '())
                                      (cons (let ((__tmp132804
                                                   (cons _%target132079%_ '()))
                                                  (__tmp132803
                                                   (_%generate-clause131471%_
                                                    _%target132079%_
                                                    _%ids132080%_
                                                    _%clause132182%_
                                                    _%E132184%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp132804
                                               __tmp132803))
                                            '())))))
                      (let _%lp132087%_ ((_%rest132089%_ _%clauses132081%_)
                                         (_%rest-ids132090%_
                                          _%clause-ids132082%_)
                                         (_%bindings132091%_ '()))
                        (let* ((_%rest132092132100%_ _%rest132089%_)
                               (_%else132094132108%_
                                (lambda () _%bindings132091%_))
                               (_%K132096132170%_
                                (lambda (_%rest132111%_ _%clause132112%_)
                                  (let* ((_%rest-ids132113132120%_
                                          _%rest-ids132090%_)
                                         (_%E132115132124%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids132113132120%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K132116132158%_
                                          (lambda (_%rest-ids132127%_
                                                   _%clause-id132128%_)
                                            (let* ((_%rest-ids132129132137%_
                                                    _%rest-ids132127%_)
                                                   (_%else132131132145%_
                                                    (lambda ()
                                                      (cons (_%generate1132085%_
                                                             _%clause132112%_
                                                             _%clause-id132128%_
                                                             _%E132083%_)
                                                            _%bindings132091%_)))
                                                   (_%K132133132150%_
                                                    (lambda (_%next-clause-id132148%_)
                                                      (_%lp132087%_
                                                       _%rest132111%_
                                                       _%rest-ids132127%_
                                                       (cons (_%generate1132085%_
                                                              _%clause132112%_
                                                              _%clause-id132128%_
                                                              _%next-clause-id132148%_)
                                                             _%bindings132091%_)))))
                                              (if (pair? _%rest-ids132129132137%_)
                                                  (let* ((_%hd132134132153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids132129132137%_)))
                                                         (_%next-clause-id132156%_
                                                          _%hd132134132153%_))
                                                    (_%K132133132150%_
                                                     _%next-clause-id132156%_))
                                                  (_%else132131132145%_))))))
                                    (if (pair? _%rest-ids132113132120%_)
                                        (let ((_%hd132117132161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids132113132120%_)))
                                              (_%tl132118132163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids132113132120%_))))
                                          (let* ((_%clause-id132166%_
                                                  _%hd132117132161%_)
                                                 (_%rest-ids132168%_
                                                  _%tl132118132163%_))
                                            (_%K132116132158%_
                                             _%rest-ids132168%_
                                             _%clause-id132166%_)))
                                        (_%E132115132124%_))))))
                          (if (pair? _%rest132092132100%_)
                              (let ((_%hd132097132173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132092132100%_)))
                                    (_%tl132098132175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132092132100%_))))
                                (let* ((_%clause132178%_ _%hd132097132173%_)
                                       (_%rest132180%_ _%tl132098132175%_))
                                  (_%K132096132170%_
                                   _%rest132180%_
                                   _%clause132178%_)))
                              (_%else132094132108%_)))))))
                 (_%generate-body131470%_
                  (lambda (_%bindings132039%_ _%body132040%_)
                    (let _%recur132042%_ ((_%rest132044%_ _%bindings132039%_))
                      (let* ((_%rest132045132053%_ _%rest132044%_)
                             (_%else132047132061%_ (lambda () _%body132040%_))
                             (_%K132049132067%_
                              (lambda (_%rest132064%_ _%hd132065%_)
                                (let ((__tmp132806 (cons _%hd132065%_ '()))
                                      (__tmp132805
                                       (_%recur132042%_ _%rest132064%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp132806
                                   __tmp132805)))))
                        (if (pair? _%rest132045132053%_)
                            (let ((_%hd132050132070%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest132045132053%_)))
                                  (_%tl132051132072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest132045132053%_))))
                              (let* ((_%hd132075%_ _%hd132050132070%_)
                                     (_%rest132077%_ _%tl132051132072%_))
                                (_%K132049132067%_
                                 _%rest132077%_
                                 _%hd132075%_)))
                            (_%else132047132061%_))))))
                 (_%generate-clause131471%_
                  (lambda (_%target131902%_
                           _%ids131903%_
                           _%clause131904%_
                           _%E131905%_)
                    (letrec ((_%generate1131907%_
                              (lambda (_%hd131994%_
                                       _%fender131995%_
                                       _%body131996%_)
                                (let ((_g132807_
                                       (_%parse-clause131473%_
                                        _%hd131994%_
                                        _%ids131903%_)))
                                  (begin
                                    (let ((_g132808_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132807_)
                                                 (##vector-length _g132807_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132808_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132808_)))
                                    (let ((_%e131998%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132807_ 0)))
                                          (_%mvars131999%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132807_ 1))))
                                      (let* ((_%pvars132001%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars131999%_))))
                                             (_%E132003%_
                                              (cons _%E131905%_
                                                    (cons _%target131902%_
                                                          '())))
                                             (_%K132036%_
                                              (let ((__tmp132809
                                                     (let ((__tmp132811
                                                            (map (lambda (_%mvar132005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar132006%_)
                           (let* ((_%mvar132007132014%_ _%mvar132005%_)
                                  (_%E132009132018%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar132007132014%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K132010132024%_
                                   (lambda (_%depth132021%_ _%id132022%_)
                                     (cons _%id132022%_
                                           (cons (let ((__tmp132813
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id132022%_)))
                                                       (__tmp132812
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar132006%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp132813
                                                    __tmp132812
                                                    _%depth132021%_))
                                                 '())))))
                             (if (pair? _%mvar132007132014%_)
                                 (let ((_%hd132011132027%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar132007132014%_)))
                                       (_%tl132012132029%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar132007132014%_))))
                                   (let* ((_%id132032%_ _%hd132011132027%_)
                                          (_%depth132034%_ _%tl132012132029%_))
                                     (_%K132010132024%_
                                      _%depth132034%_
                                      _%id132032%_)))
                                 (_%E132009132018%_))))
                         _%mvars131999%_
                         _%pvars132001%_))
                   (__tmp132810
                    (if (eq? _%fender131995%_ '#t)
                        _%body131996%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender131995%_
                           _%body131996%_
                           _%E132003%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp132811 __tmp132810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars132001%_
                                                 __tmp132809))))
                                        (_%generate-match131472%_
                                         _%hd131994%_
                                         _%target131902%_
                                         _%e131998%_
                                         _%mvars131999%_
                                         _%K132036%_
                                         _%E132003%_))))))))
                      (let* ((_%e131908131928%_ _%clause131904%_)
                             (_%E131917131932%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e131908131928%_))))
                             (_%E131910131966%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e131908131928%_))
                                    (let ((_%e131918131936%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e131908131928%_))))
                                      (let ((_%hd131919131939%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131918131936%_)))
                                            (_%tl131920131941%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131918131936%_))))
                                        (let ((_%hd131944%_
                                               _%hd131919131939%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl131920131941%_))
                                              (let ((_%e131921131946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl131920131941%_))))
                                                (let ((_%hd131922131949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131921131946%_)))
                                                      (_%tl131923131951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131921131946%_))))
                                                  (let ((_%fender131954%_
                                                         _%hd131922131949%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl131923131951%_))
                                                        (let ((_%e131924131956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl131923131951%_))))
                  (let ((_%hd131925131959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e131924131956%_)))
                        (_%tl131926131961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e131924131956%_))))
                    (let ((_%body131964%_ _%hd131925131959%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl131926131961%_))
                          (_%generate1131907%_
                           _%hd131944%_
                           _%fender131954%_
                           _%body131964%_)
                          (_%E131917131932%_)))))
                (_%E131917131932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E131917131932%_)))))
                                    (_%E131917131932%_))))
                             (_%E131909131990%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e131908131928%_))
                                    (let ((_%e131911131970%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e131908131928%_))))
                                      (let ((_%hd131912131973%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131911131970%_)))
                                            (_%tl131913131975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131911131970%_))))
                                        (let ((_%hd131978%_
                                               _%hd131912131973%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl131913131975%_))
                                              (let ((_%e131914131980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl131913131975%_))))
                                                (let ((_%hd131915131983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131914131980%_)))
                                                      (_%tl131916131985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131914131980%_))))
                                                  (let ((_%body131988%_
                                                         _%hd131915131983%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl131916131985%_))
                                                        (_%generate1131907%_
                                                         _%hd131978%_
                                                         '#t
                                                         _%body131988%_)
                                                        (_%E131910131966%_)))))
                                              (_%E131910131966%_)))))
                                    (_%E131910131966%_)))))
                        (_%E131909131990%_)))))
                 (_%generate-match131472%_
                  (lambda (_%where131651%_
                           _%target131652%_
                           _%hd131653%_
                           _%mvars131654%_
                           _%K131655%_
                           _%E131656%_)
                    (letrec ((_%BUG131658%_
                              (lambda (_%q131900%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131464%_
                                         _%hd131653%_
                                         _%q131900%_))))
                             (_%recur131659%_
                              (lambda (_%e131750%_
                                       _%vars131751%_
                                       _%target131752%_
                                       _%E131753%_
                                       _%k131754%_)
                                (let* ((_%e131755131762%_ _%e131750%_)
                                       (_%E131757131766%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e131755131762%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K131758131888%_
                                        (lambda (_%body131769%_ _%tag131770%_)
                                          (let ((_%$e131772%_ _%tag131770%_))
                                            (if (eq? 'any _%$e131772%_)
                                                (_%k131754%_ _%vars131751%_)
                                                (if (eq? 'id _%$e131772%_)
                                                    (let ((__tmp132818
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target131752%_)))
                                                          (__tmp132814
                                                           (let ((__tmp132816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132817
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131467%_
                                    _%body131769%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131465%_
                             __tmp132817
                             _%target131752%_)))
                         (__tmp132815 (_%k131754%_ _%vars131751%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp132816 __tmp132815 _%E131753%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp132818 __tmp132814 _%E131753%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e131772%_)
                                                        (_%k131754%_
                                                         (cons (cons _%body131769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target131752%_)
                       _%vars131751%_))
                (if (eq? 'cons _%$e131772%_)
                    (let ((_%$e131775%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd131776%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl131777%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp132824
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target131752%_)))
                            (__tmp132819
                             (let ((__tmp132823
                                    (cons (cons (cons _%$e131775%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131466%_
                                                         _%target131752%_))
                                                      '()))
                                          '()))
                                   (__tmp132820
                                    (let ((__tmp132822
                                           (cons (cons (cons _%$hd131776%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e131775%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl131777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e131775%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp132821
                                           (let* ((_%body131778131785%_
                                                   _%body131769%_)
                                                  (_%E131780131789%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body131778131785%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K131781131797%_
                                                   (lambda (_%tl131792%_
                                                            _%hd131793%_)
                                                     (_%recur131659%_
                                                      _%hd131793%_
                                                      _%vars131751%_
                                                      _%$hd131776%_
                                                      _%E131753%_
                                                      (lambda (_%vars131795%_)
                                                        (_%recur131659%_
                                                         _%tl131792%_
                                                         _%vars131795%_
                                                         _%$tl131777%_
                                                         _%E131753%_
                                                         _%k131754%_))))))
                                             (if (pair? _%body131778131785%_)
                                                 (let ((_%hd131782131800%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body131778131785%_)))
                                                       (_%tl131783131802%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body131778131785%_))))
                                                   (let* ((_%hd131805%_
                                                           _%hd131782131800%_)
                                                          (_%tl131807%_
                                                           _%tl131783131802%_))
                                                     (_%K131781131797%_
                                                      _%tl131807%_
                                                      _%hd131805%_)))
                                                 (_%E131780131789%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp132822
                                       __tmp132821))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp132823
                                __tmp132820))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp132824
                         __tmp132819
                         _%E131753%_)))
                    (if (eq? 'splice _%$e131772%_)
                        (let* ((_%body131808131815%_ _%body131769%_)
                               (_%E131810131819%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body131808131815%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K131811131870%_
                                (lambda (_%tl131822%_ _%hd131823%_)
                                  (let* ((_%rlen131825%_
                                          (_%splice-rlen131660%_ _%tl131822%_))
                                         (_%$target131827%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd131829%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl131831%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp131833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e131835%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd131837%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl131839%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars131841%_
                                          (_%splice-vars131661%_ _%hd131823%_))
                                         (_%lvars131843%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars131841%_)))
                                         (_%tlvars131845%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars131841%_)))
                                         (_%linit131849%_
                                          (map (lambda (_%var131847%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars131843%_)))
                                    (letrec ((_%make-loop131852%_
                                              (lambda (_%vars131856%_)
                                                (let ((__tmp132826
                                                       (cons (cons (cons _%$lp131833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp132839
                                        (cons _%$hd131829%_ _%lvars131843%_))
                                       (__tmp132827
                                        (let ((__tmp132838
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd131829%_)))
                                              (__tmp132832
                                               (let ((__tmp132837
                                                      (cons (cons (cons _%$lp-e131835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131466%_
                                   _%$hd131829%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132833
                                                      (let ((__tmp132836
                                                             (cons (cons (cons _%$lp-hd131837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e131835%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl131839%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e131835%_))
                                             '()))
                                 '())))
                    (__tmp132834
                     (_%recur131659%_
                      _%hd131823%_
                      '()
                      _%$lp-hd131837%_
                      _%E131753%_
                      (lambda (_%hdvars131858%_)
                        (cons _%$lp131833%_
                              (cons _%$lp-tl131839%_
                                    (map (lambda (_%svar131860%_
                                                  _%lvar131861%_)
                                           (let ((__tmp132835
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar131860%_
                                                     _%hdvars131858%_
                                                     _%BUG131658%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp132835
                                              _%lvar131861%_)))
                                         _%svars131841%_
                                         _%lvars131843%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp132836 __tmp132834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132837
                                                  __tmp132833)))
                                              (__tmp132828
                                               (let ((__tmp132831
                                                      (map (lambda (_%lvar131863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar131864%_)
                     (cons (cons _%tlvar131864%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar131863%_))
                                 '())))
                   _%lvars131843%_
                   _%tlvars131845%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132829
                                                      (_%k131754%_
                                                       (let ((__tmp132830
                                                              (lambda (_%svar131866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar131867%_
                               _%r131868%_)
                        (cons (cons _%svar131866%_ _%tlvar131867%_)
                              _%r131868%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp132830
                  _%vars131856%_
                  _%svars131841%_
                  _%tlvars131845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132831
                                                  __tmp132829))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp132838
                                           __tmp132832
                                           __tmp132828))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp132839
                                    __tmp132827))
                                 '()))
                     '()))
              (__tmp132825
               (cons _%$lp131833%_ (cons _%$target131827%_ _%linit131849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp132826
                                                   __tmp132825)))))
                                      (let ((_%body131854%_
                                             (let ((__tmp132841
                                                    (cons (cons (cons _%$target131827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl131831%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target131752%_
                                 _%rlen131825%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132840
                                                    (_%recur131659%_
                                                     _%tl131822%_
                                                     _%vars131751%_
                                                     _%$tl131831%_
                                                     _%E131753%_
                                                     _%make-loop131852%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp132841
                                                __tmp132840))))
                                        (let ((__tmp132845
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target131752%_)))
                                              (__tmp132842
                                               (if (zero? _%rlen131825%_)
                                                   _%body131854%_
                                                   (let ((__tmp132843
                                                          (let ((__tmp132844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target131752%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp132844 _%rlen131825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp132843
                                                      _%body131854%_
                                                      _%E131753%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp132845
                                           __tmp132842
                                           _%E131753%_))))))))
                          (if (pair? _%body131808131815%_)
                              (let ((_%hd131812131873%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body131808131815%_)))
                                    (_%tl131813131875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body131808131815%_))))
                                (let* ((_%hd131878%_ _%hd131812131873%_)
                                       (_%tl131880%_ _%tl131813131875%_))
                                  (_%K131811131870%_
                                   _%tl131880%_
                                   _%hd131878%_)))
                              (_%E131810131819%_)))
                        (if (eq? 'null _%$e131772%_)
                            (let ((__tmp132847
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target131752%_)))
                                  (__tmp132846 (_%k131754%_ _%vars131751%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp132847
                               __tmp132846
                               _%E131753%_))
                            (if (eq? 'vector _%$e131772%_)
                                (let ((_%$e131882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp132852
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target131752%_)))
                                        (__tmp132848
                                         (let ((__tmp132850
                                                (cons (cons (cons _%$e131882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp132851
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131466%_
                                    _%target131752%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp132851))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp132849
                                                (_%recur131659%_
                                                 _%body131769%_
                                                 _%vars131751%_
                                                 _%$e131882%_
                                                 _%E131753%_
                                                 _%k131754%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp132850
                                            __tmp132849))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp132852
                                     __tmp132848
                                     _%E131753%_)))
                                (if (eq? 'box _%$e131772%_)
                                    (let ((_%$e131884%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp132857
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target131752%_)))
                                            (__tmp132853
                                             (let ((__tmp132855
                                                    (cons (cons (cons _%$e131884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp132856
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131466%_
                                        _%target131752%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp132856))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132854
                                                    (_%recur131659%_
                                                     _%body131769%_
                                                     _%vars131751%_
                                                     _%$e131884%_
                                                     _%E131753%_
                                                     _%k131754%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp132855
                                                __tmp132854))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp132857
                                         __tmp132853
                                         _%E131753%_)))
                                    (if (eq? 'datum _%$e131772%_)
                                        (let ((_%$e131886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp132863
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target131752%_)))
                                                (__tmp132858
                                                 (let ((__tmp132862
                                                        (cons (cons (cons _%$e131886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target131752%_))
                                  '()))
                      '()))
               (__tmp132859
                (let ((__tmp132861
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e131886%_ _%body131769%_)))
                      (__tmp132860 (_%k131754%_ _%vars131751%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp132861 __tmp132860 _%E131753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp132862
                                                    __tmp132859))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp132863
                                             __tmp132858
                                             _%E131753%_)))
                                        (_%BUG131658%_
                                         _%e131750%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e131755131762%_)
                                      (let ((_%hd131759131891%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131755131762%_)))
                                            (_%tl131760131893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131755131762%_))))
                                        (let* ((_%tag131896%_
                                                _%hd131759131891%_)
                                               (_%body131898%_
                                                _%tl131760131893%_))
                                          (_%K131758131888%_
                                           _%body131898%_
                                           _%tag131896%_)))
                                      (_%E131757131766%_)))))
                             (_%splice-rlen131660%_
                              (lambda (_%e131712%_)
                                (let _%lp131714%_ ((_%e131716%_ _%e131712%_)
                                                   (_%n131717%_ '0))
                                  (let* ((_%e131718131725%_ _%e131716%_)
                                         (_%E131720131729%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131718131725%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131721131738%_
                                          (lambda (_%body131732%_
                                                   _%tag131733%_)
                                            (let ((_%$e131735%_ _%tag131733%_))
                                              (if (eq? 'splice _%$e131735%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131464%_
                                                     _%where131651%_))
                                                  (if (eq? 'cons _%$e131735%_)
                                                      (_%lp131714%_
                                                       (cdr _%body131732%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n131717%_
                                                                '1)))
                                                      _%n131717%_))))))
                                    (if (pair? _%e131718131725%_)
                                        (let ((_%hd131722131741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131718131725%_)))
                                              (_%tl131723131743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131718131725%_))))
                                          (let* ((_%tag131746%_
                                                  _%hd131722131741%_)
                                                 (_%body131748%_
                                                  _%tl131723131743%_))
                                            (_%K131721131738%_
                                             _%body131748%_
                                             _%tag131746%_)))
                                        (_%E131720131729%_))))))
                             (_%splice-vars131661%_
                              (lambda (_%e131668%_)
                                (let _%recur131670%_ ((_%e131672%_ _%e131668%_)
                                                      (_%vars131673%_ '()))
                                  (let* ((_%e131674131681%_ _%e131672%_)
                                         (_%E131676131685%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131674131681%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131677131700%_
                                          (lambda (_%body131688%_
                                                   _%tag131689%_)
                                            (let ((_%$e131691%_ _%tag131689%_))
                                              (if (eq? 'var _%$e131691%_)
                                                  (cons _%body131688%_
                                                        _%vars131673%_)
                                                  (if (or (eq? 'cons
                                                               _%$e131691%_)
                                                          (eq? 'splice
                                                               _%$e131691%_))
                                                      (_%recur131670%_
                                                       (cdr _%body131688%_)
                                                       (_%recur131670%_
                                                        (car _%body131688%_)
                                                        _%vars131673%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e131691%_)
                      (eq? 'box _%$e131691%_))
                  (_%recur131670%_ _%body131688%_ _%vars131673%_)
                  _%vars131673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e131674131681%_)
                                        (let ((_%hd131678131703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131674131681%_)))
                                              (_%tl131679131705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131674131681%_))))
                                          (let* ((_%tag131708%_
                                                  _%hd131678131703%_)
                                                 (_%body131710%_
                                                  _%tl131679131705%_))
                                            (_%K131677131700%_
                                             _%body131710%_
                                             _%tag131708%_)))
                                        (_%E131676131685%_))))))
                             (_%make-body131662%_
                              (lambda (_%vars131664%_)
                                (cons _%K131655%_
                                      (map (lambda (_%mvar131666%_)
                                             (let ((__tmp132864
                                                    (car _%mvar131666%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp132864
                                                _%vars131664%_
                                                _%BUG131658%_)))
                                           _%mvars131654%_)))))
                      (_%recur131659%_
                       _%hd131653%_
                       '()
                       _%target131652%_
                       _%E131656%_
                       _%make-body131662%_))))
                 (_%parse-clause131473%_
                  (lambda (_%hd131545%_ _%ids131546%_)
                    (let _%recur131548%_ ((_%e131550%_ _%hd131545%_)
                                          (_%vars131551%_ '())
                                          (_%depth131552%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131550%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131550%_))
                              (values '(any) _%vars131551%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131550%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131464%_
                                     _%hd131545%_))
                                  (if (let ((__tmp132865
                                             (lambda (_%id131557%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131550%_
                                                  _%id131557%_)))))
                                        (declare (not safe))
                                        (__find __tmp132865 _%ids131546%_))
                                      (values (cons 'id _%e131550%_)
                                              _%vars131551%_)
                                      (if (let ((__tmp132866
                                                 (lambda (_%var131560%_)
                                                   (let ((__tmp132867
                                                          (car _%var131560%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131550%_
                                                      __tmp132867)))))
                                            (declare (not safe))
                                            (__find __tmp132866
                                                    _%vars131551%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131464%_
                                             _%e131550%_))
                                          (values (cons 'var _%e131550%_)
                                                  (cons (cons _%e131550%_
                                                              _%depth131552%_)
                                                        _%vars131551%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131550%_))
                              (let* ((_%e131564131571%_ _%e131550%_)
                                     (_%E131566131575%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131564131571%_))))
                                     (_%E131565131636%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131564131571%_))
                                            (let ((_%e131567131579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131564131571%_))))
                                              (let ((_%hd131568131582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131567131579%_)))
                                                    (_%tl131569131584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131567131579%_))))
                                                (let* ((_%hd131587%_
                                                        _%hd131568131582%_)
                                                       (_%rest131589%_
                                                        _%tl131569131584%_)
                                                       (_%make-pair131604%_
                                                        (lambda (_%tag131591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131592%_
                         _%tl131593%_)
                  (let* ((_%hd-depth131595%_
                          (if (eq? _%tag131591%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131552%_ '1))
                              _%depth131552%_))
                         (_g132868_
                          (_%recur131548%_
                           _%hd131592%_
                           _%vars131551%_
                           _%hd-depth131595%_)))
                    (begin
                      (let ((_g132869_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g132868_)
                                   (##vector-length _g132868_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g132869_ 2)))
                            (error "Context expects 2 values" _g132869_)))
                      (let ((_%hd131597%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g132868_ 0)))
                            (_%vars131598%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g132868_ 1))))
                        (let ((_g132870_
                               (_%recur131548%_
                                _%tl131593%_
                                _%vars131598%_
                                _%depth131552%_)))
                          (begin
                            (let ((_g132871_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g132870_)
                                         (##vector-length _g132870_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g132871_ 2)))
                                  (error "Context expects 2 values"
                                         _g132871_)))
                            (let ((_%tl131600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132870_ 0)))
                                  (_%vars131601%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132870_ 1))))
                              (values (cons _%tag131591%_
                                            (cons _%hd131597%_ _%tl131600%_))
                                      _%vars131601%_)))))))))
               (_%e131605131612%_ _%rest131589%_)
               (_%E131607131616%_
                (lambda ()
                  (_%make-pair131604%_ 'cons _%hd131587%_ _%rest131589%_)))
               (_%E131606131632%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e131605131612%_))
                      (let ((_%e131608131620%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131605131612%_))))
                        (let ((_%hd131609131623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131608131620%_)))
                              (_%tl131610131625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131608131620%_))))
                          (let* ((_%rest-hd131628%_ _%hd131609131623%_)
                                 (_%rest-tl131630%_ _%tl131610131625%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd131628%_))
                                (_%make-pair131604%_
                                 'splice
                                 _%hd131587%_
                                 _%rest-tl131630%_)
                                (_%make-pair131604%_
                                 'cons
                                 _%hd131587%_
                                 _%rest131589%_)))))
                      (_%E131607131616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131606131632%_))))
                                            (_%E131566131575%_)))))
                                (_%E131565131636%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131550%_))
                                  (values '(null) _%vars131551%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131550%_))
                                      (let ((_g132872_
                                             (_%recur131548%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131550%_)))
                                              _%vars131551%_
                                              _%depth131552%_)))
                                        (begin
                                          (let ((_g132873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132872_)
                                                       (##vector-length
                                                        _g132872_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132873_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132873_)))
                                          (let ((_%e131642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132872_ 0)))
                                                (_%vars131643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132872_
                                                    1))))
                                            (values (cons 'vector _%e131642%_)
                                                    _%vars131643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131550%_))
                                          (let ((_g132874_
                                                 (_%recur131548%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131550%_)))
                                                  _%vars131551%_
                                                  _%depth131552%_)))
                                            (begin
                                              (let ((_g132875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g132874_)
                                                           (##vector-length
                                                            _g132874_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g132875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g132875_)))
                                              (let ((_%e131646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g132874_
                                                        0)))
                                                    (_%vars131647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g132874_
                                                        1))))
                                                (values (cons 'box _%e131646%_)
                                                        _%vars131647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131550%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131550%_)))
                                                      _%vars131551%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131464%_
                                                 _%e131550%_))))))))))))
          (let* ((_%e131474131487%_ _%stx131464%_)
                 (_%E131476131491%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131474131487%_))))
                 (_%E131475131541%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131474131487%_))
                        (let ((_%e131477131495%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131474131487%_))))
                          (let ((_%hd131478131498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131477131495%_)))
                                (_%tl131479131500%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131477131495%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131479131500%_))
                                (let ((_%e131480131503%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131479131500%_))))
                                  (let ((_%hd131481131506%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131480131503%_)))
                                        (_%tl131482131508%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131480131503%_))))
                                    (let ((_%expr131511%_ _%hd131481131506%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131482131508%_))
                                          (let ((_%e131483131513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131482131508%_))))
                                            (let ((_%hd131484131516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131483131513%_)))
                                                  (_%tl131485131518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131483131513%_))))
                                              (let* ((_%ids131521%_
                                                      _%hd131484131516%_)
                                                     (_%clauses131523%_
                                                      _%tl131485131518%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131521%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131523%_))
                                                        (let* ((_%ids131528%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131521%_)))
                       (_%clauses131530%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131523%_)))
                       (_%clause-ids131532%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131530%_)))
                       (_%E131534%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131536%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131538%_
                        (if (null? _%clauses131530%_)
                            _%E131534%_
                            (car _%clause-ids131532%_))))
                  (let ((__tmp132877
                         (let ((__tmp132878
                                (let ((__tmp132880
                                       (let ((__tmp132882
                                              (cons (cons (cons _%E131534%_
                                                                '())
                                                          (cons (let ((__tmp132884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131536%_ '()))
                              (__tmp132883
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131536%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp132884 __tmp132883))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp132881
                                              (_%generate-body131470%_
                                               (_%generate-bindings131469%_
                                                _%target131536%_
                                                _%ids131528%_
                                                _%clauses131530%_
                                                _%clause-ids131532%_
                                                _%E131534%_)
                                               (cons _%first131538%_
                                                     (cons _%expr131511%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp132882
                                          __tmp132881)))
                                      (__tmp132879
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131464%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp132880
                                   __tmp132879))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp132878)))
                        (__tmp132876
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131464%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp132877 __tmp132876)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131464%_
                                                       _%ids131521%_))))))
                                          (_%E131476131491%_)))))
                                (_%E131476131491%_))))
                        (_%E131476131491%_)))))
            (_%E131475131541%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx132189%_)
        (let* ((_%identifier=?132191%_ 'free-identifier=?)
               (_%unwrap-e132193%_ 'syntax-e)
               (_%wrap-e132195%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132189%_
           _%identifier=?132191%_
           _%unwrap-e132193%_
           _%wrap-e132195%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx132197%_ _%identifier=?132198%_)
        (let* ((_%unwrap-e132200%_ 'syntax-e) (_%wrap-e132202%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132197%_
           _%identifier=?132198%_
           _%unwrap-e132200%_
           _%wrap-e132202%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx132204%_ _%identifier=?132205%_ _%unwrap-e132206%_)
        (let ((_%wrap-e132208%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132204%_
           _%identifier=?132205%_
           _%unwrap-e132206%_
           _%wrap-e132208%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g132886_
        (let ((_g132885_ (let () (declare (not safe)) (##length _g132886_))))
          (cond ((let () (declare (not safe)) (##fx= _g132885_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g132886_))
                ((let () (declare (not safe)) (##fx= _g132885_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g132886_))
                ((let () (declare (not safe)) (##fx= _g132885_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g132886_))
                ((let () (declare (not safe)) (##fx= _g132885_ 4))
                 (apply gx#macro-expand-syntax-case__% _g132886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g132886_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131461%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131461%_))
            (let ((__tmp132887
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131461%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp132887 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd131419%_ . _%rest131420%_)
        (let ((_%len131422%_ (length _%hd131419%_)))
          (let _%lp131424%_ ((_%rest131426%_ _%rest131420%_))
            (let* ((_%rest131427131435%_ _%rest131426%_)
                   (_%else131429131443%_ (lambda () '#!void))
                   (_%K131431131449%_
                    (lambda (_%rest131446%_ _%hd131447%_)
                      (if (let ((__tmp132888 (length _%hd131447%_)))
                            (declare (not safe))
                            (##fx= _%len131422%_ __tmp132888))
                          (_%lp131424%_ _%rest131446%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131447%_))))))
              (if (pair? _%rest131427131435%_)
                  (let ((_%hd131432131452%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest131427131435%_)))
                        (_%tl131433131454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest131427131435%_))))
                    (let* ((_%hd131457%_ _%hd131432131452%_)
                           (_%rest131459%_ _%tl131433131454%_))
                      (_%K131431131449%_ _%rest131459%_ _%hd131457%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx131374%_ _%n131375%_)
        (let _%lp131377%_ ((_%rest131379%_ _%stx131374%_) (_%r131380%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest131379%_))
              (let* ((_%g131381131388%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest131379%_)))
                     (_%E131383131392%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g131381131388%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K131384131398%_
                      (lambda (_%rest131395%_ _%hd131396%_)
                        (_%lp131377%_
                         _%rest131395%_
                         (cons _%hd131396%_ _%r131380%_)))))
                (if (pair? _%g131381131388%_)
                    (let ((_%hd131385131401%_
                           (let ()
                             (declare (not safe))
                             (##car _%g131381131388%_)))
                          (_%tl131386131403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g131381131388%_))))
                      (let* ((_%hd131406%_ _%hd131385131401%_)
                             (_%rest131408%_ _%tl131386131403%_))
                        (_%K131384131398%_ _%rest131408%_ _%hd131406%_)))
                    (_%E131383131392%_)))
              (let _%lp131410%_ ((_%n131412%_ _%n131375%_)
                                 (_%l131413%_ _%r131380%_)
                                 (_%r131414%_ _%rest131379%_))
                (if (null? _%l131413%_)
                    (values _%l131413%_ _%r131414%_)
                    (if (fxpositive? _%n131412%_)
                        (_%lp131410%_
                         (let () (declare (not safe)) (##fx- _%n131412%_ '1))
                         (cdr _%l131413%_)
                         (cons (car _%l131413%_) _%r131414%_))
                        (values (reverse _%l131413%_) _%r131414%_))))))))))
