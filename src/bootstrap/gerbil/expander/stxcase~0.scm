(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712993616)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp131017 (list gx#expander::t))
            (__tmp131016 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp131017
         '(id depth)
         __tmp131016
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args131013%_
        (apply make-instance gx#syntax-pattern::t _%$args131013%_)))
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
      (lambda (_%self129620130997%_ _%stx130999%_)
        (let* ((_%self131001%_ _%self129620130997%_)
               (_%self131003%_ _%self131001%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx130999%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130463%_)
        (letrec ((_%generate130465%_
                  (lambda (_%e130705%_)
                    (letrec ((_%BUG130707%_
                              (lambda (_%q130872%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130463%_
                                         _%e130705%_
                                         _%q130872%_))))
                             (_%local-pattern-e130708%_
                              (lambda (_%pat130870%_)
                                (let ((__tmp131018
                                       (##structure-ref
                                        _%pat130870%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp131018))))
                             (_%getvar130709%_
                              (lambda (_%q130867%_ _%vars130868%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q130867%_
                                   _%vars130868%_
                                   _%BUG130707%_))))
                             (_%getarg130710%_
                              (lambda (_%arg130833%_ _%vars130834%_)
                                (let* ((_%arg130835130842%_ _%arg130833%_)
                                       (_%E130837130846%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg130835130842%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K130838130855%_
                                        (lambda (_%e130849%_ _%tag130850%_)
                                          (let ((_%$e130852%_ _%tag130850%_))
                                            (if (eq? 'ref _%$e130852%_)
                                                (_%getvar130709%_
                                                 _%e130849%_
                                                 _%vars130834%_)
                                                (if (eq? 'pattern _%$e130852%_)
                                                    (_%local-pattern-e130708%_
                                                     _%e130849%_)
                                                    (_%BUG130707%_
                                                     _%arg130833%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg130835130842%_))
                                      (let ((_%hd130839130858%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg130835130842%_)))
                                            (_%tl130840130860%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg130835130842%_))))
                                        (let* ((_%tag130863%_
                                                _%hd130839130858%_)
                                               (_%e130865%_
                                                _%tl130840130860%_))
                                          (_%K130838130855%_
                                           _%e130865%_
                                           _%tag130863%_)))
                                      (_%E130837130846%_))))))
                      (let _%recur130712%_ ((_%e130714%_ _%e130705%_)
                                            (_%vars130715%_ '()))
                        (let* ((_%e130716130723%_ _%e130714%_)
                               (_%E130718130727%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e130716130723%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K130719130821%_
                                (lambda (_%body130730%_ _%tag130731%_)
                                  (let ((_%$e130733%_ _%tag130731%_))
                                    (if (eq? 'datum _%$e130733%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body130730%_))
                                        (if (eq? 'term _%$e130733%_)
                                            (let ((_%id130736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body130730%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id130736%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks130739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id130736%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks130739%_)
                                                        (let ((__tmp131019
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body130730%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp131019))
                (let ((__tmp131021
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body130730%_)))
                      (__tmp131020
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body130730%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp131021
                   __tmp131020
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id130736%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body130730%_))
                                                      (_%BUG130707%_
                                                       _%e130714%_))))
                                            (if (eq? 'pattern _%$e130733%_)
                                                (_%local-pattern-e130708%_
                                                 _%body130730%_)
                                                (if (eq? 'ref _%$e130733%_)
                                                    (_%getvar130709%_
                                                     _%body130730%_
                                                     _%vars130715%_)
                                                    (if (eq? 'cons
                                                             _%$e130733%_)
                                                        (let ((__tmp131023
                                                               (_%recur130712%_
                                                                (car _%body130730%_)
                                                                _%vars130715%_))
                                                              (__tmp131022
                                                               (_%recur130712%_
                                                                (cdr _%body130730%_)
                                                                _%vars130715%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp131023
                                                           __tmp131022))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e130733%_)
                    (let ((__tmp131024
                           (_%recur130712%_ _%body130730%_ _%vars130715%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp131024))
                    (if (eq? 'box _%$e130733%_)
                        (let ((__tmp131025
                               (_%recur130712%_
                                _%body130730%_
                                _%vars130715%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp131025))
                        (if (eq? 'splice _%$e130733%_)
                            (let* ((_%body130742130753%_ _%body130730%_)
                                   (_%E130744130757%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body130742130753%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K130745130795%_
                                    (lambda (_%args130760%_
                                             _%iv130761%_
                                             _%hd130762%_
                                             _%depth130763%_)
                                      (let* ((_%targets130769%_
                                              (map (lambda (_%g130764130766%_)
                                                     (_%getarg130710%_
                                                      _%g130764130766%_
                                                      _%vars130715%_))
                                                   _%args130760%_))
                                             (_%fold-in130771%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args130760%_)))
                                             (_%fold-out130773%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args130775%_
                                              (let ((__tmp131026
                                                     (cons _%fold-out130773%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp131026
                                                 _%fold-in130771%_)))
                                             (_%lambda-body130792%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth130763%_ '1))
                                                  (let ((_%r-args130783%_
                                                         (map (lambda (_%arg130777%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg130777%_)))
                      _%args130760%_))
                (_%r-vars130784%_
                 (let ((__tmp131027
                        (lambda (_%arg130779%_ _%var130780%_ _%r130781%_)
                          (cons (cons (cdr _%arg130779%_) _%var130780%_)
                                _%r130781%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp131027
                    _%vars130715%_
                    _%args130760%_
                    _%fold-in130771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur130712%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth130763%_ '1))
                         (cons _%hd130762%_
                               (cons (cons 'var _%fold-out130773%_)
                                     _%r-args130783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars130784%_))
                                                  (let* ((_%hd-vars130790%_
                                                          (let ((__tmp131028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg130786%_ _%var130787%_ _%r130788%_)
                           (cons (cons (cdr _%arg130786%_) _%var130787%_)
                                 _%r130788%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp131028
                     _%vars130715%_
                     _%args130760%_
                     _%fold-in130771%_)))
                 (__tmp131029
                  (_%recur130712%_ _%hd130762%_ _%hd-vars130790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp131029
                                                     _%fold-out130773%_)))))
                                        (let ((__tmp131033
                                               (if (let ((__tmp131034
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets130769%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp131034 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets130769%_))
                                                   '#!void))
                                              (__tmp131030
                                               (let ((__tmp131032
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args130775%_
                                                         _%lambda-body130792%_)))
                                                     (__tmp131031
                                                      (_%recur130712%_
                                                       _%iv130761%_
                                                       _%vars130715%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp131032
                                                  __tmp131031
                                                  _%targets130769%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp131033
                                           __tmp131030))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body130742130753%_))
                                  (let ((_%hd130746130798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body130742130753%_)))
                                        (_%tl130747130800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body130742130753%_))))
                                    (let ((_%depth130803%_ _%hd130746130798%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl130747130800%_))
                                          (let ((_%hd130748130805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl130747130800%_)))
                                                (_%tl130749130807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl130747130800%_))))
                                            (let ((_%hd130810%_
                                                   _%hd130748130805%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl130749130807%_))
                                                  (let ((_%hd130750130812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl130749130807%_)))
                                                        (_%tl130751130814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl130749130807%_))))
                                                    (let* ((_%iv130817%_
                                                            _%hd130750130812%_)
                                                           (_%args130819%_
                                                            _%tl130751130814%_))
                                                      (_%K130745130795%_
                                                       _%args130819%_
                                                       _%iv130817%_
                                                       _%hd130810%_
                                                       _%depth130803%_)))
                                                  (_%E130744130757%_))))
                                          (_%E130744130757%_))))
                                  (_%E130744130757%_)))
                            (if (eq? 'var _%$e130733%_)
                                _%body130730%_
                                (_%BUG130707%_ _%e130714%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e130716130723%_))
                              (let ((_%hd130720130824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e130716130723%_)))
                                    (_%tl130721130826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e130716130723%_))))
                                (let* ((_%tag130829%_ _%hd130720130824%_)
                                       (_%body130831%_ _%tl130721130826%_))
                                  (_%K130719130821%_
                                   _%body130831%_
                                   _%tag130829%_)))
                              (_%E130718130727%_)))))))
                 (_%parse130466%_
                  (lambda (_%e130507%_)
                    (letrec ((_%make-cons130509%_
                              (lambda (_%hd130697%_ _%tl130698%_)
                                (let ((_g131035_ _%hd130697%_)
                                      (_g131037_ _%tl130698%_))
                                  (begin
                                    (let ((_g131036_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131035_)
                                                 (##vector-length _g131035_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131036_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131036_)))
                                    (let ((_g131038_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131037_)
                                                 (##vector-length _g131037_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131038_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131038_)))
                                    (let ((_%hd-e130700%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131035_ 0)))
                                          (_%hd-vars130701%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131035_ 1))))
                                      (let ((_%tl-e130702%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131037_ 0)))
                                            (_%tl-vars130703%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131037_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e130700%_
                                                            _%tl-e130702%_))
                                                (append _%hd-vars130701%_
                                                        _%tl-vars130703%_))))))))
                             (_%make-splice130510%_
                              (lambda (_%where130633%_
                                       _%depth130634%_
                                       _%hd130635%_
                                       _%tl130636%_)
                                (let ((_g131039_ _%hd130635%_)
                                      (_g131041_ _%tl130636%_))
                                  (begin
                                    (let ((_g131040_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131039_)
                                                 (##vector-length _g131039_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131040_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131040_)))
                                    (let ((_g131042_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131041_)
                                                 (##vector-length _g131041_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131042_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131042_)))
                                    (let ((_%hd-e130638%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131039_ 0)))
                                          (_%hd-vars130639%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131039_ 1))))
                                      (let ((_%tl-e130640%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131041_ 0)))
                                            (_%tl-vars130641%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131041_ 1))))
                                        (let _%lp130643%_ ((_%rest130645%_
                                                            _%hd-vars130639%_)
                                                           (_%targets130646%_
                                                            '())
                                                           (_%vars130647%_
                                                            _%tl-vars130641%_))
                                          (let* ((_%rest130648130658%_
                                                  _%rest130645%_)
                                                 (_%else130650130666%_
                                                  (lambda ()
                                                    (if (null? _%targets130646%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130463%_
                                                           _%where130633%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130634%_
                                    (cons _%hd-e130638%_
                                          (cons _%tl-e130640%_
                                                _%targets130646%_))))
                        _%vars130647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130652130678%_
                                                  (lambda (_%rest130669%_
                                                           _%hd-pat130670%_
                                                           _%hd-depth*130671%_)
                                                    (let ((_%hd-depth130673%_
                                                           (fx- _%hd-depth*130671%_
                                                                _%depth130634%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth130673%_))
                                                          (_%lp130643%_
                                                           _%rest130669%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat130670%_)
                         _%targets130646%_)
                   (cons (cons _%hd-depth130673%_ _%hd-pat130670%_)
                         _%vars130647%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth130673%_))
                      (_%lp130643%_
                       _%rest130669%_
                       (cons (cons 'pattern _%hd-pat130670%_)
                             _%targets130646%_)
                       _%vars130647%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130463%_
                         _%where130633%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130648130658%_))
                                                (let ((_%hd130653130681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130648130658%_)))
                                                      (_%tl130654130683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130648130658%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130653130681%_))
                                                      (let ((_%hd130655130686%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130653130681%_)))
                    (_%tl130656130688%_
                     (let () (declare (not safe)) (##cdr _%hd130653130681%_))))
                (let* ((_%hd-depth*130691%_ _%hd130655130686%_)
                       (_%hd-pat130693%_ _%tl130656130688%_)
                       (_%rest130695%_ _%tl130654130683%_))
                  (_%K130652130678%_
                   _%rest130695%_
                   _%hd-pat130693%_
                   _%hd-depth*130691%_)))
              (_%else130650130666%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130650130666%_))))))))))
                             (_%recur130511%_
                              (lambda (_%e130516%_ _%is-e?130517%_)
                                (if (_%is-e?130517%_ _%e130516%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130463%_))
                                    (if (gx#syntax-local-pattern? _%e130516%_)
                                        (let* ((_%pat130521%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130516%_)))
                                               (_%depth130523%_
                                                (##structure-ref
                                                 _%pat130521%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130523%_)
                                              (values (cons 'ref _%pat130521%_)
                                                      (cons (cons _%depth130523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130521%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130521%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130516%_))
                                            (values (cons 'term _%e130516%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130516%_))
                                                (let* ((_%e130527130534%_
                                                        _%e130516%_)
                                                       (_%E130529130538%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130527130534%_))))
                                                       (_%E130528130620%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130527130534%_))
                      (let ((_%e130530130542%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130527130534%_))))
                        (let ((_%hd130531130545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130530130542%_)))
                              (_%tl130532130547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130530130542%_))))
                          (let* ((_%hd130550%_ _%hd130531130545%_)
                                 (_%rest130552%_ _%tl130532130547%_))
                            (if (_%is-e?130517%_ _%hd130550%_)
                                (let* ((_%e130553130560%_ _%rest130552%_)
                                       (_%E130555130564%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx130463%_
                                             _%e130516%_))))
                                       (_%E130554130578%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e130553130560%_))
                                              (let ((_%e130556130568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e130553130560%_))))
                                                (let ((_%hd130557130571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130556130568%_)))
                                                      (_%tl130558130573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130556130568%_))))
                                                  (let ((_%rest130576%_
                                                         _%hd130557130571%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130558130573%_))
                                                        (_%recur130511%_
                                                         _%rest130576%_
                                                         false)
                                                        (_%E130555130564%_)))))
                                              (_%E130555130564%_)))))
                                  (_%E130554130578%_))
                                (let _%lp130582%_ ((_%rest130584%_
                                                    _%rest130552%_)
                                                   (_%depth130585%_ '0))
                                  (let* ((_%e130586130593%_ _%rest130584%_)
                                         (_%E130588130597%_
                                          (lambda ()
                                            (if (fxpositive? _%depth130585%_)
                                                (_%make-splice130510%_
                                                 _%e130516%_
                                                 _%depth130585%_
                                                 (_%recur130511%_
                                                  _%hd130550%_
                                                  _%is-e?130517%_)
                                                 (_%recur130511%_
                                                  _%rest130584%_
                                                  _%is-e?130517%_))
                                                (_%make-cons130509%_
                                                 (_%recur130511%_
                                                  _%hd130550%_
                                                  _%is-e?130517%_)
                                                 (_%recur130511%_
                                                  _%rest130584%_
                                                  _%is-e?130517%_)))))
                                         (_%E130587130616%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e130586130593%_))
                                                (let ((_%e130589130601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e130586130593%_))))
                                                  (let ((_%hd130590130604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e130589130601%_)))
                                                        (_%tl130591130606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e130589130601%_))))
                                                    (let* ((_%rest-hd130609%_
                                                            _%hd130590130604%_)
                                                           (_%rest-tl130611%_
                                                            _%tl130591130606%_))
                                                      (if (_%is-e?130517%_
                                                           _%rest-hd130609%_)
                                                          (_%lp130582%_
                                                           _%rest-tl130611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth130585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth130585%_)
                      (_%make-splice130510%_
                       _%e130516%_
                       _%depth130585%_
                       (_%recur130511%_ _%hd130550%_ _%is-e?130517%_)
                       (_%recur130511%_ _%rest130584%_ _%is-e?130517%_))
                      (_%make-cons130509%_
                       (_%recur130511%_ _%hd130550%_ _%is-e?130517%_)
                       (_%recur130511%_ _%rest130584%_ _%is-e?130517%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130588130597%_)))))
                                    (_%E130587130616%_)))))))
                      (_%E130529130538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130528130620%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130516%_))
                                                    (let ((_g131043_
                                                           (_%recur130511%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130516%_)))
                    _%is-e?130517%_)))
              (begin
                (let ((_g131044_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g131043_)
                             (##vector-length _g131043_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g131044_ 2)))
                      (error "Context expects 2 values" _g131044_)))
                (let ((_%e130625%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131043_ 0)))
                      (_%vars130626%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131043_ 1))))
                  (values (cons 'vector _%e130625%_) _%vars130626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130516%_))
                                                        (let ((_g131045_
                                                               (_%recur130511%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130516%_)))
                        _%is-e?130517%_)))
                  (begin
                    (let ((_g131046_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g131045_)
                                 (##vector-length _g131045_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g131046_ 2)))
                          (error "Context expects 2 values" _g131046_)))
                    (let ((_%e130629%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131045_ 0)))
                          (_%vars130630%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131045_ 1))))
                      (values (cons 'box _%e130629%_) _%vars130630%_))))
                (values (cons 'datum _%e130516%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g131047_
                             (_%recur130511%_ _%e130507%_ gx#ellipsis?)))
                        (begin
                          (let ((_g131048_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g131047_)
                                       (##vector-length _g131047_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g131048_ 2)))
                                (error "Context expects 2 values" _g131048_)))
                          (let ((_%tree130513%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131047_ 0)))
                                (_%vars130514%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131047_ 1))))
                            (if (null? _%vars130514%_)
                                _%tree130513%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130463%_
                                   _%vars130514%_))))))))))
          (let* ((_%e130467130477%_ _%stx130463%_)
                 (_%E130469130481%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130463%_))))
                 (_%E130468130503%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130467130477%_))
                        (let ((_%e130470130485%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130467130477%_))))
                          (let ((_%hd130471130488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130470130485%_)))
                                (_%tl130472130490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130470130485%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130472130490%_))
                                (let ((_%e130473130493%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130472130490%_))))
                                  (let ((_%hd130474130496%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130473130493%_)))
                                        (_%tl130475130498%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130473130493%_))))
                                    (let ((_%form130501%_ _%hd130474130496%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130475130498%_))
                                          (let ((__tmp131050
                                                 (_%generate130465%_
                                                  (_%parse130466%_
                                                   _%form130501%_)))
                                                (__tmp131049
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx130463%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp131050
                                             __tmp131049))
                                          (_%E130469130481%_)))))
                                (_%E130469130481%_))))
                        (_%E130469130481%_)))))
            (_%E130468130503%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx129712%_
               _%identifier=?129713%_
               _%unwrap-e129714%_
               _%wrap-e129715%_)
        (letrec ((_%generate-bindings129717%_
                  (lambda (_%target130327%_
                           _%ids130328%_
                           _%clauses130329%_
                           _%clause-ids130330%_
                           _%E130331%_)
                    (letrec ((_%generate1130333%_
                              (lambda (_%clause130430%_
                                       _%clause-id130431%_
                                       _%E130432%_)
                                (cons (cons _%clause-id130431%_ '())
                                      (cons (let ((__tmp131052
                                                   (cons _%target130327%_ '()))
                                                  (__tmp131051
                                                   (_%generate-clause129719%_
                                                    _%target130327%_
                                                    _%ids130328%_
                                                    _%clause130430%_
                                                    _%E130432%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp131052
                                               __tmp131051))
                                            '())))))
                      (let _%lp130335%_ ((_%rest130337%_ _%clauses130329%_)
                                         (_%rest-ids130338%_
                                          _%clause-ids130330%_)
                                         (_%bindings130339%_ '()))
                        (let* ((_%rest130340130348%_ _%rest130337%_)
                               (_%else130342130356%_
                                (lambda () _%bindings130339%_))
                               (_%K130344130418%_
                                (lambda (_%rest130359%_ _%clause130360%_)
                                  (let* ((_%rest-ids130361130368%_
                                          _%rest-ids130338%_)
                                         (_%E130363130372%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130361130368%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130364130406%_
                                          (lambda (_%rest-ids130375%_
                                                   _%clause-id130376%_)
                                            (let* ((_%rest-ids130377130385%_
                                                    _%rest-ids130375%_)
                                                   (_%else130379130393%_
                                                    (lambda ()
                                                      (cons (_%generate1130333%_
                                                             _%clause130360%_
                                                             _%clause-id130376%_
                                                             _%E130331%_)
                                                            _%bindings130339%_)))
                                                   (_%K130381130398%_
                                                    (lambda (_%next-clause-id130396%_)
                                                      (_%lp130335%_
                                                       _%rest130359%_
                                                       _%rest-ids130375%_
                                                       (cons (_%generate1130333%_
                                                              _%clause130360%_
                                                              _%clause-id130376%_
                                                              _%next-clause-id130396%_)
                                                             _%bindings130339%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130377130385%_))
                                                  (let* ((_%hd130382130401%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130377130385%_)))
                                                         (_%next-clause-id130404%_
                                                          _%hd130382130401%_))
                                                    (_%K130381130398%_
                                                     _%next-clause-id130404%_))
                                                  (_%else130379130393%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130361130368%_))
                                        (let ((_%hd130365130409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130361130368%_)))
                                              (_%tl130366130411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130361130368%_))))
                                          (let* ((_%clause-id130414%_
                                                  _%hd130365130409%_)
                                                 (_%rest-ids130416%_
                                                  _%tl130366130411%_))
                                            (_%K130364130406%_
                                             _%rest-ids130416%_
                                             _%clause-id130414%_)))
                                        (_%E130363130372%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130340130348%_))
                              (let ((_%hd130345130421%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130340130348%_)))
                                    (_%tl130346130423%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130340130348%_))))
                                (let* ((_%clause130426%_ _%hd130345130421%_)
                                       (_%rest130428%_ _%tl130346130423%_))
                                  (_%K130344130418%_
                                   _%rest130428%_
                                   _%clause130426%_)))
                              (_%else130342130356%_)))))))
                 (_%generate-body129718%_
                  (lambda (_%bindings130287%_ _%body130288%_)
                    (let _%recur130290%_ ((_%rest130292%_ _%bindings130287%_))
                      (let* ((_%rest130293130301%_ _%rest130292%_)
                             (_%else130295130309%_ (lambda () _%body130288%_))
                             (_%K130297130315%_
                              (lambda (_%rest130312%_ _%hd130313%_)
                                (let ((__tmp131054 (cons _%hd130313%_ '()))
                                      (__tmp131053
                                       (_%recur130290%_ _%rest130312%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp131054
                                   __tmp131053)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130293130301%_))
                            (let ((_%hd130298130318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130293130301%_)))
                                  (_%tl130299130320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130293130301%_))))
                              (let* ((_%hd130323%_ _%hd130298130318%_)
                                     (_%rest130325%_ _%tl130299130320%_))
                                (_%K130297130315%_
                                 _%rest130325%_
                                 _%hd130323%_)))
                            (_%else130295130309%_))))))
                 (_%generate-clause129719%_
                  (lambda (_%target130150%_
                           _%ids130151%_
                           _%clause130152%_
                           _%E130153%_)
                    (letrec ((_%generate1130155%_
                              (lambda (_%hd130242%_
                                       _%fender130243%_
                                       _%body130244%_)
                                (let ((_g131055_
                                       (_%parse-clause129721%_
                                        _%hd130242%_
                                        _%ids130151%_)))
                                  (begin
                                    (let ((_g131056_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131055_)
                                                 (##vector-length _g131055_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131056_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131056_)))
                                    (let ((_%e130246%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131055_ 0)))
                                          (_%mvars130247%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131055_ 1))))
                                      (let* ((_%pvars130249%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130247%_))))
                                             (_%E130251%_
                                              (cons _%E130153%_
                                                    (cons _%target130150%_
                                                          '())))
                                             (_%K130284%_
                                              (let ((__tmp131057
                                                     (let ((__tmp131059
                                                            (map (lambda (_%mvar130253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130254%_)
                           (let* ((_%mvar130255130262%_ _%mvar130253%_)
                                  (_%E130257130266%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130255130262%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130258130272%_
                                   (lambda (_%depth130269%_ _%id130270%_)
                                     (cons _%id130270%_
                                           (cons (let ((__tmp131061
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130270%_)))
                                                       (__tmp131060
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130254%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131061
                                                    __tmp131060
                                                    _%depth130269%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130255130262%_))
                                 (let ((_%hd130259130275%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130255130262%_)))
                                       (_%tl130260130277%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130255130262%_))))
                                   (let* ((_%id130280%_ _%hd130259130275%_)
                                          (_%depth130282%_ _%tl130260130277%_))
                                     (_%K130258130272%_
                                      _%depth130282%_
                                      _%id130280%_)))
                                 (_%E130257130266%_))))
                         _%mvars130247%_
                         _%pvars130249%_))
                   (__tmp131058
                    (if (eq? _%fender130243%_ '#t)
                        _%body130244%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130243%_
                           _%body130244%_
                           _%E130251%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131059 __tmp131058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130249%_
                                                 __tmp131057))))
                                        (_%generate-match129720%_
                                         _%hd130242%_
                                         _%target130150%_
                                         _%e130246%_
                                         _%mvars130247%_
                                         _%K130284%_
                                         _%E130251%_))))))))
                      (let* ((_%e130156130176%_ _%clause130152%_)
                             (_%E130165130180%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130156130176%_))))
                             (_%E130158130214%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130156130176%_))
                                    (let ((_%e130166130184%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130156130176%_))))
                                      (let ((_%hd130167130187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130166130184%_)))
                                            (_%tl130168130189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130166130184%_))))
                                        (let ((_%hd130192%_
                                               _%hd130167130187%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130168130189%_))
                                              (let ((_%e130169130194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130168130189%_))))
                                                (let ((_%hd130170130197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130169130194%_)))
                                                      (_%tl130171130199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130169130194%_))))
                                                  (let ((_%fender130202%_
                                                         _%hd130170130197%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130171130199%_))
                                                        (let ((_%e130172130204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130171130199%_))))
                  (let ((_%hd130173130207%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130172130204%_)))
                        (_%tl130174130209%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130172130204%_))))
                    (let ((_%body130212%_ _%hd130173130207%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130174130209%_))
                          (_%generate1130155%_
                           _%hd130192%_
                           _%fender130202%_
                           _%body130212%_)
                          (_%E130165130180%_)))))
                (_%E130165130180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130165130180%_)))))
                                    (_%E130165130180%_))))
                             (_%E130157130238%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130156130176%_))
                                    (let ((_%e130159130218%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130156130176%_))))
                                      (let ((_%hd130160130221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130159130218%_)))
                                            (_%tl130161130223%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130159130218%_))))
                                        (let ((_%hd130226%_
                                               _%hd130160130221%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130161130223%_))
                                              (let ((_%e130162130228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130161130223%_))))
                                                (let ((_%hd130163130231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130162130228%_)))
                                                      (_%tl130164130233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130162130228%_))))
                                                  (let ((_%body130236%_
                                                         _%hd130163130231%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130164130233%_))
                                                        (_%generate1130155%_
                                                         _%hd130226%_
                                                         '#t
                                                         _%body130236%_)
                                                        (_%E130158130214%_)))))
                                              (_%E130158130214%_)))))
                                    (_%E130158130214%_)))))
                        (_%E130157130238%_)))))
                 (_%generate-match129720%_
                  (lambda (_%where129899%_
                           _%target129900%_
                           _%hd129901%_
                           _%mvars129902%_
                           _%K129903%_
                           _%E129904%_)
                    (letrec ((_%BUG129906%_
                              (lambda (_%q130148%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx129712%_
                                         _%hd129901%_
                                         _%q130148%_))))
                             (_%recur129907%_
                              (lambda (_%e129998%_
                                       _%vars129999%_
                                       _%target130000%_
                                       _%E130001%_
                                       _%k130002%_)
                                (let* ((_%e130003130010%_ _%e129998%_)
                                       (_%E130005130014%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e130003130010%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K130006130136%_
                                        (lambda (_%body130017%_ _%tag130018%_)
                                          (let ((_%$e130020%_ _%tag130018%_))
                                            (if (eq? 'any _%$e130020%_)
                                                (_%k130002%_ _%vars129999%_)
                                                (if (eq? 'id _%$e130020%_)
                                                    (let ((__tmp131066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target130000%_)))
                                                          (__tmp131062
                                                           (let ((__tmp131064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131065
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e129715%_
                                    _%body130017%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?129713%_
                             __tmp131065
                             _%target130000%_)))
                         (__tmp131063 (_%k130002%_ _%vars129999%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131064 __tmp131063 _%E130001%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131066 __tmp131062 _%E130001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e130020%_)
                                                        (_%k130002%_
                                                         (cons (cons _%body130017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target130000%_)
                       _%vars129999%_))
                (if (eq? 'cons _%$e130020%_)
                    (let ((_%$e130023%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd130024%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl130025%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131072
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target130000%_)))
                            (__tmp131067
                             (let ((__tmp131071
                                    (cons (cons (cons _%$e130023%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e129714%_
                                                         _%target130000%_))
                                                      '()))
                                          '()))
                                   (__tmp131068
                                    (let ((__tmp131070
                                           (cons (cons (cons _%$hd130024%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e130023%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl130025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e130023%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131069
                                           (let* ((_%body130026130033%_
                                                   _%body130017%_)
                                                  (_%E130028130037%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body130026130033%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K130029130045%_
                                                   (lambda (_%tl130040%_
                                                            _%hd130041%_)
                                                     (_%recur129907%_
                                                      _%hd130041%_
                                                      _%vars129999%_
                                                      _%$hd130024%_
                                                      _%E130001%_
                                                      (lambda (_%vars130043%_)
                                                        (_%recur129907%_
                                                         _%tl130040%_
                                                         _%vars130043%_
                                                         _%$tl130025%_
                                                         _%E130001%_
                                                         _%k130002%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body130026130033%_))
                                                 (let ((_%hd130030130048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body130026130033%_)))
                                                       (_%tl130031130050%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body130026130033%_))))
                                                   (let* ((_%hd130053%_
                                                           _%hd130030130048%_)
                                                          (_%tl130055%_
                                                           _%tl130031130050%_))
                                                     (_%K130029130045%_
                                                      _%tl130055%_
                                                      _%hd130053%_)))
                                                 (_%E130028130037%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131070
                                       __tmp131069))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131071
                                __tmp131068))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131072
                         __tmp131067
                         _%E130001%_)))
                    (if (eq? 'splice _%$e130020%_)
                        (let* ((_%body130056130063%_ _%body130017%_)
                               (_%E130058130067%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body130056130063%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130059130118%_
                                (lambda (_%tl130070%_ _%hd130071%_)
                                  (let* ((_%rlen130073%_
                                          (_%splice-rlen129908%_ _%tl130070%_))
                                         (_%$target130075%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130077%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130079%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130081%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130083%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130085%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130087%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130089%_
                                          (_%splice-vars129909%_ _%hd130071%_))
                                         (_%lvars130091%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130089%_)))
                                         (_%tlvars130093%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130089%_)))
                                         (_%linit130097%_
                                          (map (lambda (_%var130095%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130091%_)))
                                    (letrec ((_%make-loop130100%_
                                              (lambda (_%vars130104%_)
                                                (let ((__tmp131074
                                                       (cons (cons (cons _%$lp130081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131087
                                        (cons _%$hd130077%_ _%lvars130091%_))
                                       (__tmp131075
                                        (let ((__tmp131086
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130077%_)))
                                              (__tmp131080
                                               (let ((__tmp131085
                                                      (cons (cons (cons _%$lp-e130083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e129714%_
                                   _%$hd130077%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131081
                                                      (let ((__tmp131084
                                                             (cons (cons (cons _%$lp-hd130085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130083%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130087%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130083%_))
                                             '()))
                                 '())))
                    (__tmp131082
                     (_%recur129907%_
                      _%hd130071%_
                      '()
                      _%$lp-hd130085%_
                      _%E130001%_
                      (lambda (_%hdvars130106%_)
                        (cons _%$lp130081%_
                              (cons _%$lp-tl130087%_
                                    (map (lambda (_%svar130108%_
                                                  _%lvar130109%_)
                                           (let ((__tmp131083
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130108%_
                                                     _%hdvars130106%_
                                                     _%BUG129906%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131083
                                              _%lvar130109%_)))
                                         _%svars130089%_
                                         _%lvars130091%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131084 __tmp131082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131085
                                                  __tmp131081)))
                                              (__tmp131076
                                               (let ((__tmp131079
                                                      (map (lambda (_%lvar130111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130112%_)
                     (cons (cons _%tlvar130112%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130111%_))
                                 '())))
                   _%lvars130091%_
                   _%tlvars130093%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131077
                                                      (_%k130002%_
                                                       (let ((__tmp131078
                                                              (lambda (_%svar130114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130115%_
                               _%r130116%_)
                        (cons (cons _%svar130114%_ _%tlvar130115%_)
                              _%r130116%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131078
                  _%vars130104%_
                  _%svars130089%_
                  _%tlvars130093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131079
                                                  __tmp131077))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131086
                                           __tmp131080
                                           __tmp131076))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131087
                                    __tmp131075))
                                 '()))
                     '()))
              (__tmp131073
               (cons _%$lp130081%_ (cons _%$target130075%_ _%linit130097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131074
                                                   __tmp131073)))))
                                      (let ((_%body130102%_
                                             (let ((__tmp131089
                                                    (cons (cons (cons _%$target130075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130079%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target130000%_
                                 _%rlen130073%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131088
                                                    (_%recur129907%_
                                                     _%tl130070%_
                                                     _%vars129999%_
                                                     _%$tl130079%_
                                                     _%E130001%_
                                                     _%make-loop130100%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131089
                                                __tmp131088))))
                                        (let ((__tmp131093
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target130000%_)))
                                              (__tmp131090
                                               (if (zero? _%rlen130073%_)
                                                   _%body130102%_
                                                   (let ((__tmp131091
                                                          (let ((__tmp131092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target130000%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131092 _%rlen130073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131091
                                                      _%body130102%_
                                                      _%E130001%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131093
                                           __tmp131090
                                           _%E130001%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body130056130063%_))
                              (let ((_%hd130060130121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body130056130063%_)))
                                    (_%tl130061130123%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body130056130063%_))))
                                (let* ((_%hd130126%_ _%hd130060130121%_)
                                       (_%tl130128%_ _%tl130061130123%_))
                                  (_%K130059130118%_
                                   _%tl130128%_
                                   _%hd130126%_)))
                              (_%E130058130067%_)))
                        (if (eq? 'null _%$e130020%_)
                            (let ((__tmp131095
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target130000%_)))
                                  (__tmp131094 (_%k130002%_ _%vars129999%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131095
                               __tmp131094
                               _%E130001%_))
                            (if (eq? 'vector _%$e130020%_)
                                (let ((_%$e130130%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131100
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target130000%_)))
                                        (__tmp131096
                                         (let ((__tmp131098
                                                (cons (cons (cons _%$e130130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131099
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e129714%_
                                    _%target130000%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131099))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131097
                                                (_%recur129907%_
                                                 _%body130017%_
                                                 _%vars129999%_
                                                 _%$e130130%_
                                                 _%E130001%_
                                                 _%k130002%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131098
                                            __tmp131097))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131100
                                     __tmp131096
                                     _%E130001%_)))
                                (if (eq? 'box _%$e130020%_)
                                    (let ((_%$e130132%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131105
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target130000%_)))
                                            (__tmp131101
                                             (let ((__tmp131103
                                                    (cons (cons (cons _%$e130132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131104
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e129714%_
                                        _%target130000%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131104))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131102
                                                    (_%recur129907%_
                                                     _%body130017%_
                                                     _%vars129999%_
                                                     _%$e130132%_
                                                     _%E130001%_
                                                     _%k130002%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131103
                                                __tmp131102))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131105
                                         __tmp131101
                                         _%E130001%_)))
                                    (if (eq? 'datum _%$e130020%_)
                                        (let ((_%$e130134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131111
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target130000%_)))
                                                (__tmp131106
                                                 (let ((__tmp131110
                                                        (cons (cons (cons _%$e130134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target130000%_))
                                  '()))
                      '()))
               (__tmp131107
                (let ((__tmp131109
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130134%_ _%body130017%_)))
                      (__tmp131108 (_%k130002%_ _%vars129999%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131109 __tmp131108 _%E130001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131110
                                                    __tmp131107))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131111
                                             __tmp131106
                                             _%E130001%_)))
                                        (_%BUG129906%_
                                         _%e129998%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e130003130010%_))
                                      (let ((_%hd130007130139%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130003130010%_)))
                                            (_%tl130008130141%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130003130010%_))))
                                        (let* ((_%tag130144%_
                                                _%hd130007130139%_)
                                               (_%body130146%_
                                                _%tl130008130141%_))
                                          (_%K130006130136%_
                                           _%body130146%_
                                           _%tag130144%_)))
                                      (_%E130005130014%_)))))
                             (_%splice-rlen129908%_
                              (lambda (_%e129960%_)
                                (let _%lp129962%_ ((_%e129964%_ _%e129960%_)
                                                   (_%n129965%_ '0))
                                  (let* ((_%e129966129973%_ _%e129964%_)
                                         (_%E129968129977%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129966129973%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129969129986%_
                                          (lambda (_%body129980%_
                                                   _%tag129981%_)
                                            (let ((_%$e129983%_ _%tag129981%_))
                                              (if (eq? 'splice _%$e129983%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx129712%_
                                                     _%where129899%_))
                                                  (if (eq? 'cons _%$e129983%_)
                                                      (_%lp129962%_
                                                       (cdr _%body129980%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n129965%_
                                                                '1)))
                                                      _%n129965%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129966129973%_))
                                        (let ((_%hd129970129989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129966129973%_)))
                                              (_%tl129971129991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129966129973%_))))
                                          (let* ((_%tag129994%_
                                                  _%hd129970129989%_)
                                                 (_%body129996%_
                                                  _%tl129971129991%_))
                                            (_%K129969129986%_
                                             _%body129996%_
                                             _%tag129994%_)))
                                        (_%E129968129977%_))))))
                             (_%splice-vars129909%_
                              (lambda (_%e129916%_)
                                (let _%recur129918%_ ((_%e129920%_ _%e129916%_)
                                                      (_%vars129921%_ '()))
                                  (let* ((_%e129922129929%_ _%e129920%_)
                                         (_%E129924129933%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129922129929%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129925129948%_
                                          (lambda (_%body129936%_
                                                   _%tag129937%_)
                                            (let ((_%$e129939%_ _%tag129937%_))
                                              (if (eq? 'var _%$e129939%_)
                                                  (cons _%body129936%_
                                                        _%vars129921%_)
                                                  (if (or (eq? 'cons
                                                               _%$e129939%_)
                                                          (eq? 'splice
                                                               _%$e129939%_))
                                                      (_%recur129918%_
                                                       (cdr _%body129936%_)
                                                       (_%recur129918%_
                                                        (car _%body129936%_)
                                                        _%vars129921%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129939%_)
                      (eq? 'box _%$e129939%_))
                  (_%recur129918%_ _%body129936%_ _%vars129921%_)
                  _%vars129921%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129922129929%_))
                                        (let ((_%hd129926129951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129922129929%_)))
                                              (_%tl129927129953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129922129929%_))))
                                          (let* ((_%tag129956%_
                                                  _%hd129926129951%_)
                                                 (_%body129958%_
                                                  _%tl129927129953%_))
                                            (_%K129925129948%_
                                             _%body129958%_
                                             _%tag129956%_)))
                                        (_%E129924129933%_))))))
                             (_%make-body129910%_
                              (lambda (_%vars129912%_)
                                (cons _%K129903%_
                                      (map (lambda (_%mvar129914%_)
                                             (let ((__tmp131112
                                                    (car _%mvar129914%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131112
                                                _%vars129912%_
                                                _%BUG129906%_)))
                                           _%mvars129902%_)))))
                      (_%recur129907%_
                       _%hd129901%_
                       '()
                       _%target129900%_
                       _%E129904%_
                       _%make-body129910%_))))
                 (_%parse-clause129721%_
                  (lambda (_%hd129793%_ _%ids129794%_)
                    (let _%recur129796%_ ((_%e129798%_ _%hd129793%_)
                                          (_%vars129799%_ '())
                                          (_%depth129800%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e129798%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e129798%_))
                              (values '(any) _%vars129799%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e129798%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx129712%_
                                     _%hd129793%_))
                                  (if (let ((__tmp131113
                                             (lambda (_%id129805%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e129798%_
                                                  _%id129805%_)))))
                                        (declare (not safe))
                                        (__find __tmp131113 _%ids129794%_))
                                      (values (cons 'id _%e129798%_)
                                              _%vars129799%_)
                                      (if (let ((__tmp131114
                                                 (lambda (_%var129808%_)
                                                   (let ((__tmp131115
                                                          (car _%var129808%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e129798%_
                                                      __tmp131115)))))
                                            (declare (not safe))
                                            (__find __tmp131114
                                                    _%vars129799%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx129712%_
                                             _%e129798%_))
                                          (values (cons 'var _%e129798%_)
                                                  (cons (cons _%e129798%_
                                                              _%depth129800%_)
                                                        _%vars129799%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e129798%_))
                              (let* ((_%e129812129819%_ _%e129798%_)
                                     (_%E129814129823%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e129812129819%_))))
                                     (_%E129813129884%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e129812129819%_))
                                            (let ((_%e129815129827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e129812129819%_))))
                                              (let ((_%hd129816129830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e129815129827%_)))
                                                    (_%tl129817129832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e129815129827%_))))
                                                (let* ((_%hd129835%_
                                                        _%hd129816129830%_)
                                                       (_%rest129837%_
                                                        _%tl129817129832%_)
                                                       (_%make-pair129852%_
                                                        (lambda (_%tag129839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd129840%_
                         _%tl129841%_)
                  (let* ((_%hd-depth129843%_
                          (if (eq? _%tag129839%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth129800%_ '1))
                              _%depth129800%_))
                         (_g131116_
                          (_%recur129796%_
                           _%hd129840%_
                           _%vars129799%_
                           _%hd-depth129843%_)))
                    (begin
                      (let ((_g131117_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131116_)
                                   (##vector-length _g131116_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131117_ 2)))
                            (error "Context expects 2 values" _g131117_)))
                      (let ((_%hd129845%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131116_ 0)))
                            (_%vars129846%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131116_ 1))))
                        (let ((_g131118_
                               (_%recur129796%_
                                _%tl129841%_
                                _%vars129846%_
                                _%depth129800%_)))
                          (begin
                            (let ((_g131119_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131118_)
                                         (##vector-length _g131118_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131119_ 2)))
                                  (error "Context expects 2 values"
                                         _g131119_)))
                            (let ((_%tl129848%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131118_ 0)))
                                  (_%vars129849%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131118_ 1))))
                              (values (cons _%tag129839%_
                                            (cons _%hd129845%_ _%tl129848%_))
                                      _%vars129849%_)))))))))
               (_%e129853129860%_ _%rest129837%_)
               (_%E129855129864%_
                (lambda ()
                  (_%make-pair129852%_ 'cons _%hd129835%_ _%rest129837%_)))
               (_%E129854129880%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e129853129860%_))
                      (let ((_%e129856129868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e129853129860%_))))
                        (let ((_%hd129857129871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129856129868%_)))
                              (_%tl129858129873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129856129868%_))))
                          (let* ((_%rest-hd129876%_ _%hd129857129871%_)
                                 (_%rest-tl129878%_ _%tl129858129873%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd129876%_))
                                (_%make-pair129852%_
                                 'splice
                                 _%hd129835%_
                                 _%rest-tl129878%_)
                                (_%make-pair129852%_
                                 'cons
                                 _%hd129835%_
                                 _%rest129837%_)))))
                      (_%E129855129864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129854129880%_))))
                                            (_%E129814129823%_)))))
                                (_%E129813129884%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e129798%_))
                                  (values '(null) _%vars129799%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e129798%_))
                                      (let ((_g131120_
                                             (_%recur129796%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e129798%_)))
                                              _%vars129799%_
                                              _%depth129800%_)))
                                        (begin
                                          (let ((_g131121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131120_)
                                                       (##vector-length
                                                        _g131120_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131121_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131121_)))
                                          (let ((_%e129890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131120_ 0)))
                                                (_%vars129891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131120_
                                                    1))))
                                            (values (cons 'vector _%e129890%_)
                                                    _%vars129891%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e129798%_))
                                          (let ((_g131122_
                                                 (_%recur129796%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129798%_)))
                                                  _%vars129799%_
                                                  _%depth129800%_)))
                                            (begin
                                              (let ((_g131123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131122_)
                                                           (##vector-length
                                                            _g131122_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131123_)))
                                              (let ((_%e129894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131122_
                                                        0)))
                                                    (_%vars129895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131122_
                                                        1))))
                                                (values (cons 'box _%e129894%_)
                                                        _%vars129895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e129798%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e129798%_)))
                                                      _%vars129799%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx129712%_
                                                 _%e129798%_))))))))))))
          (let* ((_%e129722129735%_ _%stx129712%_)
                 (_%E129724129739%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e129722129735%_))))
                 (_%E129723129789%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129722129735%_))
                        (let ((_%e129725129743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129722129735%_))))
                          (let ((_%hd129726129746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129725129743%_)))
                                (_%tl129727129748%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129725129743%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129727129748%_))
                                (let ((_%e129728129751%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129727129748%_))))
                                  (let ((_%hd129729129754%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129728129751%_)))
                                        (_%tl129730129756%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129728129751%_))))
                                    (let ((_%expr129759%_ _%hd129729129754%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl129730129756%_))
                                          (let ((_%e129731129761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl129730129756%_))))
                                            (let ((_%hd129732129764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e129731129761%_)))
                                                  (_%tl129733129766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e129731129761%_))))
                                              (let* ((_%ids129769%_
                                                      _%hd129732129764%_)
                                                     (_%clauses129771%_
                                                      _%tl129733129766%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids129769%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses129771%_))
                                                        (let* ((_%ids129776%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids129769%_)))
                       (_%clauses129778%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses129771%_)))
                       (_%clause-ids129780%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses129778%_)))
                       (_%E129782%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target129784%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first129786%_
                        (if (null? _%clauses129778%_)
                            _%E129782%_
                            (car _%clause-ids129780%_))))
                  (let ((__tmp131125
                         (let ((__tmp131126
                                (let ((__tmp131128
                                       (let ((__tmp131130
                                              (cons (cons (cons _%E129782%_
                                                                '())
                                                          (cons (let ((__tmp131132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target129784%_ '()))
                              (__tmp131131
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target129784%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131132 __tmp131131))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131129
                                              (_%generate-body129718%_
                                               (_%generate-bindings129717%_
                                                _%target129784%_
                                                _%ids129776%_
                                                _%clauses129778%_
                                                _%clause-ids129780%_
                                                _%E129782%_)
                                               (cons _%first129786%_
                                                     (cons _%expr129759%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131130
                                          __tmp131129)))
                                      (__tmp131127
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx129712%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131128
                                   __tmp131127))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131126)))
                        (__tmp131124
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx129712%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131125 __tmp131124)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx129712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx129712%_
                                                       _%ids129769%_))))))
                                          (_%E129724129739%_)))))
                                (_%E129724129739%_))))
                        (_%E129724129739%_)))))
            (_%E129723129789%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130437%_)
        (let* ((_%identifier=?130439%_ 'free-identifier=?)
               (_%unwrap-e130441%_ 'syntax-e)
               (_%wrap-e130443%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130437%_
           _%identifier=?130439%_
           _%unwrap-e130441%_
           _%wrap-e130443%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130445%_ _%identifier=?130446%_)
        (let* ((_%unwrap-e130448%_ 'syntax-e) (_%wrap-e130450%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130445%_
           _%identifier=?130446%_
           _%unwrap-e130448%_
           _%wrap-e130450%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130452%_ _%identifier=?130453%_ _%unwrap-e130454%_)
        (let ((_%wrap-e130456%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130452%_
           _%identifier=?130453%_
           _%unwrap-e130454%_
           _%wrap-e130456%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131134_
        (let ((_g131133_ (let () (declare (not safe)) (##length _g131134_))))
          (cond ((let () (declare (not safe)) (##fx= _g131133_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131134_))
                ((let () (declare (not safe)) (##fx= _g131133_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131134_))
                ((let () (declare (not safe)) (##fx= _g131133_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131134_))
                ((let () (declare (not safe)) (##fx= _g131133_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131134_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx129709%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx129709%_))
            (let ((__tmp131135
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx129709%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131135 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd129667%_ . _%rest129668%_)
        (let ((_%len129670%_ (length _%hd129667%_)))
          (let _%lp129672%_ ((_%rest129674%_ _%rest129668%_))
            (let* ((_%rest129675129683%_ _%rest129674%_)
                   (_%else129677129691%_ (lambda () '#!void))
                   (_%K129679129697%_
                    (lambda (_%rest129694%_ _%hd129695%_)
                      (if (let ((__tmp131136 (length _%hd129695%_)))
                            (declare (not safe))
                            (##fx= _%len129670%_ __tmp131136))
                          (_%lp129672%_ _%rest129694%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd129695%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest129675129683%_))
                  (let ((_%hd129680129700%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest129675129683%_)))
                        (_%tl129681129702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest129675129683%_))))
                    (let* ((_%hd129705%_ _%hd129680129700%_)
                           (_%rest129707%_ _%tl129681129702%_))
                      (_%K129679129697%_ _%rest129707%_ _%hd129705%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129622%_ _%n129623%_)
        (let _%lp129625%_ ((_%rest129627%_ _%stx129622%_) (_%r129628%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129627%_))
              (let* ((_%g129629129636%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129627%_)))
                     (_%E129631129640%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129629129636%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129632129646%_
                      (lambda (_%rest129643%_ _%hd129644%_)
                        (_%lp129625%_
                         _%rest129643%_
                         (cons _%hd129644%_ _%r129628%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129629129636%_))
                    (let ((_%hd129633129649%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129629129636%_)))
                          (_%tl129634129651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129629129636%_))))
                      (let* ((_%hd129654%_ _%hd129633129649%_)
                             (_%rest129656%_ _%tl129634129651%_))
                        (_%K129632129646%_ _%rest129656%_ _%hd129654%_)))
                    (_%E129631129640%_)))
              (let _%lp129658%_ ((_%n129660%_ _%n129623%_)
                                 (_%l129661%_ _%r129628%_)
                                 (_%r129662%_ _%rest129627%_))
                (if (null? _%l129661%_)
                    (values _%l129661%_ _%r129662%_)
                    (if (fxpositive? _%n129660%_)
                        (_%lp129658%_
                         (let () (declare (not safe)) (##fx- _%n129660%_ '1))
                         (cdr _%l129661%_)
                         (cons (car _%l129661%_) _%r129662%_))
                        (values (reverse _%l129661%_) _%r129662%_))))))))))
