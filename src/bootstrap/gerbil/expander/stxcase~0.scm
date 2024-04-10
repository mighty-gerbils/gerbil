(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712784666)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp130240 (list gx#expander::t))
            (__tmp130239 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp130240
         '(id depth)
         __tmp130239
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args130236%_
        (apply make-instance gx#syntax-pattern::t _%$args130236%_)))
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
      (lambda (_%self128843130220%_ _%stx130222%_)
        (let* ((_%self130224%_ _%self128843130220%_)
               (_%self130226%_ _%self130224%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx130222%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129686%_)
        (letrec ((_%generate129688%_
                  (lambda (_%e129928%_)
                    (letrec ((_%BUG129930%_
                              (lambda (_%q130095%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129686%_
                                         _%e129928%_
                                         _%q130095%_))))
                             (_%local-pattern-e129931%_
                              (lambda (_%pat130093%_)
                                (let ((__tmp130241
                                       (##structure-ref
                                        _%pat130093%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp130241))))
                             (_%getvar129932%_
                              (lambda (_%q130090%_ _%vars130091%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q130090%_
                                   _%vars130091%_
                                   _%BUG129930%_))))
                             (_%getarg129933%_
                              (lambda (_%arg130056%_ _%vars130057%_)
                                (let* ((_%arg130058130065%_ _%arg130056%_)
                                       (_%E130060130069%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg130058130065%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K130061130078%_
                                        (lambda (_%e130072%_ _%tag130073%_)
                                          (let ((_%$e130075%_ _%tag130073%_))
                                            (if (eq? 'ref _%$e130075%_)
                                                (_%getvar129932%_
                                                 _%e130072%_
                                                 _%vars130057%_)
                                                (if (eq? 'pattern _%$e130075%_)
                                                    (_%local-pattern-e129931%_
                                                     _%e130072%_)
                                                    (_%BUG129930%_
                                                     _%arg130056%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg130058130065%_))
                                      (let ((_%hd130062130081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg130058130065%_)))
                                            (_%tl130063130083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg130058130065%_))))
                                        (let* ((_%tag130086%_
                                                _%hd130062130081%_)
                                               (_%e130088%_
                                                _%tl130063130083%_))
                                          (_%K130061130078%_
                                           _%e130088%_
                                           _%tag130086%_)))
                                      (_%E130060130069%_))))))
                      (let _%recur129935%_ ((_%e129937%_ _%e129928%_)
                                            (_%vars129938%_ '()))
                        (let* ((_%e129939129946%_ _%e129937%_)
                               (_%E129941129950%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129939129946%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129942130044%_
                                (lambda (_%body129953%_ _%tag129954%_)
                                  (let ((_%$e129956%_ _%tag129954%_))
                                    (if (eq? 'datum _%$e129956%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129953%_))
                                        (if (eq? 'term _%$e129956%_)
                                            (let ((_%id129959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129953%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129959%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129959%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks129962%_)
                                                        (let ((__tmp130242
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129953%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp130242))
                (let ((__tmp130244
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129953%_)))
                      (__tmp130243
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129953%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp130244
                   __tmp130243
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129959%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129953%_))
                                                      (_%BUG129930%_
                                                       _%e129937%_))))
                                            (if (eq? 'pattern _%$e129956%_)
                                                (_%local-pattern-e129931%_
                                                 _%body129953%_)
                                                (if (eq? 'ref _%$e129956%_)
                                                    (_%getvar129932%_
                                                     _%body129953%_
                                                     _%vars129938%_)
                                                    (if (eq? 'cons
                                                             _%$e129956%_)
                                                        (let ((__tmp130246
                                                               (_%recur129935%_
                                                                (car _%body129953%_)
                                                                _%vars129938%_))
                                                              (__tmp130245
                                                               (_%recur129935%_
                                                                (cdr _%body129953%_)
                                                                _%vars129938%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp130246
                                                           __tmp130245))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e129956%_)
                    (let ((__tmp130247
                           (_%recur129935%_ _%body129953%_ _%vars129938%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp130247))
                    (if (eq? 'box _%$e129956%_)
                        (let ((__tmp130248
                               (_%recur129935%_
                                _%body129953%_
                                _%vars129938%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp130248))
                        (if (eq? 'splice _%$e129956%_)
                            (let* ((_%body129965129976%_ _%body129953%_)
                                   (_%E129967129980%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129965129976%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129968130018%_
                                    (lambda (_%args129983%_
                                             _%iv129984%_
                                             _%hd129985%_
                                             _%depth129986%_)
                                      (let* ((_%targets129992%_
                                              (map (lambda (_%g129987129989%_)
                                                     (_%getarg129933%_
                                                      _%g129987129989%_
                                                      _%vars129938%_))
                                                   _%args129983%_))
                                             (_%fold-in129994%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129983%_)))
                                             (_%fold-out129996%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129998%_
                                              (let ((__tmp130249
                                                     (cons _%fold-out129996%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp130249
                                                 _%fold-in129994%_)))
                                             (_%lambda-body130015%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129986%_ '1))
                                                  (let ((_%r-args130006%_
                                                         (map (lambda (_%arg130000%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg130000%_)))
                      _%args129983%_))
                (_%r-vars130007%_
                 (let ((__tmp130250
                        (lambda (_%arg130002%_ _%var130003%_ _%r130004%_)
                          (cons (cons (cdr _%arg130002%_) _%var130003%_)
                                _%r130004%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp130250
                    _%vars129938%_
                    _%args129983%_
                    _%fold-in129994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur129935%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth129986%_ '1))
                         (cons _%hd129985%_
                               (cons (cons 'var _%fold-out129996%_)
                                     _%r-args130006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars130007%_))
                                                  (let* ((_%hd-vars130013%_
                                                          (let ((__tmp130251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg130009%_ _%var130010%_ _%r130011%_)
                           (cons (cons (cdr _%arg130009%_) _%var130010%_)
                                 _%r130011%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp130251
                     _%vars129938%_
                     _%args129983%_
                     _%fold-in129994%_)))
                 (__tmp130252
                  (_%recur129935%_ _%hd129985%_ _%hd-vars130013%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp130252
                                                     _%fold-out129996%_)))))
                                        (let ((__tmp130256
                                               (if (let ((__tmp130257
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129992%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp130257 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129992%_))
                                                   '#!void))
                                              (__tmp130253
                                               (let ((__tmp130255
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129998%_
                                                         _%lambda-body130015%_)))
                                                     (__tmp130254
                                                      (_%recur129935%_
                                                       _%iv129984%_
                                                       _%vars129938%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp130255
                                                  __tmp130254
                                                  _%targets129992%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp130256
                                           __tmp130253))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129965129976%_))
                                  (let ((_%hd129969130021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129965129976%_)))
                                        (_%tl129970130023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129965129976%_))))
                                    (let ((_%depth130026%_ _%hd129969130021%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129970130023%_))
                                          (let ((_%hd129971130028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129970130023%_)))
                                                (_%tl129972130030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129970130023%_))))
                                            (let ((_%hd130033%_
                                                   _%hd129971130028%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129972130030%_))
                                                  (let ((_%hd129973130035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129972130030%_)))
                                                        (_%tl129974130037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129972130030%_))))
                                                    (let* ((_%iv130040%_
                                                            _%hd129973130035%_)
                                                           (_%args130042%_
                                                            _%tl129974130037%_))
                                                      (_%K129968130018%_
                                                       _%args130042%_
                                                       _%iv130040%_
                                                       _%hd130033%_
                                                       _%depth130026%_)))
                                                  (_%E129967129980%_))))
                                          (_%E129967129980%_))))
                                  (_%E129967129980%_)))
                            (if (eq? 'var _%$e129956%_)
                                _%body129953%_
                                (_%BUG129930%_ _%e129937%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129939129946%_))
                              (let ((_%hd129943130047%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129939129946%_)))
                                    (_%tl129944130049%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129939129946%_))))
                                (let* ((_%tag130052%_ _%hd129943130047%_)
                                       (_%body130054%_ _%tl129944130049%_))
                                  (_%K129942130044%_
                                   _%body130054%_
                                   _%tag130052%_)))
                              (_%E129941129950%_)))))))
                 (_%parse129689%_
                  (lambda (_%e129730%_)
                    (letrec ((_%make-cons129732%_
                              (lambda (_%hd129920%_ _%tl129921%_)
                                (let ((_g130258_ _%hd129920%_)
                                      (_g130260_ _%tl129921%_))
                                  (begin
                                    (let ((_g130259_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130258_)
                                                 (##vector-length _g130258_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130259_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130259_)))
                                    (let ((_g130261_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130260_)
                                                 (##vector-length _g130260_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130261_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130261_)))
                                    (let ((_%hd-e129923%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130258_ 0)))
                                          (_%hd-vars129924%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130258_ 1))))
                                      (let ((_%tl-e129925%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130260_ 0)))
                                            (_%tl-vars129926%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130260_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e129923%_
                                                            _%tl-e129925%_))
                                                (append _%hd-vars129924%_
                                                        _%tl-vars129926%_))))))))
                             (_%make-splice129733%_
                              (lambda (_%where129856%_
                                       _%depth129857%_
                                       _%hd129858%_
                                       _%tl129859%_)
                                (let ((_g130262_ _%hd129858%_)
                                      (_g130264_ _%tl129859%_))
                                  (begin
                                    (let ((_g130263_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130262_)
                                                 (##vector-length _g130262_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130263_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130263_)))
                                    (let ((_g130265_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130264_)
                                                 (##vector-length _g130264_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130265_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130265_)))
                                    (let ((_%hd-e129861%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130262_ 0)))
                                          (_%hd-vars129862%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130262_ 1))))
                                      (let ((_%tl-e129863%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130264_ 0)))
                                            (_%tl-vars129864%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130264_ 1))))
                                        (let _%lp129866%_ ((_%rest129868%_
                                                            _%hd-vars129862%_)
                                                           (_%targets129869%_
                                                            '())
                                                           (_%vars129870%_
                                                            _%tl-vars129864%_))
                                          (let* ((_%rest129871129881%_
                                                  _%rest129868%_)
                                                 (_%else129873129889%_
                                                  (lambda ()
                                                    (if (null? _%targets129869%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129686%_
                                                           _%where129856%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth129857%_
                                    (cons _%hd-e129861%_
                                          (cons _%tl-e129863%_
                                                _%targets129869%_))))
                        _%vars129870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129875129901%_
                                                  (lambda (_%rest129892%_
                                                           _%hd-pat129893%_
                                                           _%hd-depth*129894%_)
                                                    (let ((_%hd-depth129896%_
                                                           (fx- _%hd-depth*129894%_
                                                                _%depth129857%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129896%_))
                                                          (_%lp129866%_
                                                           _%rest129892%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat129893%_)
                         _%targets129869%_)
                   (cons (cons _%hd-depth129896%_ _%hd-pat129893%_)
                         _%vars129870%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129896%_))
                      (_%lp129866%_
                       _%rest129892%_
                       (cons (cons 'pattern _%hd-pat129893%_)
                             _%targets129869%_)
                       _%vars129870%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129686%_
                         _%where129856%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129871129881%_))
                                                (let ((_%hd129876129904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129871129881%_)))
                                                      (_%tl129877129906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129871129881%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129876129904%_))
                                                      (let ((_%hd129878129909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129876129904%_)))
                    (_%tl129879129911%_
                     (let () (declare (not safe)) (##cdr _%hd129876129904%_))))
                (let* ((_%hd-depth*129914%_ _%hd129878129909%_)
                       (_%hd-pat129916%_ _%tl129879129911%_)
                       (_%rest129918%_ _%tl129877129906%_))
                  (_%K129875129901%_
                   _%rest129918%_
                   _%hd-pat129916%_
                   _%hd-depth*129914%_)))
              (_%else129873129889%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else129873129889%_))))))))))
                             (_%recur129734%_
                              (lambda (_%e129739%_ _%is-e?129740%_)
                                (if (_%is-e?129740%_ _%e129739%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129686%_))
                                    (if (gx#syntax-local-pattern? _%e129739%_)
                                        (let* ((_%pat129744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e129739%_)))
                                               (_%depth129746%_
                                                (##structure-ref
                                                 _%pat129744%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth129746%_)
                                              (values (cons 'ref _%pat129744%_)
                                                      (cons (cons _%depth129746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat129744%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat129744%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129739%_))
                                            (values (cons 'term _%e129739%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129739%_))
                                                (let* ((_%e129750129757%_
                                                        _%e129739%_)
                                                       (_%E129752129761%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e129750129757%_))))
                                                       (_%E129751129843%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e129750129757%_))
                      (let ((_%e129753129765%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e129750129757%_))))
                        (let ((_%hd129754129768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129753129765%_)))
                              (_%tl129755129770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129753129765%_))))
                          (let* ((_%hd129773%_ _%hd129754129768%_)
                                 (_%rest129775%_ _%tl129755129770%_))
                            (if '#t
                                (if (_%is-e?129740%_ _%hd129773%_)
                                    (let* ((_%e129776129783%_ _%rest129775%_)
                                           (_%E129778129787%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx129686%_
                                                 _%e129739%_))))
                                           (_%E129777129801%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e129776129783%_))
                                                  (let ((_%e129779129791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129776129783%_))))
                                                    (let ((_%hd129780129794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e129779129791%_)))
                                                          (_%tl129781129796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e129779129791%_))))
                                                      (let ((_%rest129799%_
                                                             _%hd129780129794%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl129781129796%_))
                                                            (if '#t
                                                                (_%recur129734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest129799%_
                         false)
                        (_%E129778129787%_))
                    (_%E129778129787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129778129787%_)))))
                                      (_%E129777129801%_))
                                    (let _%lp129805%_ ((_%rest129807%_
                                                        _%rest129775%_)
                                                       (_%depth129808%_ '0))
                                      (let* ((_%e129809129816%_ _%rest129807%_)
                                             (_%E129811129820%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth129808%_)
                                                    (_%make-splice129733%_
                                                     _%e129739%_
                                                     _%depth129808%_
                                                     (_%recur129734%_
                                                      _%hd129773%_
                                                      _%is-e?129740%_)
                                                     (_%recur129734%_
                                                      _%rest129807%_
                                                      _%is-e?129740%_))
                                                    (_%make-cons129732%_
                                                     (_%recur129734%_
                                                      _%hd129773%_
                                                      _%is-e?129740%_)
                                                     (_%recur129734%_
                                                      _%rest129807%_
                                                      _%is-e?129740%_)))))
                                             (_%E129810129839%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129809129816%_))
                                                    (let ((_%e129812129824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129809129816%_))))
                                                      (let ((_%hd129813129827%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129812129824%_)))
                    (_%tl129814129829%_
                     (let () (declare (not safe)) (##cdr _%e129812129824%_))))
                (let* ((_%rest-hd129832%_ _%hd129813129827%_)
                       (_%rest-tl129834%_ _%tl129814129829%_))
                  (if '#t
                      (if (_%is-e?129740%_ _%rest-hd129832%_)
                          (_%lp129805%_
                           _%rest-tl129834%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth129808%_ '1)))
                          (if (fxpositive? _%depth129808%_)
                              (_%make-splice129733%_
                               _%e129739%_
                               _%depth129808%_
                               (_%recur129734%_ _%hd129773%_ _%is-e?129740%_)
                               (_%recur129734%_
                                _%rest129807%_
                                _%is-e?129740%_))
                              (_%make-cons129732%_
                               (_%recur129734%_ _%hd129773%_ _%is-e?129740%_)
                               (_%recur129734%_
                                _%rest129807%_
                                _%is-e?129740%_))))
                      (_%E129811129820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129811129820%_)))))
                                        (_%E129810129839%_))))
                                (_%E129752129761%_)))))
                      (_%E129752129761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129751129843%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129739%_))
                                                    (let ((_g130266_
                                                           (_%recur129734%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e129739%_)))
                    _%is-e?129740%_)))
              (begin
                (let ((_g130267_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g130266_)
                             (##vector-length _g130266_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g130267_ 2)))
                      (error "Context expects 2 values" _g130267_)))
                (let ((_%e129848%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130266_ 0)))
                      (_%vars129849%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130266_ 1))))
                  (values (cons 'vector _%e129848%_) _%vars129849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129739%_))
                                                        (let ((_g130268_
                                                               (_%recur129734%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e129739%_)))
                        _%is-e?129740%_)))
                  (begin
                    (let ((_g130269_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g130268_)
                                 (##vector-length _g130268_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g130269_ 2)))
                          (error "Context expects 2 values" _g130269_)))
                    (let ((_%e129852%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130268_ 0)))
                          (_%vars129853%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130268_ 1))))
                      (values (cons 'box _%e129852%_) _%vars129853%_))))
                (values (cons 'datum _%e129739%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g130270_
                             (_%recur129734%_ _%e129730%_ gx#ellipsis?)))
                        (begin
                          (let ((_g130271_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g130270_)
                                       (##vector-length _g130270_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g130271_ 2)))
                                (error "Context expects 2 values" _g130271_)))
                          (let ((_%tree129736%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130270_ 0)))
                                (_%vars129737%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130270_ 1))))
                            (if (null? _%vars129737%_)
                                _%tree129736%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129686%_
                                   _%vars129737%_))))))))))
          (let* ((_%e129690129700%_ _%stx129686%_)
                 (_%E129692129704%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129686%_))))
                 (_%E129691129726%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129690129700%_))
                        (let ((_%e129693129708%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129690129700%_))))
                          (let ((_%hd129694129711%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129693129708%_)))
                                (_%tl129695129713%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129693129708%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129695129713%_))
                                (let ((_%e129696129716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129695129713%_))))
                                  (let ((_%hd129697129719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129696129716%_)))
                                        (_%tl129698129721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129696129716%_))))
                                    (let ((_%form129724%_ _%hd129697129719%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129698129721%_))
                                          (if '#t
                                              (let ((__tmp130273
                                                     (_%generate129688%_
                                                      (_%parse129689%_
                                                       _%form129724%_)))
                                                    (__tmp130272
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129686%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp130273
                                                 __tmp130272))
                                              (_%E129692129704%_))
                                          (_%E129692129704%_)))))
                                (_%E129692129704%_))))
                        (_%E129692129704%_)))))
            (_%E129691129726%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128935%_
               _%identifier=?128936%_
               _%unwrap-e128937%_
               _%wrap-e128938%_)
        (letrec ((_%generate-bindings128940%_
                  (lambda (_%target129550%_
                           _%ids129551%_
                           _%clauses129552%_
                           _%clause-ids129553%_
                           _%E129554%_)
                    (letrec ((_%generate1129556%_
                              (lambda (_%clause129653%_
                                       _%clause-id129654%_
                                       _%E129655%_)
                                (cons (cons _%clause-id129654%_ '())
                                      (cons (let ((__tmp130275
                                                   (cons _%target129550%_ '()))
                                                  (__tmp130274
                                                   (_%generate-clause128942%_
                                                    _%target129550%_
                                                    _%ids129551%_
                                                    _%clause129653%_
                                                    _%E129655%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp130275
                                               __tmp130274))
                                            '())))))
                      (let _%lp129558%_ ((_%rest129560%_ _%clauses129552%_)
                                         (_%rest-ids129561%_
                                          _%clause-ids129553%_)
                                         (_%bindings129562%_ '()))
                        (let* ((_%rest129563129571%_ _%rest129560%_)
                               (_%else129565129579%_
                                (lambda () _%bindings129562%_))
                               (_%K129567129641%_
                                (lambda (_%rest129582%_ _%clause129583%_)
                                  (let* ((_%rest-ids129584129591%_
                                          _%rest-ids129561%_)
                                         (_%E129586129595%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129584129591%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129587129629%_
                                          (lambda (_%rest-ids129598%_
                                                   _%clause-id129599%_)
                                            (let* ((_%rest-ids129600129608%_
                                                    _%rest-ids129598%_)
                                                   (_%else129602129616%_
                                                    (lambda ()
                                                      (cons (_%generate1129556%_
                                                             _%clause129583%_
                                                             _%clause-id129599%_
                                                             _%E129554%_)
                                                            _%bindings129562%_)))
                                                   (_%K129604129621%_
                                                    (lambda (_%next-clause-id129619%_)
                                                      (_%lp129558%_
                                                       _%rest129582%_
                                                       _%rest-ids129598%_
                                                       (cons (_%generate1129556%_
                                                              _%clause129583%_
                                                              _%clause-id129599%_
                                                              _%next-clause-id129619%_)
                                                             _%bindings129562%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129600129608%_))
                                                  (let* ((_%hd129605129624%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129600129608%_)))
                                                         (_%next-clause-id129627%_
                                                          _%hd129605129624%_))
                                                    (_%K129604129621%_
                                                     _%next-clause-id129627%_))
                                                  (_%else129602129616%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129584129591%_))
                                        (let ((_%hd129588129632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129584129591%_)))
                                              (_%tl129589129634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129584129591%_))))
                                          (let* ((_%clause-id129637%_
                                                  _%hd129588129632%_)
                                                 (_%rest-ids129639%_
                                                  _%tl129589129634%_))
                                            (_%K129587129629%_
                                             _%rest-ids129639%_
                                             _%clause-id129637%_)))
                                        (_%E129586129595%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest129563129571%_))
                              (let ((_%hd129568129644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129563129571%_)))
                                    (_%tl129569129646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129563129571%_))))
                                (let* ((_%clause129649%_ _%hd129568129644%_)
                                       (_%rest129651%_ _%tl129569129646%_))
                                  (_%K129567129641%_
                                   _%rest129651%_
                                   _%clause129649%_)))
                              (_%else129565129579%_)))))))
                 (_%generate-body128941%_
                  (lambda (_%bindings129510%_ _%body129511%_)
                    (let _%recur129513%_ ((_%rest129515%_ _%bindings129510%_))
                      (let* ((_%rest129516129524%_ _%rest129515%_)
                             (_%else129518129532%_ (lambda () _%body129511%_))
                             (_%K129520129538%_
                              (lambda (_%rest129535%_ _%hd129536%_)
                                (let ((__tmp130277 (cons _%hd129536%_ '()))
                                      (__tmp130276
                                       (_%recur129513%_ _%rest129535%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp130277
                                   __tmp130276)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest129516129524%_))
                            (let ((_%hd129521129541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest129516129524%_)))
                                  (_%tl129522129543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest129516129524%_))))
                              (let* ((_%hd129546%_ _%hd129521129541%_)
                                     (_%rest129548%_ _%tl129522129543%_))
                                (_%K129520129538%_
                                 _%rest129548%_
                                 _%hd129546%_)))
                            (_%else129518129532%_))))))
                 (_%generate-clause128942%_
                  (lambda (_%target129373%_
                           _%ids129374%_
                           _%clause129375%_
                           _%E129376%_)
                    (letrec ((_%generate1129378%_
                              (lambda (_%hd129465%_
                                       _%fender129466%_
                                       _%body129467%_)
                                (let ((_g130278_
                                       (_%parse-clause128944%_
                                        _%hd129465%_
                                        _%ids129374%_)))
                                  (begin
                                    (let ((_g130279_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130278_)
                                                 (##vector-length _g130278_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130279_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130279_)))
                                    (let ((_%e129469%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130278_ 0)))
                                          (_%mvars129470%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130278_ 1))))
                                      (let* ((_%pvars129472%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars129470%_))))
                                             (_%E129474%_
                                              (cons _%E129376%_
                                                    (cons _%target129373%_
                                                          '())))
                                             (_%K129507%_
                                              (let ((__tmp130280
                                                     (let ((__tmp130282
                                                            (map (lambda (_%mvar129476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar129477%_)
                           (let* ((_%mvar129478129485%_ _%mvar129476%_)
                                  (_%E129480129489%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar129478129485%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K129481129495%_
                                   (lambda (_%depth129492%_ _%id129493%_)
                                     (cons _%id129493%_
                                           (cons (let ((__tmp130284
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id129493%_)))
                                                       (__tmp130283
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar129477%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp130284
                                                    __tmp130283
                                                    _%depth129492%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar129478129485%_))
                                 (let ((_%hd129482129498%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar129478129485%_)))
                                       (_%tl129483129500%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar129478129485%_))))
                                   (let* ((_%id129503%_ _%hd129482129498%_)
                                          (_%depth129505%_ _%tl129483129500%_))
                                     (_%K129481129495%_
                                      _%depth129505%_
                                      _%id129503%_)))
                                 (_%E129480129489%_))))
                         _%mvars129470%_
                         _%pvars129472%_))
                   (__tmp130281
                    (if (eq? _%fender129466%_ '#t)
                        _%body129467%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender129466%_
                           _%body129467%_
                           _%E129474%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp130282 __tmp130281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars129472%_
                                                 __tmp130280))))
                                        (_%generate-match128943%_
                                         _%hd129465%_
                                         _%target129373%_
                                         _%e129469%_
                                         _%mvars129470%_
                                         _%K129507%_
                                         _%E129474%_))))))))
                      (let* ((_%e129379129399%_ _%clause129375%_)
                             (_%E129388129403%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e129379129399%_))))
                             (_%E129381129437%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e129379129399%_))
                                    (let ((_%e129389129407%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e129379129399%_))))
                                      (let ((_%hd129390129410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129389129407%_)))
                                            (_%tl129391129412%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129389129407%_))))
                                        (let ((_%hd129415%_
                                               _%hd129390129410%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl129391129412%_))
                                              (let ((_%e129392129417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl129391129412%_))))
                                                (let ((_%hd129393129420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e129392129417%_)))
                                                      (_%tl129394129422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e129392129417%_))))
                                                  (let ((_%fender129425%_
                                                         _%hd129393129420%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl129394129422%_))
                                                        (let ((_%e129395129427%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl129394129422%_))))
                  (let ((_%hd129396129430%_
                         (let ()
                           (declare (not safe))
                           (##car _%e129395129427%_)))
                        (_%tl129397129432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e129395129427%_))))
                    (let ((_%body129435%_ _%hd129396129430%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl129397129432%_))
                          (if '#t
                              (_%generate1129378%_
                               _%hd129415%_
                               _%fender129425%_
                               _%body129435%_)
                              (_%E129388129403%_))
                          (_%E129388129403%_)))))
                (_%E129388129403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E129388129403%_)))))
                                    (_%E129388129403%_))))
                             (_%E129380129461%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e129379129399%_))
                                    (let ((_%e129382129441%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e129379129399%_))))
                                      (let ((_%hd129383129444%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129382129441%_)))
                                            (_%tl129384129446%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129382129441%_))))
                                        (let ((_%hd129449%_
                                               _%hd129383129444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl129384129446%_))
                                              (let ((_%e129385129451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl129384129446%_))))
                                                (let ((_%hd129386129454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e129385129451%_)))
                                                      (_%tl129387129456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e129385129451%_))))
                                                  (let ((_%body129459%_
                                                         _%hd129386129454%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl129387129456%_))
                                                        (if '#t
                                                            (_%generate1129378%_
                                                             _%hd129449%_
                                                             '#t
                                                             _%body129459%_)
                                                            (_%E129381129437%_))
                                                        (_%E129381129437%_)))))
                                              (_%E129381129437%_)))))
                                    (_%E129381129437%_)))))
                        (_%E129380129461%_)))))
                 (_%generate-match128943%_
                  (lambda (_%where129122%_
                           _%target129123%_
                           _%hd129124%_
                           _%mvars129125%_
                           _%K129126%_
                           _%E129127%_)
                    (letrec ((_%BUG129129%_
                              (lambda (_%q129371%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128935%_
                                         _%hd129124%_
                                         _%q129371%_))))
                             (_%recur129130%_
                              (lambda (_%e129221%_
                                       _%vars129222%_
                                       _%target129223%_
                                       _%E129224%_
                                       _%k129225%_)
                                (let* ((_%e129226129233%_ _%e129221%_)
                                       (_%E129228129237%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e129226129233%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K129229129359%_
                                        (lambda (_%body129240%_ _%tag129241%_)
                                          (let ((_%$e129243%_ _%tag129241%_))
                                            (if (eq? 'any _%$e129243%_)
                                                (_%k129225%_ _%vars129222%_)
                                                (if (eq? 'id _%$e129243%_)
                                                    (let ((__tmp130289
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target129223%_)))
                                                          (__tmp130285
                                                           (let ((__tmp130287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130288
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128938%_
                                    _%body129240%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128936%_
                             __tmp130288
                             _%target129223%_)))
                         (__tmp130286 (_%k129225%_ _%vars129222%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp130287 __tmp130286 _%E129224%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp130289 __tmp130285 _%E129224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e129243%_)
                                                        (_%k129225%_
                                                         (cons (cons _%body129240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target129223%_)
                       _%vars129222%_))
                (if (eq? 'cons _%$e129243%_)
                    (let ((_%$e129246%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd129247%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl129248%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp130295
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target129223%_)))
                            (__tmp130290
                             (let ((__tmp130294
                                    (cons (cons (cons _%$e129246%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128937%_
                                                         _%target129223%_))
                                                      '()))
                                          '()))
                                   (__tmp130291
                                    (let ((__tmp130293
                                           (cons (cons (cons _%$hd129247%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e129246%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl129248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e129246%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp130292
                                           (let* ((_%body129249129256%_
                                                   _%body129240%_)
                                                  (_%E129251129260%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body129249129256%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K129252129268%_
                                                   (lambda (_%tl129263%_
                                                            _%hd129264%_)
                                                     (_%recur129130%_
                                                      _%hd129264%_
                                                      _%vars129222%_
                                                      _%$hd129247%_
                                                      _%E129224%_
                                                      (lambda (_%vars129266%_)
                                                        (_%recur129130%_
                                                         _%tl129263%_
                                                         _%vars129266%_
                                                         _%$tl129248%_
                                                         _%E129224%_
                                                         _%k129225%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body129249129256%_))
                                                 (let ((_%hd129253129271%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body129249129256%_)))
                                                       (_%tl129254129273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body129249129256%_))))
                                                   (let* ((_%hd129276%_
                                                           _%hd129253129271%_)
                                                          (_%tl129278%_
                                                           _%tl129254129273%_))
                                                     (_%K129252129268%_
                                                      _%tl129278%_
                                                      _%hd129276%_)))
                                                 (_%E129251129260%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp130293
                                       __tmp130292))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp130294
                                __tmp130291))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp130295
                         __tmp130290
                         _%E129224%_)))
                    (if (eq? 'splice _%$e129243%_)
                        (let* ((_%body129279129286%_ _%body129240%_)
                               (_%E129281129290%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body129279129286%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K129282129341%_
                                (lambda (_%tl129293%_ _%hd129294%_)
                                  (let* ((_%rlen129296%_
                                          (_%splice-rlen129131%_ _%tl129293%_))
                                         (_%$target129298%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd129300%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl129302%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp129304%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e129306%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd129308%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl129310%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars129312%_
                                          (_%splice-vars129132%_ _%hd129294%_))
                                         (_%lvars129314%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars129312%_)))
                                         (_%tlvars129316%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars129312%_)))
                                         (_%linit129320%_
                                          (map (lambda (_%var129318%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars129314%_)))
                                    (letrec ((_%make-loop129323%_
                                              (lambda (_%vars129327%_)
                                                (let ((__tmp130297
                                                       (cons (cons (cons _%$lp129304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp130310
                                        (cons _%$hd129300%_ _%lvars129314%_))
                                       (__tmp130298
                                        (let ((__tmp130309
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd129300%_)))
                                              (__tmp130303
                                               (let ((__tmp130308
                                                      (cons (cons (cons _%$lp-e129306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128937%_
                                   _%$hd129300%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp130304
                                                      (let ((__tmp130307
                                                             (cons (cons (cons _%$lp-hd129308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e129306%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl129310%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e129306%_))
                                             '()))
                                 '())))
                    (__tmp130305
                     (_%recur129130%_
                      _%hd129294%_
                      '()
                      _%$lp-hd129308%_
                      _%E129224%_
                      (lambda (_%hdvars129329%_)
                        (cons _%$lp129304%_
                              (cons _%$lp-tl129310%_
                                    (map (lambda (_%svar129331%_
                                                  _%lvar129332%_)
                                           (let ((__tmp130306
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar129331%_
                                                     _%hdvars129329%_
                                                     _%BUG129129%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp130306
                                              _%lvar129332%_)))
                                         _%svars129312%_
                                         _%lvars129314%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp130307 __tmp130305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp130308
                                                  __tmp130304)))
                                              (__tmp130299
                                               (let ((__tmp130302
                                                      (map (lambda (_%lvar129334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar129335%_)
                     (cons (cons _%tlvar129335%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar129334%_))
                                 '())))
                   _%lvars129314%_
                   _%tlvars129316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp130300
                                                      (_%k129225%_
                                                       (let ((__tmp130301
                                                              (lambda (_%svar129337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar129338%_
                               _%r129339%_)
                        (cons (cons _%svar129337%_ _%tlvar129338%_)
                              _%r129339%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp130301
                  _%vars129327%_
                  _%svars129312%_
                  _%tlvars129316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp130302
                                                  __tmp130300))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp130309
                                           __tmp130303
                                           __tmp130299))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp130310
                                    __tmp130298))
                                 '()))
                     '()))
              (__tmp130296
               (cons _%$lp129304%_ (cons _%$target129298%_ _%linit129320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp130297
                                                   __tmp130296)))))
                                      (let ((_%body129325%_
                                             (let ((__tmp130312
                                                    (cons (cons (cons _%$target129298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl129302%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target129223%_
                                 _%rlen129296%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp130311
                                                    (_%recur129130%_
                                                     _%tl129293%_
                                                     _%vars129222%_
                                                     _%$tl129302%_
                                                     _%E129224%_
                                                     _%make-loop129323%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp130312
                                                __tmp130311))))
                                        (let ((__tmp130316
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target129223%_)))
                                              (__tmp130313
                                               (if (zero? _%rlen129296%_)
                                                   _%body129325%_
                                                   (let ((__tmp130314
                                                          (let ((__tmp130315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target129223%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp130315 _%rlen129296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp130314
                                                      _%body129325%_
                                                      _%E129224%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp130316
                                           __tmp130313
                                           _%E129224%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body129279129286%_))
                              (let ((_%hd129283129344%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body129279129286%_)))
                                    (_%tl129284129346%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body129279129286%_))))
                                (let* ((_%hd129349%_ _%hd129283129344%_)
                                       (_%tl129351%_ _%tl129284129346%_))
                                  (_%K129282129341%_
                                   _%tl129351%_
                                   _%hd129349%_)))
                              (_%E129281129290%_)))
                        (if (eq? 'null _%$e129243%_)
                            (let ((__tmp130318
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target129223%_)))
                                  (__tmp130317 (_%k129225%_ _%vars129222%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp130318
                               __tmp130317
                               _%E129224%_))
                            (if (eq? 'vector _%$e129243%_)
                                (let ((_%$e129353%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp130323
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target129223%_)))
                                        (__tmp130319
                                         (let ((__tmp130321
                                                (cons (cons (cons _%$e129353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp130322
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128937%_
                                    _%target129223%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp130322))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp130320
                                                (_%recur129130%_
                                                 _%body129240%_
                                                 _%vars129222%_
                                                 _%$e129353%_
                                                 _%E129224%_
                                                 _%k129225%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp130321
                                            __tmp130320))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp130323
                                     __tmp130319
                                     _%E129224%_)))
                                (if (eq? 'box _%$e129243%_)
                                    (let ((_%$e129355%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp130328
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target129223%_)))
                                            (__tmp130324
                                             (let ((__tmp130326
                                                    (cons (cons (cons _%$e129355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp130327
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128937%_
                                        _%target129223%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp130327))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp130325
                                                    (_%recur129130%_
                                                     _%body129240%_
                                                     _%vars129222%_
                                                     _%$e129355%_
                                                     _%E129224%_
                                                     _%k129225%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp130326
                                                __tmp130325))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp130328
                                         __tmp130324
                                         _%E129224%_)))
                                    (if (eq? 'datum _%$e129243%_)
                                        (let ((_%$e129357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp130334
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target129223%_)))
                                                (__tmp130329
                                                 (let ((__tmp130333
                                                        (cons (cons (cons _%$e129357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target129223%_))
                                  '()))
                      '()))
               (__tmp130330
                (let ((__tmp130332
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e129357%_ _%body129240%_)))
                      (__tmp130331 (_%k129225%_ _%vars129222%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp130332 __tmp130331 _%E129224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp130333
                                                    __tmp130330))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp130334
                                             __tmp130329
                                             _%E129224%_)))
                                        (_%BUG129129%_
                                         _%e129221%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e129226129233%_))
                                      (let ((_%hd129230129362%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129226129233%_)))
                                            (_%tl129231129364%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129226129233%_))))
                                        (let* ((_%tag129367%_
                                                _%hd129230129362%_)
                                               (_%body129369%_
                                                _%tl129231129364%_))
                                          (_%K129229129359%_
                                           _%body129369%_
                                           _%tag129367%_)))
                                      (_%E129228129237%_)))))
                             (_%splice-rlen129131%_
                              (lambda (_%e129183%_)
                                (let _%lp129185%_ ((_%e129187%_ _%e129183%_)
                                                   (_%n129188%_ '0))
                                  (let* ((_%e129189129196%_ _%e129187%_)
                                         (_%E129191129200%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129189129196%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129192129209%_
                                          (lambda (_%body129203%_
                                                   _%tag129204%_)
                                            (let ((_%$e129206%_ _%tag129204%_))
                                              (if (eq? 'splice _%$e129206%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128935%_
                                                     _%where129122%_))
                                                  (if (eq? 'cons _%$e129206%_)
                                                      (_%lp129185%_
                                                       (cdr _%body129203%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n129188%_
                                                                '1)))
                                                      _%n129188%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129189129196%_))
                                        (let ((_%hd129193129212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129189129196%_)))
                                              (_%tl129194129214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129189129196%_))))
                                          (let* ((_%tag129217%_
                                                  _%hd129193129212%_)
                                                 (_%body129219%_
                                                  _%tl129194129214%_))
                                            (_%K129192129209%_
                                             _%body129219%_
                                             _%tag129217%_)))
                                        (_%E129191129200%_))))))
                             (_%splice-vars129132%_
                              (lambda (_%e129139%_)
                                (let _%recur129141%_ ((_%e129143%_ _%e129139%_)
                                                      (_%vars129144%_ '()))
                                  (let* ((_%e129145129152%_ _%e129143%_)
                                         (_%E129147129156%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129145129152%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129148129171%_
                                          (lambda (_%body129159%_
                                                   _%tag129160%_)
                                            (let ((_%$e129162%_ _%tag129160%_))
                                              (if (eq? 'var _%$e129162%_)
                                                  (cons _%body129159%_
                                                        _%vars129144%_)
                                                  (if (or (eq? 'cons
                                                               _%$e129162%_)
                                                          (eq? 'splice
                                                               _%$e129162%_))
                                                      (_%recur129141%_
                                                       (cdr _%body129159%_)
                                                       (_%recur129141%_
                                                        (car _%body129159%_)
                                                        _%vars129144%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129162%_)
                      (eq? 'box _%$e129162%_))
                  (_%recur129141%_ _%body129159%_ _%vars129144%_)
                  _%vars129144%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129145129152%_))
                                        (let ((_%hd129149129174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129145129152%_)))
                                              (_%tl129150129176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129145129152%_))))
                                          (let* ((_%tag129179%_
                                                  _%hd129149129174%_)
                                                 (_%body129181%_
                                                  _%tl129150129176%_))
                                            (_%K129148129171%_
                                             _%body129181%_
                                             _%tag129179%_)))
                                        (_%E129147129156%_))))))
                             (_%make-body129133%_
                              (lambda (_%vars129135%_)
                                (cons _%K129126%_
                                      (map (lambda (_%mvar129137%_)
                                             (let ((__tmp130335
                                                    (car _%mvar129137%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp130335
                                                _%vars129135%_
                                                _%BUG129129%_)))
                                           _%mvars129125%_)))))
                      (_%recur129130%_
                       _%hd129124%_
                       '()
                       _%target129123%_
                       _%E129127%_
                       _%make-body129133%_))))
                 (_%parse-clause128944%_
                  (lambda (_%hd129016%_ _%ids129017%_)
                    (let _%recur129019%_ ((_%e129021%_ _%hd129016%_)
                                          (_%vars129022%_ '())
                                          (_%depth129023%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e129021%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e129021%_))
                              (values '(any) _%vars129022%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e129021%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx128935%_
                                     _%hd129016%_))
                                  (if (let ((__tmp130336
                                             (lambda (_%id129028%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e129021%_
                                                  _%id129028%_)))))
                                        (declare (not safe))
                                        (__find __tmp130336 _%ids129017%_))
                                      (values (cons 'id _%e129021%_)
                                              _%vars129022%_)
                                      (if (let ((__tmp130337
                                                 (lambda (_%var129031%_)
                                                   (let ((__tmp130338
                                                          (car _%var129031%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e129021%_
                                                      __tmp130338)))))
                                            (declare (not safe))
                                            (__find __tmp130337
                                                    _%vars129022%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx128935%_
                                             _%e129021%_))
                                          (values (cons 'var _%e129021%_)
                                                  (cons (cons _%e129021%_
                                                              _%depth129023%_)
                                                        _%vars129022%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e129021%_))
                              (let* ((_%e129035129042%_ _%e129021%_)
                                     (_%E129037129046%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e129035129042%_))))
                                     (_%E129036129107%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e129035129042%_))
                                            (let ((_%e129038129050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e129035129042%_))))
                                              (let ((_%hd129039129053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e129038129050%_)))
                                                    (_%tl129040129055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e129038129050%_))))
                                                (let* ((_%hd129058%_
                                                        _%hd129039129053%_)
                                                       (_%rest129060%_
                                                        _%tl129040129055%_))
                                                  (if '#t
                                                      (let* ((_%make-pair129075%_
                                                              (lambda (_%tag129062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd129063%_
                               _%tl129064%_)
                        (let* ((_%hd-depth129066%_
                                (if (eq? _%tag129062%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth129023%_ '1))
                                    _%depth129023%_))
                               (_g130339_
                                (_%recur129019%_
                                 _%hd129063%_
                                 _%vars129022%_
                                 _%hd-depth129066%_)))
                          (begin
                            (let ((_g130340_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g130339_)
                                         (##vector-length _g130339_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g130340_ 2)))
                                  (error "Context expects 2 values"
                                         _g130340_)))
                            (let ((_%hd129068%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g130339_ 0)))
                                  (_%vars129069%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g130339_ 1))))
                              (let ((_g130341_
                                     (_%recur129019%_
                                      _%tl129064%_
                                      _%vars129069%_
                                      _%depth129023%_)))
                                (begin
                                  (let ((_g130342_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g130341_)
                                               (##vector-length _g130341_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g130342_ 2)))
                                        (error "Context expects 2 values"
                                               _g130342_)))
                                  (let ((_%tl129071%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g130341_ 0)))
                                        (_%vars129072%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g130341_ 1))))
                                    (values (cons _%tag129062%_
                                                  (cons _%hd129068%_
                                                        _%tl129071%_))
                                            _%vars129072%_)))))))))
                     (_%e129076129083%_ _%rest129060%_)
                     (_%E129078129087%_
                      (lambda ()
                        (_%make-pair129075%_
                         'cons
                         _%hd129058%_
                         _%rest129060%_)))
                     (_%E129077129103%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e129076129083%_))
                            (let ((_%e129079129091%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e129076129083%_))))
                              (let ((_%hd129080129094%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129079129091%_)))
                                    (_%tl129081129096%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129079129091%_))))
                                (let* ((_%rest-hd129099%_ _%hd129080129094%_)
                                       (_%rest-tl129101%_ _%tl129081129096%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd129099%_))
                                          (_%make-pair129075%_
                                           'splice
                                           _%hd129058%_
                                           _%rest-tl129101%_)
                                          (_%make-pair129075%_
                                           'cons
                                           _%hd129058%_
                                           _%rest129060%_))
                                      (_%E129078129087%_)))))
                            (_%E129078129087%_)))))
                (_%E129077129103%_))
              (_%E129037129046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E129037129046%_)))))
                                (_%E129036129107%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e129021%_))
                                  (values '(null) _%vars129022%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e129021%_))
                                      (let ((_g130343_
                                             (_%recur129019%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e129021%_)))
                                              _%vars129022%_
                                              _%depth129023%_)))
                                        (begin
                                          (let ((_g130344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130343_)
                                                       (##vector-length
                                                        _g130343_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130344_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130344_)))
                                          (let ((_%e129113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130343_ 0)))
                                                (_%vars129114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130343_
                                                    1))))
                                            (values (cons 'vector _%e129113%_)
                                                    _%vars129114%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e129021%_))
                                          (let ((_g130345_
                                                 (_%recur129019%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129021%_)))
                                                  _%vars129022%_
                                                  _%depth129023%_)))
                                            (begin
                                              (let ((_g130346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g130345_)
                                                           (##vector-length
                                                            _g130345_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g130346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g130346_)))
                                              (let ((_%e129117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g130345_
                                                        0)))
                                                    (_%vars129118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g130345_
                                                        1))))
                                                (values (cons 'box _%e129117%_)
                                                        _%vars129118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e129021%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e129021%_)))
                                                      _%vars129022%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128935%_
                                                 _%e129021%_))))))))))))
          (let* ((_%e128945128958%_ _%stx128935%_)
                 (_%E128947128962%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128945128958%_))))
                 (_%E128946129012%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128945128958%_))
                        (let ((_%e128948128966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128945128958%_))))
                          (let ((_%hd128949128969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128948128966%_)))
                                (_%tl128950128971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128948128966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128950128971%_))
                                (let ((_%e128951128974%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128950128971%_))))
                                  (let ((_%hd128952128977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128951128974%_)))
                                        (_%tl128953128979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128951128974%_))))
                                    (let ((_%expr128982%_ _%hd128952128977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128953128979%_))
                                          (let ((_%e128954128984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128953128979%_))))
                                            (let ((_%hd128955128987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128954128984%_)))
                                                  (_%tl128956128989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128954128984%_))))
                                              (let* ((_%ids128992%_
                                                      _%hd128955128987%_)
                                                     (_%clauses128994%_
                                                      _%tl128956128989%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids128992%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128935%_
                   _%ids128992%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses128994%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128935%_))
                    (let* ((_%ids128999%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids128992%_)))
                           (_%clauses129001%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses128994%_)))
                           (_%clause-ids129003%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses129001%_)))
                           (_%E129005%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target129007%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first129009%_
                            (if (null? _%clauses129001%_)
                                _%E129005%_
                                (car _%clause-ids129003%_))))
                      (let ((__tmp130348
                             (let ((__tmp130349
                                    (let ((__tmp130351
                                           (let ((__tmp130353
                                                  (cons (cons (cons _%E129005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp130355 (cons _%target129007%_ '()))
                                  (__tmp130354
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target129007%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp130355 __tmp130354))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp130352
                                                  (_%generate-body128941%_
                                                   (_%generate-bindings128940%_
                                                    _%target129007%_
                                                    _%ids128999%_
                                                    _%clauses129001%_
                                                    _%clause-ids129003%_
                                                    _%E129005%_)
                                                   (cons _%first129009%_
                                                         (cons _%expr128982%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp130353
                                              __tmp130352)))
                                          (__tmp130350
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx128935%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp130351
                                       __tmp130350))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp130349)))
                            (__tmp130347
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx128935%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp130348 __tmp130347)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128947128962%_)))))
                                          (_%E128947128962%_)))))
                                (_%E128947128962%_))))
                        (_%E128947128962%_)))))
            (_%E128946129012%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129660%_)
        (let* ((_%identifier=?129662%_ 'free-identifier=?)
               (_%unwrap-e129664%_ 'syntax-e)
               (_%wrap-e129666%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129660%_
           _%identifier=?129662%_
           _%unwrap-e129664%_
           _%wrap-e129666%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129668%_ _%identifier=?129669%_)
        (let* ((_%unwrap-e129671%_ 'syntax-e) (_%wrap-e129673%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129668%_
           _%identifier=?129669%_
           _%unwrap-e129671%_
           _%wrap-e129673%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129675%_ _%identifier=?129676%_ _%unwrap-e129677%_)
        (let ((_%wrap-e129679%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129675%_
           _%identifier=?129676%_
           _%unwrap-e129677%_
           _%wrap-e129679%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g130357_
        (let ((_g130356_ (let () (declare (not safe)) (##length _g130357_))))
          (cond ((let () (declare (not safe)) (##fx= _g130356_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g130357_))
                ((let () (declare (not safe)) (##fx= _g130356_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g130357_))
                ((let () (declare (not safe)) (##fx= _g130356_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g130357_))
                ((let () (declare (not safe)) (##fx= _g130356_ 4))
                 (apply gx#macro-expand-syntax-case__% _g130357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g130357_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128932%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128932%_))
            (let ((__tmp130358
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128932%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp130358 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128890%_ . _%rest128891%_)
        (let ((_%len128893%_ (length _%hd128890%_)))
          (let _%lp128895%_ ((_%rest128897%_ _%rest128891%_))
            (let* ((_%rest128898128906%_ _%rest128897%_)
                   (_%else128900128914%_ (lambda () '#!void))
                   (_%K128902128920%_
                    (lambda (_%rest128917%_ _%hd128918%_)
                      (if (let ((__tmp130359 (length _%hd128918%_)))
                            (declare (not safe))
                            (##fx= _%len128893%_ __tmp130359))
                          (_%lp128895%_ _%rest128917%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128918%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128898128906%_))
                  (let ((_%hd128903128923%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128898128906%_)))
                        (_%tl128904128925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128898128906%_))))
                    (let* ((_%hd128928%_ _%hd128903128923%_)
                           (_%rest128930%_ _%tl128904128925%_))
                      (_%K128902128920%_ _%rest128930%_ _%hd128928%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128845%_ _%n128846%_)
        (let _%lp128848%_ ((_%rest128850%_ _%stx128845%_) (_%r128851%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128850%_))
              (let* ((_%g128852128859%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128850%_)))
                     (_%E128854128863%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128852128859%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128855128869%_
                      (lambda (_%rest128866%_ _%hd128867%_)
                        (_%lp128848%_
                         _%rest128866%_
                         (cons _%hd128867%_ _%r128851%_)))))
                (if (let () (declare (not safe)) (##pair? _%g128852128859%_))
                    (let ((_%hd128856128872%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128852128859%_)))
                          (_%tl128857128874%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128852128859%_))))
                      (let* ((_%hd128877%_ _%hd128856128872%_)
                             (_%rest128879%_ _%tl128857128874%_))
                        (_%K128855128869%_ _%rest128879%_ _%hd128877%_)))
                    (_%E128854128863%_)))
              (let _%lp128881%_ ((_%n128883%_ _%n128846%_)
                                 (_%l128884%_ _%r128851%_)
                                 (_%r128885%_ _%rest128850%_))
                (if (null? _%l128884%_)
                    (values _%l128884%_ _%r128885%_)
                    (if (fxpositive? _%n128883%_)
                        (_%lp128881%_
                         (let () (declare (not safe)) (##fx- _%n128883%_ '1))
                         (cdr _%l128884%_)
                         (cons (car _%l128884%_) _%r128885%_))
                        (values (reverse _%l128884%_) _%r128885%_))))))))))
