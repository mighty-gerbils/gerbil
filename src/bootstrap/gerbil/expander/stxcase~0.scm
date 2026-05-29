(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1779967244)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp191937 (list gx#expander::t))
            (__tmp191936 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp191937
         '(id depth)
         __tmp191936
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args191933%_
        (apply make-instance gx#syntax-pattern::t _%$args191933%_)))
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
      (lambda (_%self191919%_ _%stx191920%_)
        (let ((_%self191923%_ _%self191919%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx191920%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx191386%_)
        (letrec ((_%generate191388%_
                  (lambda (_%e191628%_)
                    (letrec ((_%BUG191630%_
                              (lambda (_%q191795%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx191386%_
                                         _%e191628%_
                                         _%q191795%_))))
                             (_%local-pattern-e191631%_
                              (lambda (_%pat191793%_)
                                (let ((__tmp191938
                                       (##structure-ref
                                        _%pat191793%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp191938))))
                             (_%getvar191632%_
                              (lambda (_%q191790%_ _%vars191791%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q191790%_
                                   _%vars191791%_
                                   _%BUG191630%_))))
                             (_%getarg191633%_
                              (lambda (_%arg191756%_ _%vars191757%_)
                                (let* ((_%arg191758191765%_ _%arg191756%_)
                                       (_%E191760191769%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg191758191765%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K191761191778%_
                                        (lambda (_%e191772%_ _%tag191773%_)
                                          (let ((_%$e191775%_ _%tag191773%_))
                                            (if (eq? 'ref _%$e191775%_)
                                                (_%getvar191632%_
                                                 _%e191772%_
                                                 _%vars191757%_)
                                                (if (eq? 'pattern _%$e191775%_)
                                                    (_%local-pattern-e191631%_
                                                     _%e191772%_)
                                                    (_%BUG191630%_
                                                     _%arg191756%_)))))))
                                  (if (pair? _%arg191758191765%_)
                                      (let ((_%hd191762191781%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg191758191765%_)))
                                            (_%tl191763191783%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg191758191765%_))))
                                        (let* ((_%tag191786%_
                                                _%hd191762191781%_)
                                               (_%e191788%_
                                                _%tl191763191783%_))
                                          (_%K191761191778%_
                                           _%e191788%_
                                           _%tag191786%_)))
                                      (_%E191760191769%_))))))
                      (let _%recur191635%_ ((_%e191637%_ _%e191628%_)
                                            (_%vars191638%_ '()))
                        (let* ((_%e191639191646%_ _%e191637%_)
                               (_%E191641191650%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e191639191646%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K191642191744%_
                                (lambda (_%body191653%_ _%tag191654%_)
                                  (let ((_%$e191656%_ _%tag191654%_))
                                    (if (eq? 'datum _%$e191656%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body191653%_))
                                        (if (eq? 'term _%$e191656%_)
                                            (let ((_%id191659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body191653%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id191659%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks191662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id191659%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks191662%_)
                                                        (let ((__tmp191939
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body191653%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp191939))
                (let ((__tmp191941
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body191653%_)))
                      (__tmp191940
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body191653%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp191941
                   __tmp191940
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id191659%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body191653%_))
                                                      (_%BUG191630%_
                                                       _%e191637%_))))
                                            (if (eq? 'pattern _%$e191656%_)
                                                (_%local-pattern-e191631%_
                                                 _%body191653%_)
                                                (if (eq? 'ref _%$e191656%_)
                                                    (_%getvar191632%_
                                                     _%body191653%_
                                                     _%vars191638%_)
                                                    (if (eq? 'cons
                                                             _%$e191656%_)
                                                        (let ((__tmp191943
                                                               (_%recur191635%_
                                                                (car _%body191653%_)
                                                                _%vars191638%_))
                                                              (__tmp191942
                                                               (_%recur191635%_
                                                                (cdr _%body191653%_)
                                                                _%vars191638%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp191943
                                                           __tmp191942))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e191656%_)
                    (let ((__tmp191944
                           (_%recur191635%_ _%body191653%_ _%vars191638%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp191944))
                    (if (eq? 'box _%$e191656%_)
                        (let ((__tmp191945
                               (_%recur191635%_
                                _%body191653%_
                                _%vars191638%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp191945))
                        (if (eq? 'splice _%$e191656%_)
                            (let* ((_%body191665191676%_ _%body191653%_)
                                   (_%E191667191680%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body191665191676%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K191668191718%_
                                    (lambda (_%args191683%_
                                             _%iv191684%_
                                             _%hd191685%_
                                             _%depth191686%_)
                                      (let* ((_%targets191692%_
                                              (map (lambda (_%g191687191689%_)
                                                     (_%getarg191633%_
                                                      _%g191687191689%_
                                                      _%vars191638%_))
                                                   _%args191683%_))
                                             (_%fold-in191694%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args191683%_)))
                                             (_%fold-out191696%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args191698%_
                                              (let ((__tmp191946
                                                     (cons _%fold-out191696%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp191946
                                                 _%fold-in191694%_)))
                                             (_%lambda-body191715%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth191686%_ '1))
                                                  (let ((_%r-args191706%_
                                                         (map (lambda (_%arg191700%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg191700%_)))
                      _%args191683%_))
                (_%r-vars191707%_
                 (let ((__tmp191947
                        (lambda (_%arg191702%_ _%var191703%_ _%r191704%_)
                          (cons (cons (cdr _%arg191702%_) _%var191703%_)
                                _%r191704%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp191947
                    _%vars191638%_
                    _%args191683%_
                    _%fold-in191694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur191635%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth191686%_ '1))
                         (cons _%hd191685%_
                               (cons (cons 'var _%fold-out191696%_)
                                     _%r-args191706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars191707%_))
                                                  (let* ((_%hd-vars191713%_
                                                          (let ((__tmp191948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg191709%_ _%var191710%_ _%r191711%_)
                           (cons (cons (cdr _%arg191709%_) _%var191710%_)
                                 _%r191711%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp191948
                     _%vars191638%_
                     _%args191683%_
                     _%fold-in191694%_)))
                 (__tmp191949
                  (_%recur191635%_ _%hd191685%_ _%hd-vars191713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp191949
                                                     _%fold-out191696%_)))))
                                        (let ((__tmp191953
                                               (if (let ((__tmp191954
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets191692%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp191954 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets191692%_))
                                                   '#!void))
                                              (__tmp191950
                                               (let ((__tmp191952
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args191698%_
                                                         _%lambda-body191715%_)))
                                                     (__tmp191951
                                                      (_%recur191635%_
                                                       _%iv191684%_
                                                       _%vars191638%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp191952
                                                  __tmp191951
                                                  _%targets191692%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp191953
                                           __tmp191950))))))
                              (if (pair? _%body191665191676%_)
                                  (let ((_%hd191669191721%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body191665191676%_)))
                                        (_%tl191670191723%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body191665191676%_))))
                                    (let ((_%depth191726%_ _%hd191669191721%_))
                                      (if (pair? _%tl191670191723%_)
                                          (let ((_%hd191671191728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl191670191723%_)))
                                                (_%tl191672191730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl191670191723%_))))
                                            (let ((_%hd191733%_
                                                   _%hd191671191728%_))
                                              (if (pair? _%tl191672191730%_)
                                                  (let ((_%hd191673191735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl191672191730%_)))
                                                        (_%tl191674191737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl191672191730%_))))
                                                    (let* ((_%iv191740%_
                                                            _%hd191673191735%_)
                                                           (_%args191742%_
                                                            _%tl191674191737%_))
                                                      (_%K191668191718%_
                                                       _%args191742%_
                                                       _%iv191740%_
                                                       _%hd191733%_
                                                       _%depth191726%_)))
                                                  (_%E191667191680%_))))
                                          (_%E191667191680%_))))
                                  (_%E191667191680%_)))
                            (if (eq? 'var _%$e191656%_)
                                _%body191653%_
                                (_%BUG191630%_ _%e191637%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e191639191646%_)
                              (let ((_%hd191643191747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191639191646%_)))
                                    (_%tl191644191749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191639191646%_))))
                                (let* ((_%tag191752%_ _%hd191643191747%_)
                                       (_%body191754%_ _%tl191644191749%_))
                                  (_%K191642191744%_
                                   _%body191754%_
                                   _%tag191752%_)))
                              (_%E191641191650%_)))))))
                 (_%parse191389%_
                  (lambda (_%e191430%_)
                    (letrec ((_%make-cons191432%_
                              (lambda (_%hd191620%_ _%tl191621%_)
                                (let ((_g191955_ _%hd191620%_)
                                      (_g191957_ _%tl191621%_))
                                  (begin
                                    (let ((_g191956_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191955_)
                                                 (##values-length _g191955_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191956_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191956_)))
                                    (let ((_g191958_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191957_)
                                                 (##values-length _g191957_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191958_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191958_)))
                                    (let ((_%hd-e191623%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191955_ 0)))
                                          (_%hd-vars191624%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191955_ 1))))
                                      (let ((_%tl-e191625%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191957_ 0)))
                                            (_%tl-vars191626%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191957_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e191623%_
                                                            _%tl-e191625%_))
                                                (append _%hd-vars191624%_
                                                        _%tl-vars191626%_))))))))
                             (_%make-splice191433%_
                              (lambda (_%where191556%_
                                       _%depth191557%_
                                       _%hd191558%_
                                       _%tl191559%_)
                                (let ((_g191959_ _%hd191558%_)
                                      (_g191961_ _%tl191559%_))
                                  (begin
                                    (let ((_g191960_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191959_)
                                                 (##values-length _g191959_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191960_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191960_)))
                                    (let ((_g191962_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191961_)
                                                 (##values-length _g191961_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191962_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191962_)))
                                    (let ((_%hd-e191561%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191959_ 0)))
                                          (_%hd-vars191562%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191959_ 1))))
                                      (let ((_%tl-e191563%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191961_ 0)))
                                            (_%tl-vars191564%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g191961_ 1))))
                                        (let _%lp191566%_ ((_%rest191568%_
                                                            _%hd-vars191562%_)
                                                           (_%targets191569%_
                                                            '())
                                                           (_%vars191570%_
                                                            _%tl-vars191564%_))
                                          (let* ((_%rest191571191581%_
                                                  _%rest191568%_)
                                                 (_%else191573191589%_
                                                  (lambda ()
                                                    (if (null? _%targets191569%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx191386%_
                                                           _%where191556%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth191557%_
                                    (cons _%hd-e191561%_
                                          (cons _%tl-e191563%_
                                                _%targets191569%_))))
                        _%vars191570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K191575191601%_
                                                  (lambda (_%rest191592%_
                                                           _%hd-pat191593%_
                                                           _%hd-depth*191594%_)
                                                    (let ((_%hd-depth191596%_
                                                           (fx- _%hd-depth*191594%_
                                                                _%depth191557%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth191596%_))
                                                          (_%lp191566%_
                                                           _%rest191592%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat191593%_)
                         _%targets191569%_)
                   (cons (cons _%hd-depth191596%_ _%hd-pat191593%_)
                         _%vars191570%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth191596%_))
                      (_%lp191566%_
                       _%rest191592%_
                       (cons (cons 'pattern _%hd-pat191593%_)
                             _%targets191569%_)
                       _%vars191570%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx191386%_
                         _%where191556%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest191571191581%_)
                                                (let ((_%hd191576191604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest191571191581%_)))
                                                      (_%tl191577191606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest191571191581%_))))
                                                  (if (pair? _%hd191576191604%_)
                                                      (let ((_%hd191578191609%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd191576191604%_)))
                    (_%tl191579191611%_
                     (let () (declare (not safe)) (##cdr _%hd191576191604%_))))
                (let* ((_%hd-depth*191614%_ _%hd191578191609%_)
                       (_%hd-pat191616%_ _%tl191579191611%_)
                       (_%rest191618%_ _%tl191577191606%_))
                  (_%K191575191601%_
                   _%rest191618%_
                   _%hd-pat191616%_
                   _%hd-depth*191614%_)))
              (_%else191573191589%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else191573191589%_))))))))))
                             (_%recur191434%_
                              (lambda (_%e191439%_ _%is-e?191440%_)
                                (if (_%is-e?191440%_ _%e191439%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx191386%_))
                                    (if (gx#syntax-local-pattern? _%e191439%_)
                                        (let* ((_%pat191444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e191439%_)))
                                               (_%depth191446%_
                                                (##structure-ref
                                                 _%pat191444%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth191446%_)
                                              (values (cons 'ref _%pat191444%_)
                                                      (cons (cons _%depth191446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat191444%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat191444%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e191439%_))
                                            (values (cons 'term _%e191439%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e191439%_))
                                                (let* ((_%e191450191457%_
                                                        _%e191439%_)
                                                       (_%E191452191461%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e191450191457%_))))
                                                       (_%E191451191543%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e191450191457%_))
                      (let ((_%e191453191465%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e191450191457%_))))
                        (let ((_%hd191454191468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191453191465%_)))
                              (_%tl191455191470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191453191465%_))))
                          (let* ((_%hd191473%_ _%hd191454191468%_)
                                 (_%rest191475%_ _%tl191455191470%_))
                            (if (_%is-e?191440%_ _%hd191473%_)
                                (let* ((_%e191476191483%_ _%rest191475%_)
                                       (_%E191478191487%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx191386%_
                                             _%e191439%_))))
                                       (_%E191477191501%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e191476191483%_))
                                              (let ((_%e191479191491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e191476191483%_))))
                                                (let ((_%hd191480191494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191479191491%_)))
                                                      (_%tl191481191496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191479191491%_))))
                                                  (let ((_%rest191499%_
                                                         _%hd191480191494%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191481191496%_))
                                                        (_%recur191434%_
                                                         _%rest191499%_
                                                         false)
                                                        (_%E191478191487%_)))))
                                              (_%E191478191487%_)))))
                                  (_%E191477191501%_))
                                (let _%lp191505%_ ((_%rest191507%_
                                                    _%rest191475%_)
                                                   (_%depth191508%_ '0))
                                  (let* ((_%e191509191516%_ _%rest191507%_)
                                         (_%E191511191520%_
                                          (lambda ()
                                            (if (fxpositive? _%depth191508%_)
                                                (_%make-splice191433%_
                                                 _%e191439%_
                                                 _%depth191508%_
                                                 (_%recur191434%_
                                                  _%hd191473%_
                                                  _%is-e?191440%_)
                                                 (_%recur191434%_
                                                  _%rest191507%_
                                                  _%is-e?191440%_))
                                                (_%make-cons191432%_
                                                 (_%recur191434%_
                                                  _%hd191473%_
                                                  _%is-e?191440%_)
                                                 (_%recur191434%_
                                                  _%rest191507%_
                                                  _%is-e?191440%_)))))
                                         (_%E191510191539%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e191509191516%_))
                                                (let ((_%e191512191524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e191509191516%_))))
                                                  (let ((_%hd191513191527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191512191524%_)))
                                                        (_%tl191514191529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191512191524%_))))
                                                    (let* ((_%rest-hd191532%_
                                                            _%hd191513191527%_)
                                                           (_%rest-tl191534%_
                                                            _%tl191514191529%_))
                                                      (if (_%is-e?191440%_
                                                           _%rest-hd191532%_)
                                                          (_%lp191505%_
                                                           _%rest-tl191534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth191508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth191508%_)
                      (_%make-splice191433%_
                       _%e191439%_
                       _%depth191508%_
                       (_%recur191434%_ _%hd191473%_ _%is-e?191440%_)
                       (_%recur191434%_ _%rest191507%_ _%is-e?191440%_))
                      (_%make-cons191432%_
                       (_%recur191434%_ _%hd191473%_ _%is-e?191440%_)
                       (_%recur191434%_ _%rest191507%_ _%is-e?191440%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E191511191520%_)))))
                                    (_%E191510191539%_)))))))
                      (_%E191452191461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E191451191543%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e191439%_))
                                                    (let ((_g191963_
                                                           (_%recur191434%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e191439%_)))
                    _%is-e?191440%_)))
              (begin
                (let ((_g191964_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g191963_)
                             (##values-length _g191963_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g191964_ 2)))
                      (error "Context expects 2 values" _g191964_)))
                (let ((_%e191548%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191963_ 0)))
                      (_%vars191549%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191963_ 1))))
                  (values (cons 'vector _%e191548%_) _%vars191549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e191439%_))
                                                        (let ((_g191965_
                                                               (_%recur191434%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e191439%_)))
                        _%is-e?191440%_)))
                  (begin
                    (let ((_g191966_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g191965_)
                                 (##values-length _g191965_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g191966_ 2)))
                          (error "Context expects 2 values" _g191966_)))
                    (let ((_%e191552%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g191965_ 0)))
                          (_%vars191553%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g191965_ 1))))
                      (values (cons 'box _%e191552%_) _%vars191553%_))))
                (values (cons 'datum _%e191439%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g191967_
                             (_%recur191434%_ _%e191430%_ gx#ellipsis?)))
                        (begin
                          (let ((_g191968_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g191967_)
                                       (##values-length _g191967_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g191968_ 2)))
                                (error "Context expects 2 values" _g191968_)))
                          (let ((_%tree191436%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g191967_ 0)))
                                (_%vars191437%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g191967_ 1))))
                            (if (null? _%vars191437%_)
                                _%tree191436%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx191386%_
                                   _%vars191437%_))))))))))
          (let* ((_%e191390191400%_ _%stx191386%_)
                 (_%E191392191404%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx191386%_))))
                 (_%E191391191426%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e191390191400%_))
                        (let ((_%e191393191408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e191390191400%_))))
                          (let ((_%hd191394191411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191393191408%_)))
                                (_%tl191395191413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191393191408%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl191395191413%_))
                                (let ((_%e191396191416%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl191395191413%_))))
                                  (let ((_%hd191397191419%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191396191416%_)))
                                        (_%tl191398191421%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191396191416%_))))
                                    (let ((_%form191424%_ _%hd191397191419%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191398191421%_))
                                          (let ((__tmp191970
                                                 (_%generate191388%_
                                                  (_%parse191389%_
                                                   _%form191424%_)))
                                                (__tmp191969
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx191386%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp191970
                                             __tmp191969))
                                          (_%E191392191404%_)))))
                                (_%E191392191404%_))))
                        (_%E191392191404%_)))))
            (_%E191391191426%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx190635%_
               _%identifier=?190636%_
               _%unwrap-e190637%_
               _%wrap-e190638%_)
        (letrec ((_%generate-bindings190640%_
                  (lambda (_%target191250%_
                           _%ids191251%_
                           _%clauses191252%_
                           _%clause-ids191253%_
                           _%E191254%_)
                    (letrec ((_%generate1191256%_
                              (lambda (_%clause191353%_
                                       _%clause-id191354%_
                                       _%E191355%_)
                                (cons (cons _%clause-id191354%_ '())
                                      (cons (let ((__tmp191972
                                                   (cons _%target191250%_ '()))
                                                  (__tmp191971
                                                   (_%generate-clause190642%_
                                                    _%target191250%_
                                                    _%ids191251%_
                                                    _%clause191353%_
                                                    _%E191355%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp191972
                                               __tmp191971))
                                            '())))))
                      (let _%lp191258%_ ((_%rest191260%_ _%clauses191252%_)
                                         (_%rest-ids191261%_
                                          _%clause-ids191253%_)
                                         (_%bindings191262%_ '()))
                        (let* ((_%rest191263191271%_ _%rest191260%_)
                               (_%else191265191279%_
                                (lambda () _%bindings191262%_))
                               (_%K191267191341%_
                                (lambda (_%rest191282%_ _%clause191283%_)
                                  (let* ((_%rest-ids191284191291%_
                                          _%rest-ids191261%_)
                                         (_%E191286191295%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids191284191291%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K191287191329%_
                                          (lambda (_%rest-ids191298%_
                                                   _%clause-id191299%_)
                                            (let* ((_%rest-ids191300191308%_
                                                    _%rest-ids191298%_)
                                                   (_%else191302191316%_
                                                    (lambda ()
                                                      (cons (_%generate1191256%_
                                                             _%clause191283%_
                                                             _%clause-id191299%_
                                                             _%E191254%_)
                                                            _%bindings191262%_)))
                                                   (_%K191304191321%_
                                                    (lambda (_%next-clause-id191319%_)
                                                      (_%lp191258%_
                                                       _%rest191282%_
                                                       _%rest-ids191298%_
                                                       (cons (_%generate1191256%_
                                                              _%clause191283%_
                                                              _%clause-id191299%_
                                                              _%next-clause-id191319%_)
                                                             _%bindings191262%_)))))
                                              (if (pair? _%rest-ids191300191308%_)
                                                  (let* ((_%hd191305191324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids191300191308%_)))
                                                         (_%next-clause-id191327%_
                                                          _%hd191305191324%_))
                                                    (_%K191304191321%_
                                                     _%next-clause-id191327%_))
                                                  (_%else191302191316%_))))))
                                    (if (pair? _%rest-ids191284191291%_)
                                        (let ((_%hd191288191332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids191284191291%_)))
                                              (_%tl191289191334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids191284191291%_))))
                                          (let* ((_%clause-id191337%_
                                                  _%hd191288191332%_)
                                                 (_%rest-ids191339%_
                                                  _%tl191289191334%_))
                                            (_%K191287191329%_
                                             _%rest-ids191339%_
                                             _%clause-id191337%_)))
                                        (_%E191286191295%_))))))
                          (if (pair? _%rest191263191271%_)
                              (let ((_%hd191268191344%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest191263191271%_)))
                                    (_%tl191269191346%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest191263191271%_))))
                                (let* ((_%clause191349%_ _%hd191268191344%_)
                                       (_%rest191351%_ _%tl191269191346%_))
                                  (_%K191267191341%_
                                   _%rest191351%_
                                   _%clause191349%_)))
                              (_%else191265191279%_)))))))
                 (_%generate-body190641%_
                  (lambda (_%bindings191210%_ _%body191211%_)
                    (let _%recur191213%_ ((_%rest191215%_ _%bindings191210%_))
                      (let* ((_%rest191216191224%_ _%rest191215%_)
                             (_%else191218191232%_ (lambda () _%body191211%_))
                             (_%K191220191238%_
                              (lambda (_%rest191235%_ _%hd191236%_)
                                (let ((__tmp191974 (cons _%hd191236%_ '()))
                                      (__tmp191973
                                       (_%recur191213%_ _%rest191235%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp191974
                                   __tmp191973)))))
                        (if (pair? _%rest191216191224%_)
                            (let ((_%hd191221191241%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest191216191224%_)))
                                  (_%tl191222191243%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest191216191224%_))))
                              (let* ((_%hd191246%_ _%hd191221191241%_)
                                     (_%rest191248%_ _%tl191222191243%_))
                                (_%K191220191238%_
                                 _%rest191248%_
                                 _%hd191246%_)))
                            (_%else191218191232%_))))))
                 (_%generate-clause190642%_
                  (lambda (_%target191073%_
                           _%ids191074%_
                           _%clause191075%_
                           _%E191076%_)
                    (letrec ((_%generate1191078%_
                              (lambda (_%hd191165%_
                                       _%fender191166%_
                                       _%body191167%_)
                                (let ((_g191975_
                                       (_%parse-clause190644%_
                                        _%hd191165%_
                                        _%ids191074%_)))
                                  (begin
                                    (let ((_g191976_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191975_)
                                                 (##values-length _g191975_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191976_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191976_)))
                                    (let ((_%e191169%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191975_ 0)))
                                          (_%mvars191170%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g191975_ 1))))
                                      (let* ((_%pvars191172%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars191170%_))))
                                             (_%E191174%_
                                              (cons _%E191076%_
                                                    (cons _%target191073%_
                                                          '())))
                                             (_%K191207%_
                                              (let ((__tmp191977
                                                     (let ((__tmp191979
                                                            (map (lambda (_%mvar191176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar191177%_)
                           (let* ((_%mvar191178191185%_ _%mvar191176%_)
                                  (_%E191180191189%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar191178191185%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K191181191195%_
                                   (lambda (_%depth191192%_ _%id191193%_)
                                     (cons _%id191193%_
                                           (cons (let ((__tmp191981
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id191193%_)))
                                                       (__tmp191980
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar191177%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp191981
                                                    __tmp191980
                                                    _%depth191192%_))
                                                 '())))))
                             (if (pair? _%mvar191178191185%_)
                                 (let ((_%hd191182191198%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar191178191185%_)))
                                       (_%tl191183191200%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar191178191185%_))))
                                   (let* ((_%id191203%_ _%hd191182191198%_)
                                          (_%depth191205%_ _%tl191183191200%_))
                                     (_%K191181191195%_
                                      _%depth191205%_
                                      _%id191203%_)))
                                 (_%E191180191189%_))))
                         _%mvars191170%_
                         _%pvars191172%_))
                   (__tmp191978
                    (if (eq? _%fender191166%_ '#t)
                        _%body191167%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender191166%_
                           _%body191167%_
                           _%E191174%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp191979 __tmp191978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars191172%_
                                                 __tmp191977))))
                                        (_%generate-match190643%_
                                         _%hd191165%_
                                         _%target191073%_
                                         _%e191169%_
                                         _%mvars191170%_
                                         _%K191207%_
                                         _%E191174%_))))))))
                      (let* ((_%e191079191099%_ _%clause191075%_)
                             (_%E191088191103%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e191079191099%_))))
                             (_%E191081191137%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e191079191099%_))
                                    (let ((_%e191089191107%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e191079191099%_))))
                                      (let ((_%hd191090191110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191089191107%_)))
                                            (_%tl191091191112%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191089191107%_))))
                                        (let ((_%hd191115%_
                                               _%hd191090191110%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191091191112%_))
                                              (let ((_%e191092191117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl191091191112%_))))
                                                (let ((_%hd191093191120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191092191117%_)))
                                                      (_%tl191094191122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191092191117%_))))
                                                  (let ((_%fender191125%_
                                                         _%hd191093191120%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl191094191122%_))
                                                        (let ((_%e191095191127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl191094191122%_))))
                  (let ((_%hd191096191130%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191095191127%_)))
                        (_%tl191097191132%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191095191127%_))))
                    (let ((_%body191135%_ _%hd191096191130%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191097191132%_))
                          (_%generate1191078%_
                           _%hd191115%_
                           _%fender191125%_
                           _%body191135%_)
                          (_%E191088191103%_)))))
                (_%E191088191103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E191088191103%_)))))
                                    (_%E191088191103%_))))
                             (_%E191080191161%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e191079191099%_))
                                    (let ((_%e191082191141%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e191079191099%_))))
                                      (let ((_%hd191083191144%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191082191141%_)))
                                            (_%tl191084191146%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191082191141%_))))
                                        (let ((_%hd191149%_
                                               _%hd191083191144%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191084191146%_))
                                              (let ((_%e191085191151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl191084191146%_))))
                                                (let ((_%hd191086191154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191085191151%_)))
                                                      (_%tl191087191156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191085191151%_))))
                                                  (let ((_%body191159%_
                                                         _%hd191086191154%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191087191156%_))
                                                        (_%generate1191078%_
                                                         _%hd191149%_
                                                         '#t
                                                         _%body191159%_)
                                                        (_%E191081191137%_)))))
                                              (_%E191081191137%_)))))
                                    (_%E191081191137%_)))))
                        (_%E191080191161%_)))))
                 (_%generate-match190643%_
                  (lambda (_%where190822%_
                           _%target190823%_
                           _%hd190824%_
                           _%mvars190825%_
                           _%K190826%_
                           _%E190827%_)
                    (letrec ((_%BUG190829%_
                              (lambda (_%q191071%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx190635%_
                                         _%hd190824%_
                                         _%q191071%_))))
                             (_%recur190830%_
                              (lambda (_%e190921%_
                                       _%vars190922%_
                                       _%target190923%_
                                       _%E190924%_
                                       _%k190925%_)
                                (let* ((_%e190926190933%_ _%e190921%_)
                                       (_%E190928190937%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e190926190933%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K190929191059%_
                                        (lambda (_%body190940%_ _%tag190941%_)
                                          (let ((_%$e190943%_ _%tag190941%_))
                                            (if (eq? 'any _%$e190943%_)
                                                (_%k190925%_ _%vars190922%_)
                                                (if (eq? 'id _%$e190943%_)
                                                    (let ((__tmp191986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target190923%_)))
                                                          (__tmp191982
                                                           (let ((__tmp191984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191985
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e190638%_
                                    _%body190940%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?190636%_
                             __tmp191985
                             _%target190923%_)))
                         (__tmp191983 (_%k190925%_ _%vars190922%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp191984 __tmp191983 _%E190924%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp191986 __tmp191982 _%E190924%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e190943%_)
                                                        (_%k190925%_
                                                         (cons (cons _%body190940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target190923%_)
                       _%vars190922%_))
                (if (eq? 'cons _%$e190943%_)
                    (let ((_%$e190946%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd190947%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl190948%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp191992
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target190923%_)))
                            (__tmp191987
                             (let ((__tmp191991
                                    (cons (cons (cons _%$e190946%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e190637%_
                                                         _%target190923%_))
                                                      '()))
                                          '()))
                                   (__tmp191988
                                    (let ((__tmp191990
                                           (cons (cons (cons _%$hd190947%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e190946%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl190948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e190946%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp191989
                                           (let* ((_%body190949190956%_
                                                   _%body190940%_)
                                                  (_%E190951190960%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body190949190956%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K190952190968%_
                                                   (lambda (_%tl190963%_
                                                            _%hd190964%_)
                                                     (_%recur190830%_
                                                      _%hd190964%_
                                                      _%vars190922%_
                                                      _%$hd190947%_
                                                      _%E190924%_
                                                      (lambda (_%vars190966%_)
                                                        (_%recur190830%_
                                                         _%tl190963%_
                                                         _%vars190966%_
                                                         _%$tl190948%_
                                                         _%E190924%_
                                                         _%k190925%_))))))
                                             (if (pair? _%body190949190956%_)
                                                 (let ((_%hd190953190971%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body190949190956%_)))
                                                       (_%tl190954190973%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body190949190956%_))))
                                                   (let* ((_%hd190976%_
                                                           _%hd190953190971%_)
                                                          (_%tl190978%_
                                                           _%tl190954190973%_))
                                                     (_%K190952190968%_
                                                      _%tl190978%_
                                                      _%hd190976%_)))
                                                 (_%E190951190960%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp191990
                                       __tmp191989))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp191991
                                __tmp191988))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp191992
                         __tmp191987
                         _%E190924%_)))
                    (if (eq? 'splice _%$e190943%_)
                        (let* ((_%body190979190986%_ _%body190940%_)
                               (_%E190981190990%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body190979190986%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K190982191041%_
                                (lambda (_%tl190993%_ _%hd190994%_)
                                  (let* ((_%rlen190996%_
                                          (_%splice-rlen190831%_ _%tl190993%_))
                                         (_%$target190998%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd191000%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl191002%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp191004%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e191006%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd191008%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl191010%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars191012%_
                                          (_%splice-vars190832%_ _%hd190994%_))
                                         (_%lvars191014%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars191012%_)))
                                         (_%tlvars191016%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars191012%_)))
                                         (_%linit191020%_
                                          (map (lambda (_%var191018%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars191014%_)))
                                    (letrec ((_%make-loop191023%_
                                              (lambda (_%vars191027%_)
                                                (let ((__tmp191994
                                                       (cons (cons (cons _%$lp191004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp192007
                                        (cons _%$hd191000%_ _%lvars191014%_))
                                       (__tmp191995
                                        (let ((__tmp192006
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd191000%_)))
                                              (__tmp192000
                                               (let ((__tmp192005
                                                      (cons (cons (cons _%$lp-e191006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e190637%_
                                   _%$hd191000%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192001
                                                      (let ((__tmp192004
                                                             (cons (cons (cons _%$lp-hd191008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e191006%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl191010%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e191006%_))
                                             '()))
                                 '())))
                    (__tmp192002
                     (_%recur190830%_
                      _%hd190994%_
                      '()
                      _%$lp-hd191008%_
                      _%E190924%_
                      (lambda (_%hdvars191029%_)
                        (cons _%$lp191004%_
                              (cons _%$lp-tl191010%_
                                    (map (lambda (_%svar191031%_
                                                  _%lvar191032%_)
                                           (let ((__tmp192003
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar191031%_
                                                     _%hdvars191029%_
                                                     _%BUG190829%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp192003
                                              _%lvar191032%_)))
                                         _%svars191012%_
                                         _%lvars191014%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp192004 __tmp192002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp192005
                                                  __tmp192001)))
                                              (__tmp191996
                                               (let ((__tmp191999
                                                      (map (lambda (_%lvar191034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar191035%_)
                     (cons (cons _%tlvar191035%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar191034%_))
                                 '())))
                   _%lvars191014%_
                   _%tlvars191016%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191997
                                                      (_%k190925%_
                                                       (let ((__tmp191998
                                                              (lambda (_%svar191037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar191038%_
                               _%r191039%_)
                        (cons (cons _%svar191037%_ _%tlvar191038%_)
                              _%r191039%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp191998
                  _%vars191027%_
                  _%svars191012%_
                  _%tlvars191016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp191999
                                                  __tmp191997))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp192006
                                           __tmp192000
                                           __tmp191996))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp192007
                                    __tmp191995))
                                 '()))
                     '()))
              (__tmp191993
               (cons _%$lp191004%_ (cons _%$target190998%_ _%linit191020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp191994
                                                   __tmp191993)))))
                                      (let ((_%body191025%_
                                             (let ((__tmp192009
                                                    (cons (cons (cons _%$target190998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl191002%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target190923%_
                                 _%rlen190996%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192008
                                                    (_%recur190830%_
                                                     _%tl190993%_
                                                     _%vars190922%_
                                                     _%$tl191002%_
                                                     _%E190924%_
                                                     _%make-loop191023%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192009
                                                __tmp192008))))
                                        (let ((__tmp192013
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target190923%_)))
                                              (__tmp192010
                                               (if (zero? _%rlen190996%_)
                                                   _%body191025%_
                                                   (let ((__tmp192011
                                                          (let ((__tmp192012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target190923%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp192012 _%rlen190996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp192011
                                                      _%body191025%_
                                                      _%E190924%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp192013
                                           __tmp192010
                                           _%E190924%_))))))))
                          (if (pair? _%body190979190986%_)
                              (let ((_%hd190983191044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body190979190986%_)))
                                    (_%tl190984191046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body190979190986%_))))
                                (let* ((_%hd191049%_ _%hd190983191044%_)
                                       (_%tl191051%_ _%tl190984191046%_))
                                  (_%K190982191041%_
                                   _%tl191051%_
                                   _%hd191049%_)))
                              (_%E190981190990%_)))
                        (if (eq? 'null _%$e190943%_)
                            (let ((__tmp192015
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target190923%_)))
                                  (__tmp192014 (_%k190925%_ _%vars190922%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp192015
                               __tmp192014
                               _%E190924%_))
                            (if (eq? 'vector _%$e190943%_)
                                (let ((_%$e191053%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp192020
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target190923%_)))
                                        (__tmp192016
                                         (let ((__tmp192018
                                                (cons (cons (cons _%$e191053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp192019
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e190637%_
                                    _%target190923%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp192019))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp192017
                                                (_%recur190830%_
                                                 _%body190940%_
                                                 _%vars190922%_
                                                 _%$e191053%_
                                                 _%E190924%_
                                                 _%k190925%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp192018
                                            __tmp192017))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp192020
                                     __tmp192016
                                     _%E190924%_)))
                                (if (eq? 'box _%$e190943%_)
                                    (let ((_%$e191055%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp192025
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target190923%_)))
                                            (__tmp192021
                                             (let ((__tmp192023
                                                    (cons (cons (cons _%$e191055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp192024
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e190637%_
                                        _%target190923%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp192024))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192022
                                                    (_%recur190830%_
                                                     _%body190940%_
                                                     _%vars190922%_
                                                     _%$e191055%_
                                                     _%E190924%_
                                                     _%k190925%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192023
                                                __tmp192022))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp192025
                                         __tmp192021
                                         _%E190924%_)))
                                    (if (eq? 'datum _%$e190943%_)
                                        (let ((_%$e191057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp192031
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target190923%_)))
                                                (__tmp192026
                                                 (let ((__tmp192030
                                                        (cons (cons (cons _%$e191057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target190923%_))
                                  '()))
                      '()))
               (__tmp192027
                (let ((__tmp192029
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e191057%_ _%body190940%_)))
                      (__tmp192028 (_%k190925%_ _%vars190922%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp192029 __tmp192028 _%E190924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp192030
                                                    __tmp192027))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp192031
                                             __tmp192026
                                             _%E190924%_)))
                                        (_%BUG190829%_
                                         _%e190921%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e190926190933%_)
                                      (let ((_%hd190930191062%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190926190933%_)))
                                            (_%tl190931191064%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190926190933%_))))
                                        (let* ((_%tag191067%_
                                                _%hd190930191062%_)
                                               (_%body191069%_
                                                _%tl190931191064%_))
                                          (_%K190929191059%_
                                           _%body191069%_
                                           _%tag191067%_)))
                                      (_%E190928190937%_)))))
                             (_%splice-rlen190831%_
                              (lambda (_%e190883%_)
                                (let _%lp190885%_ ((_%e190887%_ _%e190883%_)
                                                   (_%n190888%_ '0))
                                  (let* ((_%e190889190896%_ _%e190887%_)
                                         (_%E190891190900%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e190889190896%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K190892190909%_
                                          (lambda (_%body190903%_
                                                   _%tag190904%_)
                                            (let ((_%$e190906%_ _%tag190904%_))
                                              (if (eq? 'splice _%$e190906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx190635%_
                                                     _%where190822%_))
                                                  (if (eq? 'cons _%$e190906%_)
                                                      (_%lp190885%_
                                                       (cdr _%body190903%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n190888%_
                                                                '1)))
                                                      _%n190888%_))))))
                                    (if (pair? _%e190889190896%_)
                                        (let ((_%hd190893190912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190889190896%_)))
                                              (_%tl190894190914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190889190896%_))))
                                          (let* ((_%tag190917%_
                                                  _%hd190893190912%_)
                                                 (_%body190919%_
                                                  _%tl190894190914%_))
                                            (_%K190892190909%_
                                             _%body190919%_
                                             _%tag190917%_)))
                                        (_%E190891190900%_))))))
                             (_%splice-vars190832%_
                              (lambda (_%e190839%_)
                                (let _%recur190841%_ ((_%e190843%_ _%e190839%_)
                                                      (_%vars190844%_ '()))
                                  (let* ((_%e190845190852%_ _%e190843%_)
                                         (_%E190847190856%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e190845190852%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K190848190871%_
                                          (lambda (_%body190859%_
                                                   _%tag190860%_)
                                            (let ((_%$e190862%_ _%tag190860%_))
                                              (if (eq? 'var _%$e190862%_)
                                                  (cons _%body190859%_
                                                        _%vars190844%_)
                                                  (if (or (eq? 'cons
                                                               _%$e190862%_)
                                                          (eq? 'splice
                                                               _%$e190862%_))
                                                      (_%recur190841%_
                                                       (cdr _%body190859%_)
                                                       (_%recur190841%_
                                                        (car _%body190859%_)
                                                        _%vars190844%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e190862%_)
                      (eq? 'box _%$e190862%_))
                  (_%recur190841%_ _%body190859%_ _%vars190844%_)
                  _%vars190844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e190845190852%_)
                                        (let ((_%hd190849190874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190845190852%_)))
                                              (_%tl190850190876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190845190852%_))))
                                          (let* ((_%tag190879%_
                                                  _%hd190849190874%_)
                                                 (_%body190881%_
                                                  _%tl190850190876%_))
                                            (_%K190848190871%_
                                             _%body190881%_
                                             _%tag190879%_)))
                                        (_%E190847190856%_))))))
                             (_%make-body190833%_
                              (lambda (_%vars190835%_)
                                (cons _%K190826%_
                                      (map (lambda (_%mvar190837%_)
                                             (let ((__tmp192032
                                                    (car _%mvar190837%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp192032
                                                _%vars190835%_
                                                _%BUG190829%_)))
                                           _%mvars190825%_)))))
                      (_%recur190830%_
                       _%hd190824%_
                       '()
                       _%target190823%_
                       _%E190827%_
                       _%make-body190833%_))))
                 (_%parse-clause190644%_
                  (lambda (_%hd190716%_ _%ids190717%_)
                    (let _%recur190719%_ ((_%e190721%_ _%hd190716%_)
                                          (_%vars190722%_ '())
                                          (_%depth190723%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e190721%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e190721%_))
                              (values '(any) _%vars190722%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e190721%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx190635%_
                                     _%hd190716%_))
                                  (if (let ((__tmp192033
                                             (lambda (_%id190728%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e190721%_
                                                  _%id190728%_)))))
                                        (declare (not safe))
                                        (__find __tmp192033 _%ids190717%_))
                                      (values (cons 'id _%e190721%_)
                                              _%vars190722%_)
                                      (if (let ((__tmp192034
                                                 (lambda (_%var190731%_)
                                                   (let ((__tmp192035
                                                          (car _%var190731%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e190721%_
                                                      __tmp192035)))))
                                            (declare (not safe))
                                            (__find __tmp192034
                                                    _%vars190722%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx190635%_
                                             _%e190721%_))
                                          (values (cons 'var _%e190721%_)
                                                  (cons (cons _%e190721%_
                                                              _%depth190723%_)
                                                        _%vars190722%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e190721%_))
                              (let* ((_%e190735190742%_ _%e190721%_)
                                     (_%E190737190746%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e190735190742%_))))
                                     (_%E190736190807%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e190735190742%_))
                                            (let ((_%e190738190750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e190735190742%_))))
                                              (let ((_%hd190739190753%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e190738190750%_)))
                                                    (_%tl190740190755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e190738190750%_))))
                                                (let* ((_%hd190758%_
                                                        _%hd190739190753%_)
                                                       (_%rest190760%_
                                                        _%tl190740190755%_)
                                                       (_%make-pair190775%_
                                                        (lambda (_%tag190762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd190763%_
                         _%tl190764%_)
                  (let* ((_%hd-depth190766%_
                          (if (eq? _%tag190762%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth190723%_ '1))
                              _%depth190723%_))
                         (_g192036_
                          (_%recur190719%_
                           _%hd190763%_
                           _%vars190722%_
                           _%hd-depth190766%_)))
                    (begin
                      (let ((_g192037_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g192036_)
                                   (##values-length _g192036_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g192037_ 2)))
                            (error "Context expects 2 values" _g192037_)))
                      (let ((_%hd190768%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g192036_ 0)))
                            (_%vars190769%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g192036_ 1))))
                        (let ((_g192038_
                               (_%recur190719%_
                                _%tl190764%_
                                _%vars190769%_
                                _%depth190723%_)))
                          (begin
                            (let ((_g192039_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g192038_)
                                         (##values-length _g192038_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g192039_ 2)))
                                  (error "Context expects 2 values"
                                         _g192039_)))
                            (let ((_%tl190771%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g192038_ 0)))
                                  (_%vars190772%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g192038_ 1))))
                              (values (cons _%tag190762%_
                                            (cons _%hd190768%_ _%tl190771%_))
                                      _%vars190772%_)))))))))
               (_%e190776190783%_ _%rest190760%_)
               (_%E190778190787%_
                (lambda ()
                  (_%make-pair190775%_ 'cons _%hd190758%_ _%rest190760%_)))
               (_%E190777190803%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e190776190783%_))
                      (let ((_%e190779190791%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190776190783%_))))
                        (let ((_%hd190780190794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190779190791%_)))
                              (_%tl190781190796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190779190791%_))))
                          (let* ((_%rest-hd190799%_ _%hd190780190794%_)
                                 (_%rest-tl190801%_ _%tl190781190796%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd190799%_))
                                (_%make-pair190775%_
                                 'splice
                                 _%hd190758%_
                                 _%rest-tl190801%_)
                                (_%make-pair190775%_
                                 'cons
                                 _%hd190758%_
                                 _%rest190760%_)))))
                      (_%E190778190787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190777190803%_))))
                                            (_%E190737190746%_)))))
                                (_%E190736190807%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e190721%_))
                                  (values '(null) _%vars190722%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e190721%_))
                                      (let ((_g192040_
                                             (_%recur190719%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e190721%_)))
                                              _%vars190722%_
                                              _%depth190723%_)))
                                        (begin
                                          (let ((_g192041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192040_)
                                                       (##values-length
                                                        _g192040_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192041_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192041_)))
                                          (let ((_%e190813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192040_ 0)))
                                                (_%vars190814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192040_
                                                    1))))
                                            (values (cons 'vector _%e190813%_)
                                                    _%vars190814%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e190721%_))
                                          (let ((_g192042_
                                                 (_%recur190719%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e190721%_)))
                                                  _%vars190722%_
                                                  _%depth190723%_)))
                                            (begin
                                              (let ((_g192043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g192042_)
                                                           (##values-length
                                                            _g192042_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g192043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g192043_)))
                                              (let ((_%e190817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g192042_
                                                        0)))
                                                    (_%vars190818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g192042_
                                                        1))))
                                                (values (cons 'box _%e190817%_)
                                                        _%vars190818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e190721%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e190721%_)))
                                                      _%vars190722%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx190635%_
                                                 _%e190721%_))))))))))))
          (let* ((_%e190645190658%_ _%stx190635%_)
                 (_%E190647190662%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e190645190658%_))))
                 (_%E190646190712%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190645190658%_))
                        (let ((_%e190648190666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190645190658%_))))
                          (let ((_%hd190649190669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190648190666%_)))
                                (_%tl190650190671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190648190666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190650190671%_))
                                (let ((_%e190651190674%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190650190671%_))))
                                  (let ((_%hd190652190677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190651190674%_)))
                                        (_%tl190653190679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190651190674%_))))
                                    (let ((_%expr190682%_ _%hd190652190677%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190653190679%_))
                                          (let ((_%e190654190684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl190653190679%_))))
                                            (let ((_%hd190655190687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190654190684%_)))
                                                  (_%tl190656190689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190654190684%_))))
                                              (let* ((_%ids190692%_
                                                      _%hd190655190687%_)
                                                     (_%clauses190694%_
                                                      _%tl190656190689%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids190692%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses190694%_))
                                                        (let* ((_%ids190699%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids190692%_)))
                       (_%clauses190701%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses190694%_)))
                       (_%clause-ids190703%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses190701%_)))
                       (_%E190705%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target190707%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first190709%_
                        (if (null? _%clauses190701%_)
                            _%E190705%_
                            (car _%clause-ids190703%_))))
                  (let ((__tmp192045
                         (let ((__tmp192046
                                (let ((__tmp192048
                                       (let ((__tmp192050
                                              (cons (cons (cons _%E190705%_
                                                                '())
                                                          (cons (let ((__tmp192052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target190707%_ '()))
                              (__tmp192051
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target190707%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp192052 __tmp192051))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp192049
                                              (_%generate-body190641%_
                                               (_%generate-bindings190640%_
                                                _%target190707%_
                                                _%ids190699%_
                                                _%clauses190701%_
                                                _%clause-ids190703%_
                                                _%E190705%_)
                                               (cons _%first190709%_
                                                     (cons _%expr190682%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp192050
                                          __tmp192049)))
                                      (__tmp192047
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx190635%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp192048
                                   __tmp192047))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp192046)))
                        (__tmp192044
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx190635%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp192045 __tmp192044)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx190635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx190635%_
                                                       _%ids190692%_))))))
                                          (_%E190647190662%_)))))
                                (_%E190647190662%_))))
                        (_%E190647190662%_)))))
            (_%E190646190712%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx191360%_)
        (let* ((_%identifier=?191362%_ 'free-identifier=?)
               (_%unwrap-e191364%_ 'syntax-e)
               (_%wrap-e191366%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191360%_
           _%identifier=?191362%_
           _%unwrap-e191364%_
           _%wrap-e191366%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx191368%_ _%identifier=?191369%_)
        (let* ((_%unwrap-e191371%_ 'syntax-e) (_%wrap-e191373%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191368%_
           _%identifier=?191369%_
           _%unwrap-e191371%_
           _%wrap-e191373%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx191375%_ _%identifier=?191376%_ _%unwrap-e191377%_)
        (let ((_%wrap-e191379%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191375%_
           _%identifier=?191376%_
           _%unwrap-e191377%_
           _%wrap-e191379%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g192053_
        (let ((_g192054_ (let () (declare (not safe)) (##length _g192053_))))
          (cond ((let () (declare (not safe)) (##fx= _g192054_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g192053_))
                ((let () (declare (not safe)) (##fx= _g192054_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g192053_))
                ((let () (declare (not safe)) (##fx= _g192054_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g192053_))
                ((let () (declare (not safe)) (##fx= _g192054_ 4))
                 (apply gx#macro-expand-syntax-case__% _g192053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g192053_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx190632%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx190632%_))
            (let ((__tmp192055
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx190632%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp192055 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd190590%_ . _%rest190591%_)
        (let ((_%len190593%_ (length _%hd190590%_)))
          (let _%lp190595%_ ((_%rest190597%_ _%rest190591%_))
            (let* ((_%rest190598190606%_ _%rest190597%_)
                   (_%else190600190614%_ (lambda () '#!void))
                   (_%K190602190620%_
                    (lambda (_%rest190617%_ _%hd190618%_)
                      (if (let ((__tmp192056 (length _%hd190618%_)))
                            (declare (not safe))
                            (##fx= _%len190593%_ __tmp192056))
                          (_%lp190595%_ _%rest190617%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd190618%_))))))
              (if (pair? _%rest190598190606%_)
                  (let ((_%hd190603190623%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest190598190606%_)))
                        (_%tl190604190625%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest190598190606%_))))
                    (let* ((_%hd190628%_ _%hd190603190623%_)
                           (_%rest190630%_ _%tl190604190625%_))
                      (_%K190602190620%_ _%rest190630%_ _%hd190628%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx190540%_ _%n190541%_)
        (let _%lp190543%_ ((_%rest190546%_ _%stx190540%_) (_%r190548%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest190546%_))
              (let* ((_%g190550190557%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest190546%_)))
                     (_%E190552190561%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g190550190557%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K190553190568%_
                      (lambda (_%rest190564%_ _%hd190565%_)
                        (_%lp190543%_
                         _%rest190564%_
                         (cons _%hd190565%_ _%r190548%_)))))
                (if (pair? _%g190550190557%_)
                    (let ((_%hd190554190571%_
                           (let ()
                             (declare (not safe))
                             (##car _%g190550190557%_)))
                          (_%tl190555190573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g190550190557%_))))
                      (let* ((_%hd190576%_ _%hd190554190571%_)
                             (_%rest190578%_ _%tl190555190573%_))
                        (_%K190553190568%_ _%rest190578%_ _%hd190576%_)))
                    (_%E190552190561%_)))
              (let _%lp190580%_ ((_%n190582%_ _%n190541%_)
                                 (_%l190583%_ _%r190548%_)
                                 (_%r190585%_ _%rest190546%_))
                (if (null? _%l190583%_)
                    (values _%l190583%_ _%r190585%_)
                    (if (fxpositive? _%n190582%_)
                        (_%lp190580%_
                         (let () (declare (not safe)) (##fx- _%n190582%_ '1))
                         (cdr _%l190583%_)
                         (cons (car _%l190583%_) _%r190585%_))
                        (values (reverse! _%l190583%_) _%r190585%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx190490%_ _%n190491%_)
        (let _%lp190493%_ ((_%rest190496%_ _%stx190490%_) (_%r190498%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest190496%_))
              (let* ((_%g190500190507%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest190496%_)))
                     (_%E190502190511%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g190500190507%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K190503190518%_
                      (lambda (_%rest190514%_ _%hd190515%_)
                        (_%lp190493%_
                         _%rest190514%_
                         (cons _%hd190515%_ _%r190498%_)))))
                (if (pair? _%g190500190507%_)
                    (let ((_%hd190504190521%_
                           (let ()
                             (declare (not safe))
                             (##car _%g190500190507%_)))
                          (_%tl190505190523%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g190500190507%_))))
                      (let* ((_%hd190526%_ _%hd190504190521%_)
                             (_%rest190528%_ _%tl190505190523%_))
                        (_%K190503190518%_ _%rest190528%_ _%hd190526%_)))
                    (_%E190502190511%_)))
              (let _%lp190530%_ ((_%n190532%_ _%n190491%_)
                                 (_%l190533%_ _%r190498%_)
                                 (_%r190535%_ _%rest190496%_))
                (if (null? _%l190533%_)
                    (vector _%l190533%_ _%r190535%_)
                    (if (fxpositive? _%n190532%_)
                        (_%lp190530%_
                         (let () (declare (not safe)) (##fx- _%n190532%_ '1))
                         (cdr _%l190533%_)
                         (cons (car _%l190533%_) _%r190535%_))
                        (vector (reverse! _%l190533%_) _%r190535%_))))))))))
