(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1733870075)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp132965 (list gx#expander::t))
            (__tmp132964 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp132965
         '(id depth)
         __tmp132964
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args132961%_
        (apply make-instance gx#syntax-pattern::t _%$args132961%_)))
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
      (lambda (_%self131568132945%_ _%stx132947%_)
        (let* ((_%self132949%_ _%self131568132945%_)
               (_%self132951%_ _%self132949%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx132947%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx132411%_)
        (letrec ((_%generate132413%_
                  (lambda (_%e132653%_)
                    (letrec ((_%BUG132655%_
                              (lambda (_%q132820%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx132411%_
                                         _%e132653%_
                                         _%q132820%_))))
                             (_%local-pattern-e132656%_
                              (lambda (_%pat132818%_)
                                (let ((__tmp132966
                                       (##structure-ref
                                        _%pat132818%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp132966))))
                             (_%getvar132657%_
                              (lambda (_%q132815%_ _%vars132816%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q132815%_
                                   _%vars132816%_
                                   _%BUG132655%_))))
                             (_%getarg132658%_
                              (lambda (_%arg132781%_ _%vars132782%_)
                                (let* ((_%arg132783132790%_ _%arg132781%_)
                                       (_%E132785132794%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132783132790%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132786132803%_
                                        (lambda (_%e132797%_ _%tag132798%_)
                                          (let ((_%$e132800%_ _%tag132798%_))
                                            (if (eq? 'ref _%$e132800%_)
                                                (_%getvar132657%_
                                                 _%e132797%_
                                                 _%vars132782%_)
                                                (if (eq? 'pattern _%$e132800%_)
                                                    (_%local-pattern-e132656%_
                                                     _%e132797%_)
                                                    (_%BUG132655%_
                                                     _%arg132781%_)))))))
                                  (if (pair? _%arg132783132790%_)
                                      (let ((_%hd132787132806%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132783132790%_)))
                                            (_%tl132788132808%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132783132790%_))))
                                        (let* ((_%tag132811%_
                                                _%hd132787132806%_)
                                               (_%e132813%_
                                                _%tl132788132808%_))
                                          (_%K132786132803%_
                                           _%e132813%_
                                           _%tag132811%_)))
                                      (_%E132785132794%_))))))
                      (let _%recur132660%_ ((_%e132662%_ _%e132653%_)
                                            (_%vars132663%_ '()))
                        (let* ((_%e132664132671%_ _%e132662%_)
                               (_%E132666132675%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132664132671%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132667132769%_
                                (lambda (_%body132678%_ _%tag132679%_)
                                  (let ((_%$e132681%_ _%tag132679%_))
                                    (if (eq? 'datum _%$e132681%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132678%_))
                                        (if (eq? 'term _%$e132681%_)
                                            (let ((_%id132684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132678%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132684%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132684%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132687%_)
                                                        (let ((__tmp132967
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132678%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp132967))
                (let ((__tmp132969
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132678%_)))
                      (__tmp132968
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132678%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp132969
                   __tmp132968
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132684%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132678%_))
                                                      (_%BUG132655%_
                                                       _%e132662%_))))
                                            (if (eq? 'pattern _%$e132681%_)
                                                (_%local-pattern-e132656%_
                                                 _%body132678%_)
                                                (if (eq? 'ref _%$e132681%_)
                                                    (_%getvar132657%_
                                                     _%body132678%_
                                                     _%vars132663%_)
                                                    (if (eq? 'cons
                                                             _%$e132681%_)
                                                        (let ((__tmp132971
                                                               (_%recur132660%_
                                                                (car _%body132678%_)
                                                                _%vars132663%_))
                                                              (__tmp132970
                                                               (_%recur132660%_
                                                                (cdr _%body132678%_)
                                                                _%vars132663%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp132971
                                                           __tmp132970))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132681%_)
                    (let ((__tmp132972
                           (_%recur132660%_ _%body132678%_ _%vars132663%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp132972))
                    (if (eq? 'box _%$e132681%_)
                        (let ((__tmp132973
                               (_%recur132660%_
                                _%body132678%_
                                _%vars132663%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp132973))
                        (if (eq? 'splice _%$e132681%_)
                            (let* ((_%body132690132701%_ _%body132678%_)
                                   (_%E132692132705%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132690132701%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132693132743%_
                                    (lambda (_%args132708%_
                                             _%iv132709%_
                                             _%hd132710%_
                                             _%depth132711%_)
                                      (let* ((_%targets132717%_
                                              (map (lambda (_%g132712132714%_)
                                                     (_%getarg132658%_
                                                      _%g132712132714%_
                                                      _%vars132663%_))
                                                   _%args132708%_))
                                             (_%fold-in132719%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132708%_)))
                                             (_%fold-out132721%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132723%_
                                              (let ((__tmp132974
                                                     (cons _%fold-out132721%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp132974
                                                 _%fold-in132719%_)))
                                             (_%lambda-body132740%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132711%_ '1))
                                                  (let ((_%r-args132731%_
                                                         (map (lambda (_%arg132725%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132725%_)))
                      _%args132708%_))
                (_%r-vars132732%_
                 (let ((__tmp132975
                        (lambda (_%arg132727%_ _%var132728%_ _%r132729%_)
                          (cons (cons (cdr _%arg132727%_) _%var132728%_)
                                _%r132729%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp132975
                    _%vars132663%_
                    _%args132708%_
                    _%fold-in132719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132660%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132711%_ '1))
                         (cons _%hd132710%_
                               (cons (cons 'var _%fold-out132721%_)
                                     _%r-args132731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132732%_))
                                                  (let* ((_%hd-vars132738%_
                                                          (let ((__tmp132976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132734%_ _%var132735%_ _%r132736%_)
                           (cons (cons (cdr _%arg132734%_) _%var132735%_)
                                 _%r132736%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp132976
                     _%vars132663%_
                     _%args132708%_
                     _%fold-in132719%_)))
                 (__tmp132977
                  (_%recur132660%_ _%hd132710%_ _%hd-vars132738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp132977
                                                     _%fold-out132721%_)))))
                                        (let ((__tmp132981
                                               (if (let ((__tmp132982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132717%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp132982 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132717%_))
                                                   '#!void))
                                              (__tmp132978
                                               (let ((__tmp132980
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132723%_
                                                         _%lambda-body132740%_)))
                                                     (__tmp132979
                                                      (_%recur132660%_
                                                       _%iv132709%_
                                                       _%vars132663%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp132980
                                                  __tmp132979
                                                  _%targets132717%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp132981
                                           __tmp132978))))))
                              (if (pair? _%body132690132701%_)
                                  (let ((_%hd132694132746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132690132701%_)))
                                        (_%tl132695132748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132690132701%_))))
                                    (let ((_%depth132751%_ _%hd132694132746%_))
                                      (if (pair? _%tl132695132748%_)
                                          (let ((_%hd132696132753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132695132748%_)))
                                                (_%tl132697132755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132695132748%_))))
                                            (let ((_%hd132758%_
                                                   _%hd132696132753%_))
                                              (if (pair? _%tl132697132755%_)
                                                  (let ((_%hd132698132760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132697132755%_)))
                                                        (_%tl132699132762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132697132755%_))))
                                                    (let* ((_%iv132765%_
                                                            _%hd132698132760%_)
                                                           (_%args132767%_
                                                            _%tl132699132762%_))
                                                      (_%K132693132743%_
                                                       _%args132767%_
                                                       _%iv132765%_
                                                       _%hd132758%_
                                                       _%depth132751%_)))
                                                  (_%E132692132705%_))))
                                          (_%E132692132705%_))))
                                  (_%E132692132705%_)))
                            (if (eq? 'var _%$e132681%_)
                                _%body132678%_
                                (_%BUG132655%_ _%e132662%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e132664132671%_)
                              (let ((_%hd132668132772%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132664132671%_)))
                                    (_%tl132669132774%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132664132671%_))))
                                (let* ((_%tag132777%_ _%hd132668132772%_)
                                       (_%body132779%_ _%tl132669132774%_))
                                  (_%K132667132769%_
                                   _%body132779%_
                                   _%tag132777%_)))
                              (_%E132666132675%_)))))))
                 (_%parse132414%_
                  (lambda (_%e132455%_)
                    (letrec ((_%make-cons132457%_
                              (lambda (_%hd132645%_ _%tl132646%_)
                                (let ((_g132983_ _%hd132645%_)
                                      (_g132985_ _%tl132646%_))
                                  (begin
                                    (let ((_g132984_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132983_)
                                                 (##vector-length _g132983_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132984_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132984_)))
                                    (let ((_g132986_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132985_)
                                                 (##vector-length _g132985_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132986_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132986_)))
                                    (let ((_%hd-e132648%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132983_ 0)))
                                          (_%hd-vars132649%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132983_ 1))))
                                      (let ((_%tl-e132650%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132985_ 0)))
                                            (_%tl-vars132651%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132985_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132648%_
                                                            _%tl-e132650%_))
                                                (append _%hd-vars132649%_
                                                        _%tl-vars132651%_))))))))
                             (_%make-splice132458%_
                              (lambda (_%where132581%_
                                       _%depth132582%_
                                       _%hd132583%_
                                       _%tl132584%_)
                                (let ((_g132987_ _%hd132583%_)
                                      (_g132989_ _%tl132584%_))
                                  (begin
                                    (let ((_g132988_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132987_)
                                                 (##vector-length _g132987_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132988_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132988_)))
                                    (let ((_g132990_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132989_)
                                                 (##vector-length _g132989_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132990_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132990_)))
                                    (let ((_%hd-e132586%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132987_ 0)))
                                          (_%hd-vars132587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132987_ 1))))
                                      (let ((_%tl-e132588%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132989_ 0)))
                                            (_%tl-vars132589%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132989_ 1))))
                                        (let _%lp132591%_ ((_%rest132593%_
                                                            _%hd-vars132587%_)
                                                           (_%targets132594%_
                                                            '())
                                                           (_%vars132595%_
                                                            _%tl-vars132589%_))
                                          (let* ((_%rest132596132606%_
                                                  _%rest132593%_)
                                                 (_%else132598132614%_
                                                  (lambda ()
                                                    (if (null? _%targets132594%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx132411%_
                                                           _%where132581%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth132582%_
                                    (cons _%hd-e132586%_
                                          (cons _%tl-e132588%_
                                                _%targets132594%_))))
                        _%vars132595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K132600132626%_
                                                  (lambda (_%rest132617%_
                                                           _%hd-pat132618%_
                                                           _%hd-depth*132619%_)
                                                    (let ((_%hd-depth132621%_
                                                           (fx- _%hd-depth*132619%_
                                                                _%depth132582%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth132621%_))
                                                          (_%lp132591%_
                                                           _%rest132617%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat132618%_)
                         _%targets132594%_)
                   (cons (cons _%hd-depth132621%_ _%hd-pat132618%_)
                         _%vars132595%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth132621%_))
                      (_%lp132591%_
                       _%rest132617%_
                       (cons (cons 'pattern _%hd-pat132618%_)
                             _%targets132594%_)
                       _%vars132595%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx132411%_
                         _%where132581%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest132596132606%_)
                                                (let ((_%hd132601132629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest132596132606%_)))
                                                      (_%tl132602132631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest132596132606%_))))
                                                  (if (pair? _%hd132601132629%_)
                                                      (let ((_%hd132603132634%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd132601132629%_)))
                    (_%tl132604132636%_
                     (let () (declare (not safe)) (##cdr _%hd132601132629%_))))
                (let* ((_%hd-depth*132639%_ _%hd132603132634%_)
                       (_%hd-pat132641%_ _%tl132604132636%_)
                       (_%rest132643%_ _%tl132602132631%_))
                  (_%K132600132626%_
                   _%rest132643%_
                   _%hd-pat132641%_
                   _%hd-depth*132639%_)))
              (_%else132598132614%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else132598132614%_))))))))))
                             (_%recur132459%_
                              (lambda (_%e132464%_ _%is-e?132465%_)
                                (if (_%is-e?132465%_ _%e132464%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx132411%_))
                                    (if (gx#syntax-local-pattern? _%e132464%_)
                                        (let* ((_%pat132469%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e132464%_)))
                                               (_%depth132471%_
                                                (##structure-ref
                                                 _%pat132469%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth132471%_)
                                              (values (cons 'ref _%pat132469%_)
                                                      (cons (cons _%depth132471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat132469%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat132469%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e132464%_))
                                            (values (cons 'term _%e132464%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e132464%_))
                                                (let* ((_%e132475132482%_
                                                        _%e132464%_)
                                                       (_%E132477132486%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e132475132482%_))))
                                                       (_%E132476132568%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e132475132482%_))
                      (let ((_%e132478132490%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132475132482%_))))
                        (let ((_%hd132479132493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132478132490%_)))
                              (_%tl132480132495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132478132490%_))))
                          (let* ((_%hd132498%_ _%hd132479132493%_)
                                 (_%rest132500%_ _%tl132480132495%_))
                            (if (_%is-e?132465%_ _%hd132498%_)
                                (let* ((_%e132501132508%_ _%rest132500%_)
                                       (_%E132503132512%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx132411%_
                                             _%e132464%_))))
                                       (_%E132502132526%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e132501132508%_))
                                              (let ((_%e132504132516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e132501132508%_))))
                                                (let ((_%hd132505132519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132504132516%_)))
                                                      (_%tl132506132521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132504132516%_))))
                                                  (let ((_%rest132524%_
                                                         _%hd132505132519%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132506132521%_))
                                                        (_%recur132459%_
                                                         _%rest132524%_
                                                         false)
                                                        (_%E132503132512%_)))))
                                              (_%E132503132512%_)))))
                                  (_%E132502132526%_))
                                (let _%lp132530%_ ((_%rest132532%_
                                                    _%rest132500%_)
                                                   (_%depth132533%_ '0))
                                  (let* ((_%e132534132541%_ _%rest132532%_)
                                         (_%E132536132545%_
                                          (lambda ()
                                            (if (fxpositive? _%depth132533%_)
                                                (_%make-splice132458%_
                                                 _%e132464%_
                                                 _%depth132533%_
                                                 (_%recur132459%_
                                                  _%hd132498%_
                                                  _%is-e?132465%_)
                                                 (_%recur132459%_
                                                  _%rest132532%_
                                                  _%is-e?132465%_))
                                                (_%make-cons132457%_
                                                 (_%recur132459%_
                                                  _%hd132498%_
                                                  _%is-e?132465%_)
                                                 (_%recur132459%_
                                                  _%rest132532%_
                                                  _%is-e?132465%_)))))
                                         (_%E132535132564%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e132534132541%_))
                                                (let ((_%e132537132549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e132534132541%_))))
                                                  (let ((_%hd132538132552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e132537132549%_)))
                                                        (_%tl132539132554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e132537132549%_))))
                                                    (let* ((_%rest-hd132557%_
                                                            _%hd132538132552%_)
                                                           (_%rest-tl132559%_
                                                            _%tl132539132554%_))
                                                      (if (_%is-e?132465%_
                                                           _%rest-hd132557%_)
                                                          (_%lp132530%_
                                                           _%rest-tl132559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth132533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth132533%_)
                      (_%make-splice132458%_
                       _%e132464%_
                       _%depth132533%_
                       (_%recur132459%_ _%hd132498%_ _%is-e?132465%_)
                       (_%recur132459%_ _%rest132532%_ _%is-e?132465%_))
                      (_%make-cons132457%_
                       (_%recur132459%_ _%hd132498%_ _%is-e?132465%_)
                       (_%recur132459%_ _%rest132532%_ _%is-e?132465%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E132536132545%_)))))
                                    (_%E132535132564%_)))))))
                      (_%E132477132486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132476132568%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e132464%_))
                                                    (let ((_g132991_
                                                           (_%recur132459%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e132464%_)))
                    _%is-e?132465%_)))
              (begin
                (let ((_g132992_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g132991_)
                             (##vector-length _g132991_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g132992_ 2)))
                      (error "Context expects 2 values" _g132992_)))
                (let ((_%e132573%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132991_ 0)))
                      (_%vars132574%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132991_ 1))))
                  (values (cons 'vector _%e132573%_) _%vars132574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e132464%_))
                                                        (let ((_g132993_
                                                               (_%recur132459%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e132464%_)))
                        _%is-e?132465%_)))
                  (begin
                    (let ((_g132994_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g132993_)
                                 (##vector-length _g132993_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g132994_ 2)))
                          (error "Context expects 2 values" _g132994_)))
                    (let ((_%e132577%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132993_ 0)))
                          (_%vars132578%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132993_ 1))))
                      (values (cons 'box _%e132577%_) _%vars132578%_))))
                (values (cons 'datum _%e132464%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g132995_
                             (_%recur132459%_ _%e132455%_ gx#ellipsis?)))
                        (begin
                          (let ((_g132996_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g132995_)
                                       (##vector-length _g132995_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g132996_ 2)))
                                (error "Context expects 2 values" _g132996_)))
                          (let ((_%tree132461%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132995_ 0)))
                                (_%vars132462%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132995_ 1))))
                            (if (null? _%vars132462%_)
                                _%tree132461%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx132411%_
                                   _%vars132462%_))))))))))
          (let* ((_%e132415132425%_ _%stx132411%_)
                 (_%E132417132429%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx132411%_))))
                 (_%E132416132451%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132415132425%_))
                        (let ((_%e132418132433%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132415132425%_))))
                          (let ((_%hd132419132436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132418132433%_)))
                                (_%tl132420132438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132418132433%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132420132438%_))
                                (let ((_%e132421132441%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132420132438%_))))
                                  (let ((_%hd132422132444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132421132441%_)))
                                        (_%tl132423132446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132421132441%_))))
                                    (let ((_%form132449%_ _%hd132422132444%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl132423132446%_))
                                          (let ((__tmp132998
                                                 (_%generate132413%_
                                                  (_%parse132414%_
                                                   _%form132449%_)))
                                                (__tmp132997
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx132411%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp132998
                                             __tmp132997))
                                          (_%E132417132429%_)))))
                                (_%E132417132429%_))))
                        (_%E132417132429%_)))))
            (_%E132416132451%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131660%_
               _%identifier=?131661%_
               _%unwrap-e131662%_
               _%wrap-e131663%_)
        (letrec ((_%generate-bindings131665%_
                  (lambda (_%target132275%_
                           _%ids132276%_
                           _%clauses132277%_
                           _%clause-ids132278%_
                           _%E132279%_)
                    (letrec ((_%generate1132281%_
                              (lambda (_%clause132378%_
                                       _%clause-id132379%_
                                       _%E132380%_)
                                (cons (cons _%clause-id132379%_ '())
                                      (cons (let ((__tmp133000
                                                   (cons _%target132275%_ '()))
                                                  (__tmp132999
                                                   (_%generate-clause131667%_
                                                    _%target132275%_
                                                    _%ids132276%_
                                                    _%clause132378%_
                                                    _%E132380%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp133000
                                               __tmp132999))
                                            '())))))
                      (let _%lp132283%_ ((_%rest132285%_ _%clauses132277%_)
                                         (_%rest-ids132286%_
                                          _%clause-ids132278%_)
                                         (_%bindings132287%_ '()))
                        (let* ((_%rest132288132296%_ _%rest132285%_)
                               (_%else132290132304%_
                                (lambda () _%bindings132287%_))
                               (_%K132292132366%_
                                (lambda (_%rest132307%_ _%clause132308%_)
                                  (let* ((_%rest-ids132309132316%_
                                          _%rest-ids132286%_)
                                         (_%E132311132320%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids132309132316%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K132312132354%_
                                          (lambda (_%rest-ids132323%_
                                                   _%clause-id132324%_)
                                            (let* ((_%rest-ids132325132333%_
                                                    _%rest-ids132323%_)
                                                   (_%else132327132341%_
                                                    (lambda ()
                                                      (cons (_%generate1132281%_
                                                             _%clause132308%_
                                                             _%clause-id132324%_
                                                             _%E132279%_)
                                                            _%bindings132287%_)))
                                                   (_%K132329132346%_
                                                    (lambda (_%next-clause-id132344%_)
                                                      (_%lp132283%_
                                                       _%rest132307%_
                                                       _%rest-ids132323%_
                                                       (cons (_%generate1132281%_
                                                              _%clause132308%_
                                                              _%clause-id132324%_
                                                              _%next-clause-id132344%_)
                                                             _%bindings132287%_)))))
                                              (if (pair? _%rest-ids132325132333%_)
                                                  (let* ((_%hd132330132349%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids132325132333%_)))
                                                         (_%next-clause-id132352%_
                                                          _%hd132330132349%_))
                                                    (_%K132329132346%_
                                                     _%next-clause-id132352%_))
                                                  (_%else132327132341%_))))))
                                    (if (pair? _%rest-ids132309132316%_)
                                        (let ((_%hd132313132357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids132309132316%_)))
                                              (_%tl132314132359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids132309132316%_))))
                                          (let* ((_%clause-id132362%_
                                                  _%hd132313132357%_)
                                                 (_%rest-ids132364%_
                                                  _%tl132314132359%_))
                                            (_%K132312132354%_
                                             _%rest-ids132364%_
                                             _%clause-id132362%_)))
                                        (_%E132311132320%_))))))
                          (if (pair? _%rest132288132296%_)
                              (let ((_%hd132293132369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132288132296%_)))
                                    (_%tl132294132371%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132288132296%_))))
                                (let* ((_%clause132374%_ _%hd132293132369%_)
                                       (_%rest132376%_ _%tl132294132371%_))
                                  (_%K132292132366%_
                                   _%rest132376%_
                                   _%clause132374%_)))
                              (_%else132290132304%_)))))))
                 (_%generate-body131666%_
                  (lambda (_%bindings132235%_ _%body132236%_)
                    (let _%recur132238%_ ((_%rest132240%_ _%bindings132235%_))
                      (let* ((_%rest132241132249%_ _%rest132240%_)
                             (_%else132243132257%_ (lambda () _%body132236%_))
                             (_%K132245132263%_
                              (lambda (_%rest132260%_ _%hd132261%_)
                                (let ((__tmp133002 (cons _%hd132261%_ '()))
                                      (__tmp133001
                                       (_%recur132238%_ _%rest132260%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp133002
                                   __tmp133001)))))
                        (if (pair? _%rest132241132249%_)
                            (let ((_%hd132246132266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest132241132249%_)))
                                  (_%tl132247132268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest132241132249%_))))
                              (let* ((_%hd132271%_ _%hd132246132266%_)
                                     (_%rest132273%_ _%tl132247132268%_))
                                (_%K132245132263%_
                                 _%rest132273%_
                                 _%hd132271%_)))
                            (_%else132243132257%_))))))
                 (_%generate-clause131667%_
                  (lambda (_%target132098%_
                           _%ids132099%_
                           _%clause132100%_
                           _%E132101%_)
                    (letrec ((_%generate1132103%_
                              (lambda (_%hd132190%_
                                       _%fender132191%_
                                       _%body132192%_)
                                (let ((_g133003_
                                       (_%parse-clause131669%_
                                        _%hd132190%_
                                        _%ids132099%_)))
                                  (begin
                                    (let ((_g133004_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133003_)
                                                 (##vector-length _g133003_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133004_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133004_)))
                                    (let ((_%e132194%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g133003_ 0)))
                                          (_%mvars132195%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g133003_ 1))))
                                      (let* ((_%pvars132197%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars132195%_))))
                                             (_%E132199%_
                                              (cons _%E132101%_
                                                    (cons _%target132098%_
                                                          '())))
                                             (_%K132232%_
                                              (let ((__tmp133005
                                                     (let ((__tmp133007
                                                            (map (lambda (_%mvar132201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar132202%_)
                           (let* ((_%mvar132203132210%_ _%mvar132201%_)
                                  (_%E132205132214%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar132203132210%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K132206132220%_
                                   (lambda (_%depth132217%_ _%id132218%_)
                                     (cons _%id132218%_
                                           (cons (let ((__tmp133009
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id132218%_)))
                                                       (__tmp133008
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar132202%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp133009
                                                    __tmp133008
                                                    _%depth132217%_))
                                                 '())))))
                             (if (pair? _%mvar132203132210%_)
                                 (let ((_%hd132207132223%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar132203132210%_)))
                                       (_%tl132208132225%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar132203132210%_))))
                                   (let* ((_%id132228%_ _%hd132207132223%_)
                                          (_%depth132230%_ _%tl132208132225%_))
                                     (_%K132206132220%_
                                      _%depth132230%_
                                      _%id132228%_)))
                                 (_%E132205132214%_))))
                         _%mvars132195%_
                         _%pvars132197%_))
                   (__tmp133006
                    (if (eq? _%fender132191%_ '#t)
                        _%body132192%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender132191%_
                           _%body132192%_
                           _%E132199%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp133007 __tmp133006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars132197%_
                                                 __tmp133005))))
                                        (_%generate-match131668%_
                                         _%hd132190%_
                                         _%target132098%_
                                         _%e132194%_
                                         _%mvars132195%_
                                         _%K132232%_
                                         _%E132199%_))))))))
                      (let* ((_%e132104132124%_ _%clause132100%_)
                             (_%E132113132128%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e132104132124%_))))
                             (_%E132106132162%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132104132124%_))
                                    (let ((_%e132114132132%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132104132124%_))))
                                      (let ((_%hd132115132135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132114132132%_)))
                                            (_%tl132116132137%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132114132132%_))))
                                        (let ((_%hd132140%_
                                               _%hd132115132135%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132116132137%_))
                                              (let ((_%e132117132142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132116132137%_))))
                                                (let ((_%hd132118132145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132117132142%_)))
                                                      (_%tl132119132147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132117132142%_))))
                                                  (let ((_%fender132150%_
                                                         _%hd132118132145%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl132119132147%_))
                                                        (let ((_%e132120132152%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl132119132147%_))))
                  (let ((_%hd132121132155%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132120132152%_)))
                        (_%tl132122132157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132120132152%_))))
                    (let ((_%body132160%_ _%hd132121132155%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl132122132157%_))
                          (_%generate1132103%_
                           _%hd132140%_
                           _%fender132150%_
                           _%body132160%_)
                          (_%E132113132128%_)))))
                (_%E132113132128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132113132128%_)))))
                                    (_%E132113132128%_))))
                             (_%E132105132186%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132104132124%_))
                                    (let ((_%e132107132166%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132104132124%_))))
                                      (let ((_%hd132108132169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132107132166%_)))
                                            (_%tl132109132171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132107132166%_))))
                                        (let ((_%hd132174%_
                                               _%hd132108132169%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132109132171%_))
                                              (let ((_%e132110132176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132109132171%_))))
                                                (let ((_%hd132111132179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132110132176%_)))
                                                      (_%tl132112132181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132110132176%_))))
                                                  (let ((_%body132184%_
                                                         _%hd132111132179%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132112132181%_))
                                                        (_%generate1132103%_
                                                         _%hd132174%_
                                                         '#t
                                                         _%body132184%_)
                                                        (_%E132106132162%_)))))
                                              (_%E132106132162%_)))))
                                    (_%E132106132162%_)))))
                        (_%E132105132186%_)))))
                 (_%generate-match131668%_
                  (lambda (_%where131847%_
                           _%target131848%_
                           _%hd131849%_
                           _%mvars131850%_
                           _%K131851%_
                           _%E131852%_)
                    (letrec ((_%BUG131854%_
                              (lambda (_%q132096%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131660%_
                                         _%hd131849%_
                                         _%q132096%_))))
                             (_%recur131855%_
                              (lambda (_%e131946%_
                                       _%vars131947%_
                                       _%target131948%_
                                       _%E131949%_
                                       _%k131950%_)
                                (let* ((_%e131951131958%_ _%e131946%_)
                                       (_%E131953131962%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e131951131958%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K131954132084%_
                                        (lambda (_%body131965%_ _%tag131966%_)
                                          (let ((_%$e131968%_ _%tag131966%_))
                                            (if (eq? 'any _%$e131968%_)
                                                (_%k131950%_ _%vars131947%_)
                                                (if (eq? 'id _%$e131968%_)
                                                    (let ((__tmp133014
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target131948%_)))
                                                          (__tmp133010
                                                           (let ((__tmp133012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp133013
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131663%_
                                    _%body131965%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131661%_
                             __tmp133013
                             _%target131948%_)))
                         (__tmp133011 (_%k131950%_ _%vars131947%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp133012 __tmp133011 _%E131949%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp133014 __tmp133010 _%E131949%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e131968%_)
                                                        (_%k131950%_
                                                         (cons (cons _%body131965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target131948%_)
                       _%vars131947%_))
                (if (eq? 'cons _%$e131968%_)
                    (let ((_%$e131971%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd131972%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl131973%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp133020
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target131948%_)))
                            (__tmp133015
                             (let ((__tmp133019
                                    (cons (cons (cons _%$e131971%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131662%_
                                                         _%target131948%_))
                                                      '()))
                                          '()))
                                   (__tmp133016
                                    (let ((__tmp133018
                                           (cons (cons (cons _%$hd131972%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e131971%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl131973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e131971%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp133017
                                           (let* ((_%body131974131981%_
                                                   _%body131965%_)
                                                  (_%E131976131985%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body131974131981%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K131977131993%_
                                                   (lambda (_%tl131988%_
                                                            _%hd131989%_)
                                                     (_%recur131855%_
                                                      _%hd131989%_
                                                      _%vars131947%_
                                                      _%$hd131972%_
                                                      _%E131949%_
                                                      (lambda (_%vars131991%_)
                                                        (_%recur131855%_
                                                         _%tl131988%_
                                                         _%vars131991%_
                                                         _%$tl131973%_
                                                         _%E131949%_
                                                         _%k131950%_))))))
                                             (if (pair? _%body131974131981%_)
                                                 (let ((_%hd131978131996%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body131974131981%_)))
                                                       (_%tl131979131998%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body131974131981%_))))
                                                   (let* ((_%hd132001%_
                                                           _%hd131978131996%_)
                                                          (_%tl132003%_
                                                           _%tl131979131998%_))
                                                     (_%K131977131993%_
                                                      _%tl132003%_
                                                      _%hd132001%_)))
                                                 (_%E131976131985%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp133018
                                       __tmp133017))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp133019
                                __tmp133016))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp133020
                         __tmp133015
                         _%E131949%_)))
                    (if (eq? 'splice _%$e131968%_)
                        (let* ((_%body132004132011%_ _%body131965%_)
                               (_%E132006132015%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body132004132011%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K132007132066%_
                                (lambda (_%tl132018%_ _%hd132019%_)
                                  (let* ((_%rlen132021%_
                                          (_%splice-rlen131856%_ _%tl132018%_))
                                         (_%$target132023%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd132025%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl132027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp132029%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e132031%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd132033%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl132035%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars132037%_
                                          (_%splice-vars131857%_ _%hd132019%_))
                                         (_%lvars132039%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132037%_)))
                                         (_%tlvars132041%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132037%_)))
                                         (_%linit132045%_
                                          (map (lambda (_%var132043%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars132039%_)))
                                    (letrec ((_%make-loop132048%_
                                              (lambda (_%vars132052%_)
                                                (let ((__tmp133022
                                                       (cons (cons (cons _%$lp132029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp133035
                                        (cons _%$hd132025%_ _%lvars132039%_))
                                       (__tmp133023
                                        (let ((__tmp133034
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd132025%_)))
                                              (__tmp133028
                                               (let ((__tmp133033
                                                      (cons (cons (cons _%$lp-e132031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131662%_
                                   _%$hd132025%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133029
                                                      (let ((__tmp133032
                                                             (cons (cons (cons _%$lp-hd132033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e132031%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl132035%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e132031%_))
                                             '()))
                                 '())))
                    (__tmp133030
                     (_%recur131855%_
                      _%hd132019%_
                      '()
                      _%$lp-hd132033%_
                      _%E131949%_
                      (lambda (_%hdvars132054%_)
                        (cons _%$lp132029%_
                              (cons _%$lp-tl132035%_
                                    (map (lambda (_%svar132056%_
                                                  _%lvar132057%_)
                                           (let ((__tmp133031
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar132056%_
                                                     _%hdvars132054%_
                                                     _%BUG131854%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp133031
                                              _%lvar132057%_)))
                                         _%svars132037%_
                                         _%lvars132039%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp133032 __tmp133030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133033
                                                  __tmp133029)))
                                              (__tmp133024
                                               (let ((__tmp133027
                                                      (map (lambda (_%lvar132059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar132060%_)
                     (cons (cons _%tlvar132060%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar132059%_))
                                 '())))
                   _%lvars132039%_
                   _%tlvars132041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133025
                                                      (_%k131950%_
                                                       (let ((__tmp133026
                                                              (lambda (_%svar132062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar132063%_
                               _%r132064%_)
                        (cons (cons _%svar132062%_ _%tlvar132063%_)
                              _%r132064%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp133026
                  _%vars132052%_
                  _%svars132037%_
                  _%tlvars132041%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133027
                                                  __tmp133025))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133034
                                           __tmp133028
                                           __tmp133024))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp133035
                                    __tmp133023))
                                 '()))
                     '()))
              (__tmp133021
               (cons _%$lp132029%_ (cons _%$target132023%_ _%linit132045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp133022
                                                   __tmp133021)))))
                                      (let ((_%body132050%_
                                             (let ((__tmp133037
                                                    (cons (cons (cons _%$target132023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl132027%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target131948%_
                                 _%rlen132021%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133036
                                                    (_%recur131855%_
                                                     _%tl132018%_
                                                     _%vars131947%_
                                                     _%$tl132027%_
                                                     _%E131949%_
                                                     _%make-loop132048%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133037
                                                __tmp133036))))
                                        (let ((__tmp133041
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target131948%_)))
                                              (__tmp133038
                                               (if (zero? _%rlen132021%_)
                                                   _%body132050%_
                                                   (let ((__tmp133039
                                                          (let ((__tmp133040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target131948%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp133040 _%rlen132021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp133039
                                                      _%body132050%_
                                                      _%E131949%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133041
                                           __tmp133038
                                           _%E131949%_))))))))
                          (if (pair? _%body132004132011%_)
                              (let ((_%hd132008132069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body132004132011%_)))
                                    (_%tl132009132071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body132004132011%_))))
                                (let* ((_%hd132074%_ _%hd132008132069%_)
                                       (_%tl132076%_ _%tl132009132071%_))
                                  (_%K132007132066%_
                                   _%tl132076%_
                                   _%hd132074%_)))
                              (_%E132006132015%_)))
                        (if (eq? 'null _%$e131968%_)
                            (let ((__tmp133043
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target131948%_)))
                                  (__tmp133042 (_%k131950%_ _%vars131947%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp133043
                               __tmp133042
                               _%E131949%_))
                            (if (eq? 'vector _%$e131968%_)
                                (let ((_%$e132078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp133048
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target131948%_)))
                                        (__tmp133044
                                         (let ((__tmp133046
                                                (cons (cons (cons _%$e132078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp133047
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131662%_
                                    _%target131948%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp133047))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp133045
                                                (_%recur131855%_
                                                 _%body131965%_
                                                 _%vars131947%_
                                                 _%$e132078%_
                                                 _%E131949%_
                                                 _%k131950%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp133046
                                            __tmp133045))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp133048
                                     __tmp133044
                                     _%E131949%_)))
                                (if (eq? 'box _%$e131968%_)
                                    (let ((_%$e132080%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp133053
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target131948%_)))
                                            (__tmp133049
                                             (let ((__tmp133051
                                                    (cons (cons (cons _%$e132080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp133052
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131662%_
                                        _%target131948%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp133052))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133050
                                                    (_%recur131855%_
                                                     _%body131965%_
                                                     _%vars131947%_
                                                     _%$e132080%_
                                                     _%E131949%_
                                                     _%k131950%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133051
                                                __tmp133050))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp133053
                                         __tmp133049
                                         _%E131949%_)))
                                    (if (eq? 'datum _%$e131968%_)
                                        (let ((_%$e132082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp133059
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target131948%_)))
                                                (__tmp133054
                                                 (let ((__tmp133058
                                                        (cons (cons (cons _%$e132082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target131948%_))
                                  '()))
                      '()))
               (__tmp133055
                (let ((__tmp133057
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e132082%_ _%body131965%_)))
                      (__tmp133056 (_%k131950%_ _%vars131947%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp133057 __tmp133056 _%E131949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp133058
                                                    __tmp133055))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp133059
                                             __tmp133054
                                             _%E131949%_)))
                                        (_%BUG131854%_
                                         _%e131946%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e131951131958%_)
                                      (let ((_%hd131955132087%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131951131958%_)))
                                            (_%tl131956132089%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131951131958%_))))
                                        (let* ((_%tag132092%_
                                                _%hd131955132087%_)
                                               (_%body132094%_
                                                _%tl131956132089%_))
                                          (_%K131954132084%_
                                           _%body132094%_
                                           _%tag132092%_)))
                                      (_%E131953131962%_)))))
                             (_%splice-rlen131856%_
                              (lambda (_%e131908%_)
                                (let _%lp131910%_ ((_%e131912%_ _%e131908%_)
                                                   (_%n131913%_ '0))
                                  (let* ((_%e131914131921%_ _%e131912%_)
                                         (_%E131916131925%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131914131921%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131917131934%_
                                          (lambda (_%body131928%_
                                                   _%tag131929%_)
                                            (let ((_%$e131931%_ _%tag131929%_))
                                              (if (eq? 'splice _%$e131931%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131660%_
                                                     _%where131847%_))
                                                  (if (eq? 'cons _%$e131931%_)
                                                      (_%lp131910%_
                                                       (cdr _%body131928%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n131913%_
                                                                '1)))
                                                      _%n131913%_))))))
                                    (if (pair? _%e131914131921%_)
                                        (let ((_%hd131918131937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131914131921%_)))
                                              (_%tl131919131939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131914131921%_))))
                                          (let* ((_%tag131942%_
                                                  _%hd131918131937%_)
                                                 (_%body131944%_
                                                  _%tl131919131939%_))
                                            (_%K131917131934%_
                                             _%body131944%_
                                             _%tag131942%_)))
                                        (_%E131916131925%_))))))
                             (_%splice-vars131857%_
                              (lambda (_%e131864%_)
                                (let _%recur131866%_ ((_%e131868%_ _%e131864%_)
                                                      (_%vars131869%_ '()))
                                  (let* ((_%e131870131877%_ _%e131868%_)
                                         (_%E131872131881%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131870131877%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131873131896%_
                                          (lambda (_%body131884%_
                                                   _%tag131885%_)
                                            (let ((_%$e131887%_ _%tag131885%_))
                                              (if (eq? 'var _%$e131887%_)
                                                  (cons _%body131884%_
                                                        _%vars131869%_)
                                                  (if (or (eq? 'cons
                                                               _%$e131887%_)
                                                          (eq? 'splice
                                                               _%$e131887%_))
                                                      (_%recur131866%_
                                                       (cdr _%body131884%_)
                                                       (_%recur131866%_
                                                        (car _%body131884%_)
                                                        _%vars131869%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e131887%_)
                      (eq? 'box _%$e131887%_))
                  (_%recur131866%_ _%body131884%_ _%vars131869%_)
                  _%vars131869%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e131870131877%_)
                                        (let ((_%hd131874131899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131870131877%_)))
                                              (_%tl131875131901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131870131877%_))))
                                          (let* ((_%tag131904%_
                                                  _%hd131874131899%_)
                                                 (_%body131906%_
                                                  _%tl131875131901%_))
                                            (_%K131873131896%_
                                             _%body131906%_
                                             _%tag131904%_)))
                                        (_%E131872131881%_))))))
                             (_%make-body131858%_
                              (lambda (_%vars131860%_)
                                (cons _%K131851%_
                                      (map (lambda (_%mvar131862%_)
                                             (let ((__tmp133060
                                                    (car _%mvar131862%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp133060
                                                _%vars131860%_
                                                _%BUG131854%_)))
                                           _%mvars131850%_)))))
                      (_%recur131855%_
                       _%hd131849%_
                       '()
                       _%target131848%_
                       _%E131852%_
                       _%make-body131858%_))))
                 (_%parse-clause131669%_
                  (lambda (_%hd131741%_ _%ids131742%_)
                    (let _%recur131744%_ ((_%e131746%_ _%hd131741%_)
                                          (_%vars131747%_ '())
                                          (_%depth131748%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131746%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131746%_))
                              (values '(any) _%vars131747%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131746%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131660%_
                                     _%hd131741%_))
                                  (if (let ((__tmp133061
                                             (lambda (_%id131753%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131746%_
                                                  _%id131753%_)))))
                                        (declare (not safe))
                                        (__find __tmp133061 _%ids131742%_))
                                      (values (cons 'id _%e131746%_)
                                              _%vars131747%_)
                                      (if (let ((__tmp133062
                                                 (lambda (_%var131756%_)
                                                   (let ((__tmp133063
                                                          (car _%var131756%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131746%_
                                                      __tmp133063)))))
                                            (declare (not safe))
                                            (__find __tmp133062
                                                    _%vars131747%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131660%_
                                             _%e131746%_))
                                          (values (cons 'var _%e131746%_)
                                                  (cons (cons _%e131746%_
                                                              _%depth131748%_)
                                                        _%vars131747%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131746%_))
                              (let* ((_%e131760131767%_ _%e131746%_)
                                     (_%E131762131771%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131760131767%_))))
                                     (_%E131761131832%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131760131767%_))
                                            (let ((_%e131763131775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131760131767%_))))
                                              (let ((_%hd131764131778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131763131775%_)))
                                                    (_%tl131765131780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131763131775%_))))
                                                (let* ((_%hd131783%_
                                                        _%hd131764131778%_)
                                                       (_%rest131785%_
                                                        _%tl131765131780%_)
                                                       (_%make-pair131800%_
                                                        (lambda (_%tag131787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131788%_
                         _%tl131789%_)
                  (let* ((_%hd-depth131791%_
                          (if (eq? _%tag131787%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131748%_ '1))
                              _%depth131748%_))
                         (_g133064_
                          (_%recur131744%_
                           _%hd131788%_
                           _%vars131747%_
                           _%hd-depth131791%_)))
                    (begin
                      (let ((_g133065_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g133064_)
                                   (##vector-length _g133064_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g133065_ 2)))
                            (error "Context expects 2 values" _g133065_)))
                      (let ((_%hd131793%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g133064_ 0)))
                            (_%vars131794%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g133064_ 1))))
                        (let ((_g133066_
                               (_%recur131744%_
                                _%tl131789%_
                                _%vars131794%_
                                _%depth131748%_)))
                          (begin
                            (let ((_g133067_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g133066_)
                                         (##vector-length _g133066_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g133067_ 2)))
                                  (error "Context expects 2 values"
                                         _g133067_)))
                            (let ((_%tl131796%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g133066_ 0)))
                                  (_%vars131797%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g133066_ 1))))
                              (values (cons _%tag131787%_
                                            (cons _%hd131793%_ _%tl131796%_))
                                      _%vars131797%_)))))))))
               (_%e131801131808%_ _%rest131785%_)
               (_%E131803131812%_
                (lambda ()
                  (_%make-pair131800%_ 'cons _%hd131783%_ _%rest131785%_)))
               (_%E131802131828%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e131801131808%_))
                      (let ((_%e131804131816%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131801131808%_))))
                        (let ((_%hd131805131819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131804131816%_)))
                              (_%tl131806131821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131804131816%_))))
                          (let* ((_%rest-hd131824%_ _%hd131805131819%_)
                                 (_%rest-tl131826%_ _%tl131806131821%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd131824%_))
                                (_%make-pair131800%_
                                 'splice
                                 _%hd131783%_
                                 _%rest-tl131826%_)
                                (_%make-pair131800%_
                                 'cons
                                 _%hd131783%_
                                 _%rest131785%_)))))
                      (_%E131803131812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131802131828%_))))
                                            (_%E131762131771%_)))))
                                (_%E131761131832%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131746%_))
                                  (values '(null) _%vars131747%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131746%_))
                                      (let ((_g133068_
                                             (_%recur131744%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131746%_)))
                                              _%vars131747%_
                                              _%depth131748%_)))
                                        (begin
                                          (let ((_g133069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133068_)
                                                       (##vector-length
                                                        _g133068_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133069_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133069_)))
                                          (let ((_%e131838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133068_ 0)))
                                                (_%vars131839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133068_
                                                    1))))
                                            (values (cons 'vector _%e131838%_)
                                                    _%vars131839%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131746%_))
                                          (let ((_g133070_
                                                 (_%recur131744%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131746%_)))
                                                  _%vars131747%_
                                                  _%depth131748%_)))
                                            (begin
                                              (let ((_g133071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g133070_)
                                                           (##vector-length
                                                            _g133070_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g133071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g133071_)))
                                              (let ((_%e131842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g133070_
                                                        0)))
                                                    (_%vars131843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g133070_
                                                        1))))
                                                (values (cons 'box _%e131842%_)
                                                        _%vars131843%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131746%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131746%_)))
                                                      _%vars131747%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131660%_
                                                 _%e131746%_))))))))))))
          (let* ((_%e131670131683%_ _%stx131660%_)
                 (_%E131672131687%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131670131683%_))))
                 (_%E131671131737%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131670131683%_))
                        (let ((_%e131673131691%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131670131683%_))))
                          (let ((_%hd131674131694%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131673131691%_)))
                                (_%tl131675131696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131673131691%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131675131696%_))
                                (let ((_%e131676131699%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131675131696%_))))
                                  (let ((_%hd131677131702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131676131699%_)))
                                        (_%tl131678131704%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131676131699%_))))
                                    (let ((_%expr131707%_ _%hd131677131702%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131678131704%_))
                                          (let ((_%e131679131709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131678131704%_))))
                                            (let ((_%hd131680131712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131679131709%_)))
                                                  (_%tl131681131714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131679131709%_))))
                                              (let* ((_%ids131717%_
                                                      _%hd131680131712%_)
                                                     (_%clauses131719%_
                                                      _%tl131681131714%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131717%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131719%_))
                                                        (let* ((_%ids131724%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131717%_)))
                       (_%clauses131726%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131719%_)))
                       (_%clause-ids131728%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131726%_)))
                       (_%E131730%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131732%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131734%_
                        (if (null? _%clauses131726%_)
                            _%E131730%_
                            (car _%clause-ids131728%_))))
                  (let ((__tmp133073
                         (let ((__tmp133074
                                (let ((__tmp133076
                                       (let ((__tmp133078
                                              (cons (cons (cons _%E131730%_
                                                                '())
                                                          (cons (let ((__tmp133080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131732%_ '()))
                              (__tmp133079
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131732%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp133080 __tmp133079))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp133077
                                              (_%generate-body131666%_
                                               (_%generate-bindings131665%_
                                                _%target131732%_
                                                _%ids131724%_
                                                _%clauses131726%_
                                                _%clause-ids131728%_
                                                _%E131730%_)
                                               (cons _%first131734%_
                                                     (cons _%expr131707%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp133078
                                          __tmp133077)))
                                      (__tmp133075
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131660%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp133076
                                   __tmp133075))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp133074)))
                        (__tmp133072
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131660%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp133073 __tmp133072)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131660%_
                                                       _%ids131717%_))))))
                                          (_%E131672131687%_)))))
                                (_%E131672131687%_))))
                        (_%E131672131687%_)))))
            (_%E131671131737%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx132385%_)
        (let* ((_%identifier=?132387%_ 'free-identifier=?)
               (_%unwrap-e132389%_ 'syntax-e)
               (_%wrap-e132391%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132385%_
           _%identifier=?132387%_
           _%unwrap-e132389%_
           _%wrap-e132391%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx132393%_ _%identifier=?132394%_)
        (let* ((_%unwrap-e132396%_ 'syntax-e) (_%wrap-e132398%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132393%_
           _%identifier=?132394%_
           _%unwrap-e132396%_
           _%wrap-e132398%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx132400%_ _%identifier=?132401%_ _%unwrap-e132402%_)
        (let ((_%wrap-e132404%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132400%_
           _%identifier=?132401%_
           _%unwrap-e132402%_
           _%wrap-e132404%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g133082_
        (let ((_g133081_ (let () (declare (not safe)) (##length _g133082_))))
          (cond ((let () (declare (not safe)) (##fx= _g133081_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g133082_))
                ((let () (declare (not safe)) (##fx= _g133081_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g133082_))
                ((let () (declare (not safe)) (##fx= _g133081_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g133082_))
                ((let () (declare (not safe)) (##fx= _g133081_ 4))
                 (apply gx#macro-expand-syntax-case__% _g133082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g133082_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131657%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131657%_))
            (let ((__tmp133083
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131657%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp133083 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd131615%_ . _%rest131616%_)
        (let ((_%len131618%_ (length _%hd131615%_)))
          (let _%lp131620%_ ((_%rest131622%_ _%rest131616%_))
            (let* ((_%rest131623131631%_ _%rest131622%_)
                   (_%else131625131639%_ (lambda () '#!void))
                   (_%K131627131645%_
                    (lambda (_%rest131642%_ _%hd131643%_)
                      (if (let ((__tmp133084 (length _%hd131643%_)))
                            (declare (not safe))
                            (##fx= _%len131618%_ __tmp133084))
                          (_%lp131620%_ _%rest131642%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131643%_))))))
              (if (pair? _%rest131623131631%_)
                  (let ((_%hd131628131648%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest131623131631%_)))
                        (_%tl131629131650%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest131623131631%_))))
                    (let* ((_%hd131653%_ _%hd131628131648%_)
                           (_%rest131655%_ _%tl131629131650%_))
                      (_%K131627131645%_ _%rest131655%_ _%hd131653%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx131570%_ _%n131571%_)
        (let _%lp131573%_ ((_%rest131575%_ _%stx131570%_) (_%r131576%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest131575%_))
              (let* ((_%g131577131584%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest131575%_)))
                     (_%E131579131588%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g131577131584%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K131580131594%_
                      (lambda (_%rest131591%_ _%hd131592%_)
                        (_%lp131573%_
                         _%rest131591%_
                         (cons _%hd131592%_ _%r131576%_)))))
                (if (pair? _%g131577131584%_)
                    (let ((_%hd131581131597%_
                           (let ()
                             (declare (not safe))
                             (##car _%g131577131584%_)))
                          (_%tl131582131599%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g131577131584%_))))
                      (let* ((_%hd131602%_ _%hd131581131597%_)
                             (_%rest131604%_ _%tl131582131599%_))
                        (_%K131580131594%_ _%rest131604%_ _%hd131602%_)))
                    (_%E131579131588%_)))
              (let _%lp131606%_ ((_%n131608%_ _%n131571%_)
                                 (_%l131609%_ _%r131576%_)
                                 (_%r131610%_ _%rest131575%_))
                (if (null? _%l131609%_)
                    (values _%l131609%_ _%r131610%_)
                    (if (fxpositive? _%n131608%_)
                        (_%lp131606%_
                         (let () (declare (not safe)) (##fx- _%n131608%_ '1))
                         (cdr _%l131609%_)
                         (cons (car _%l131609%_) _%r131610%_))
                        (values (reverse _%l131609%_) _%r131610%_))))))))))
