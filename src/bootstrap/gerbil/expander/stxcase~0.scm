(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712121899)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129086 (list gx#expander::t))
            (__tmp129085 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129086
         '(id depth)
         __tmp129085
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129082%_
        (apply make-instance gx#syntax-pattern::t _%$args129082%_)))
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
      (lambda (_%self129068%_ _%stx129069%_)
        (let ()
          (let ((_%self129072%_ _%self129068%_))
            (let ()
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Identifier used out of context"
                 _%stx129069%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128534%_)
        (letrec ((_%generate128536%_
                  (lambda (_%e128776%_)
                    (letrec ((_%BUG128778%_
                              (lambda (_%q128943%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128534%_
                                         _%e128776%_
                                         _%q128943%_))))
                             (_%local-pattern-e128779%_
                              (lambda (_%pat128941%_)
                                (let ((__tmp129087
                                       (##structure-ref
                                        _%pat128941%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129087))))
                             (_%getvar128780%_
                              (lambda (_%q128938%_ _%vars128939%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128938%_
                                   _%vars128939%_
                                   _%BUG128778%_))))
                             (_%getarg128781%_
                              (lambda (_%arg128904%_ _%vars128905%_)
                                (let* ((_%arg128906128913%_ _%arg128904%_)
                                       (_%E128908128917%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128906128913%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128909128926%_
                                        (lambda (_%e128920%_ _%tag128921%_)
                                          (let ((_%$e128923%_ _%tag128921%_))
                                            (if (eq? 'ref _%$e128923%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar128780%_
                                                   _%e128920%_
                                                   _%vars128905%_))
                                                (if (eq? 'pattern _%$e128923%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e128779%_
                                                       _%e128920%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG128778%_
                                                       _%arg128904%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128906128913%_))
                                      (let ((_%hd128910128929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128906128913%_)))
                                            (_%tl128911128931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128906128913%_))))
                                        (let* ((_%tag128934%_
                                                _%hd128910128929%_)
                                               (_%e128936%_
                                                _%tl128911128931%_))
                                          (declare (not safe))
                                          (_%K128909128926%_
                                           _%e128936%_
                                           _%tag128934%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128908128917%_)))))))
                      (let _%recur128783%_ ((_%e128785%_ _%e128776%_)
                                            (_%vars128786%_ '()))
                        (let* ((_%e128787128794%_ _%e128785%_)
                               (_%E128789128798%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128787128794%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128790128892%_
                                (lambda (_%body128801%_ _%tag128802%_)
                                  (let ((_%$e128804%_ _%tag128802%_))
                                    (if (eq? 'datum _%$e128804%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128801%_))
                                        (if (eq? 'term _%$e128804%_)
                                            (let ((_%id128807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128801%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128807%_
                                                     'gx#identifier-wrap::t))
                                                  (let ()
                                                    (let ((_%marks128810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%id128807%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _%marks128810%_))
                                                          (let ((__tmp129088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128801%_))))
                    (declare (not safe))
                    (gx#core-list 'datum->syntax '#f __tmp129088))
                  (let ((__tmp129090
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote-syntax _%body128801%_)))
                        (__tmp129089
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128801%_))))
                    (declare (not safe))
                    (gx#core-list
                     'datum->syntax
                     __tmp129090
                     __tmp129089
                     '#f
                     '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128807%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote-syntax
                                                           _%body128801%_)))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%BUG128778%_
                                                           _%e128785%_))))))
                                            (if (eq? 'pattern _%$e128804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e128779%_
                                                   _%body128801%_))
                                                (if (eq? 'ref _%$e128804%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar128780%_
                                                       _%body128801%_
                                                       _%vars128786%_))
                                                    (if (eq? 'cons
                                                             _%$e128804%_)
                                                        (let ((__tmp129093
                                                               (let ((__tmp129094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body128801%_)))
                         (declare (not safe))
                         (_%recur128783%_ __tmp129094 _%vars128786%_)))
                      (__tmp129091
                       (let ((__tmp129092 (cdr _%body128801%_)))
                         (declare (not safe))
                         (_%recur128783%_ __tmp129092 _%vars128786%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129093 __tmp129091))
                (if (eq? 'vector _%$e128804%_)
                    (let ((__tmp129095
                           (let ()
                             (declare (not safe))
                             (_%recur128783%_ _%body128801%_ _%vars128786%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129095))
                    (if (eq? 'box _%$e128804%_)
                        (let ((__tmp129096
                               (let ()
                                 (declare (not safe))
                                 (_%recur128783%_
                                  _%body128801%_
                                  _%vars128786%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129096))
                        (if (eq? 'splice _%$e128804%_)
                            (let* ((_%body128813128824%_ _%body128801%_)
                                   (_%E128815128828%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128813128824%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128816128866%_
                                    (lambda (_%args128831%_
                                             _%iv128832%_
                                             _%hd128833%_
                                             _%depth128834%_)
                                      (let* ((_%targets128840%_
                                              (map (lambda (_%g128835128837%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg128781%_
                                                        _%g128835128837%_
                                                        _%vars128786%_)))
                                                   _%args128831%_))
                                             (_%fold-in128842%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128831%_)))
                                             (_%fold-out128844%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128846%_
                                              (let ((__tmp129097
                                                     (cons _%fold-out128844%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129097
                                                 _%fold-in128842%_)))
                                             (_%lambda-body128863%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128834%_ '1))
                                                  (let ((_%r-args128854%_
                                                         (map (lambda (_%arg128848%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128848%_)))
                      _%args128831%_))
                (_%r-vars128855%_
                 (let ((__tmp129098
                        (lambda (_%arg128850%_ _%var128851%_ _%r128852%_)
                          (cons (cons (cdr _%arg128850%_) _%var128851%_)
                                _%r128852%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129098
                    _%vars128786%_
                    _%args128831%_
                    _%fold-in128842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129099
                                                           (let ((__tmp129100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129104
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth128834%_ '1)))
                                (__tmp129101
                                 (let ((__tmp129102
                                        (let ((__tmp129103
                                               (cons 'var _%fold-out128844%_)))
                                          (declare (not safe))
                                          (cons __tmp129103
                                                _%r-args128854%_))))
                                   (declare (not safe))
                                   (cons _%hd128833%_ __tmp129102))))
                            (declare (not safe))
                            (cons __tmp129104 __tmp129101))))
                     (declare (not safe))
                     (cons 'splice __tmp129100))))
              (declare (not safe))
              (_%recur128783%_ __tmp129099 _%r-vars128855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars128861%_
                                                          (let ((__tmp129105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128857%_ _%var128858%_ _%r128859%_)
                           (cons (cons (cdr _%arg128857%_) _%var128858%_)
                                 _%r128859%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129105
                     _%vars128786%_
                     _%args128831%_
                     _%fold-in128842%_)))
                 (__tmp129106
                  (let ()
                    (declare (not safe))
                    (_%recur128783%_ _%hd128833%_ _%hd-vars128861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129106
                                                     _%fold-out128844%_)))))
                                        (let ((__tmp129110
                                               (if (let ((__tmp129111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128840%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129111 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128840%_))
                                                   '#!void))
                                              (__tmp129107
                                               (let ((__tmp129109
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128846%_
                                                         _%lambda-body128863%_)))
                                                     (__tmp129108
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur128783%_
                                                         _%iv128832%_
                                                         _%vars128786%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129109
                                                  __tmp129108
                                                  _%targets128840%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129110
                                           __tmp129107))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128813128824%_))
                                  (let ((_%hd128817128869%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128813128824%_)))
                                        (_%tl128818128871%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128813128824%_))))
                                    (let ((_%depth128874%_ _%hd128817128869%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128818128871%_))
                                          (let ((_%hd128819128876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128818128871%_)))
                                                (_%tl128820128878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128818128871%_))))
                                            (let ((_%hd128881%_
                                                   _%hd128819128876%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128820128878%_))
                                                  (let ((_%hd128821128883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128820128878%_)))
                                                        (_%tl128822128885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128820128878%_))))
                                                    (let* ((_%iv128888%_
                                                            _%hd128821128883%_)
                                                           (_%args128890%_
                                                            _%tl128822128885%_))
                                                      (declare (not safe))
                                                      (_%K128816128866%_
                                                       _%args128890%_
                                                       _%iv128888%_
                                                       _%hd128881%_
                                                       _%depth128874%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E128815128828%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128815128828%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128815128828%_))))
                            (if (eq? 'var _%$e128804%_)
                                _%body128801%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG128778%_ _%e128785%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128787128794%_))
                              (let ((_%hd128791128895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128787128794%_)))
                                    (_%tl128792128897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128787128794%_))))
                                (let* ((_%tag128900%_ _%hd128791128895%_)
                                       (_%body128902%_ _%tl128792128897%_))
                                  (declare (not safe))
                                  (_%K128790128892%_
                                   _%body128902%_
                                   _%tag128900%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128789128798%_))))))))
                 (_%parse128537%_
                  (lambda (_%e128578%_)
                    (letrec ((_%make-cons128580%_
                              (lambda (_%hd128768%_ _%tl128769%_)
                                (let ((_g129112_ _%hd128768%_)
                                      (_g129114_ _%tl128769%_))
                                  (begin
                                    (let ((_g129113_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129112_)
                                                 (##vector-length _g129112_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129113_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129113_)))
                                    (let ((_g129115_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129114_)
                                                 (##vector-length _g129114_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129115_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129115_)))
                                    (let ((_%hd-e128771%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129112_ 0)))
                                          (_%hd-vars128772%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129112_ 1))))
                                      (let ((_%tl-e128773%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129114_ 0)))
                                            (_%tl-vars128774%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129114_ 1))))
                                        (values (let ((__tmp129116
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e128771%_
                                                               _%tl-e128773%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129116))
                                                (append _%hd-vars128772%_
                                                        _%tl-vars128774%_))))))))
                             (_%make-splice128581%_
                              (lambda (_%where128704%_
                                       _%depth128705%_
                                       _%hd128706%_
                                       _%tl128707%_)
                                (let ((_g129117_ _%hd128706%_)
                                      (_g129119_ _%tl128707%_))
                                  (begin
                                    (let ((_g129118_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129117_)
                                                 (##vector-length _g129117_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129118_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129118_)))
                                    (let ((_g129120_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129119_)
                                                 (##vector-length _g129119_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129120_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129120_)))
                                    (let ((_%hd-e128709%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129117_ 0)))
                                          (_%hd-vars128710%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129117_ 1))))
                                      (let ((_%tl-e128711%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 0)))
                                            (_%tl-vars128712%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 1))))
                                        (let _%lp128714%_ ((_%rest128716%_
                                                            _%hd-vars128710%_)
                                                           (_%targets128717%_
                                                            '())
                                                           (_%vars128718%_
                                                            _%tl-vars128712%_))
                                          (let* ((_%rest128719128729%_
                                                  _%rest128716%_)
                                                 (_%else128721128737%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets128717%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128534%_
                                                           _%where128704%_))
                                                        (values (let ((__tmp129121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129122
                                      (let ((__tmp129123
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e128711%_
                                                     _%targets128717%_))))
                                        (declare (not safe))
                                        (cons _%hd-e128709%_ __tmp129123))))
                                 (declare (not safe))
                                 (cons _%depth128705%_ __tmp129122))))
                          (declare (not safe))
                          (cons 'splice __tmp129121))
                        _%vars128718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128723128749%_
                                                  (lambda (_%rest128740%_
                                                           _%hd-pat128741%_
                                                           _%hd-depth*128742%_)
                                                    (let ((_%hd-depth128744%_
                                                           (fx- _%hd-depth*128742%_
                                                                _%depth128705%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128744%_))
                                                          (let ()
                                                            (let ((__tmp129125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'ref _%hd-pat128741%_)
                                 _%targets128717%_))
                          (__tmp129124
                           (cons (cons _%hd-depth128744%_ _%hd-pat128741%_)
                                 _%vars128718%_)))
                      (declare (not safe))
                      (_%lp128714%_ _%rest128740%_ __tmp129125 __tmp129124)))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128744%_))
                      (let ()
                        (let ((__tmp129126
                               (cons (cons 'pattern _%hd-pat128741%_)
                                     _%targets128717%_)))
                          (declare (not safe))
                          (_%lp128714%_
                           _%rest128740%_
                           __tmp129126
                           _%vars128718%_)))
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Too many ellipses"
                           _%stx128534%_
                           _%where128704%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128719128729%_))
                                                (let ((_%hd128724128752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128719128729%_)))
                                                      (_%tl128725128754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128719128729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128724128752%_))
                                                      (let ((_%hd128726128757%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128724128752%_)))
                    (_%tl128727128759%_
                     (let () (declare (not safe)) (##cdr _%hd128724128752%_))))
                (let* ((_%hd-depth*128762%_ _%hd128726128757%_)
                       (_%hd-pat128764%_ _%tl128727128759%_)
                       (_%rest128766%_ _%tl128725128754%_))
                  (declare (not safe))
                  (_%K128723128749%_
                   _%rest128766%_
                   _%hd-pat128764%_
                   _%hd-depth*128762%_)))
              (let () (declare (not safe)) (_%else128721128737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else128721128737%_)))))))))))
                             (_%recur128582%_
                              (lambda (_%e128587%_ _%is-e?128588%_)
                                (if (_%is-e?128588%_ _%e128587%_)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Mislpaced ellipsis"
                                         _%stx128534%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e128587%_))
                                        (let ()
                                          (let* ((_%pat128592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e128587%_)))
                                                 (_%depth128594%_
                                                  (##structure-ref
                                                   _%pat128592%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth128594%_)
                                                (values (cons 'ref
                                                              _%pat128592%_)
                                                        (cons (cons _%depth128594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat128592%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat128592%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128587%_))
                                            (let ()
                                              (values (cons 'term _%e128587%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128587%_))
                                                (let ()
                                                  (let* ((_%e128598128605%_
                                                          _%e128587%_)
                                                         (_%E128600128609%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e128598128605%_))))
                                                         (_%E128599128691%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e128598128605%_))
                        (let ((_%e128601128613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128598128605%_))))
                          (let ((_%hd128602128616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128601128613%_)))
                                (_%tl128603128618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128601128613%_))))
                            (let* ((_%hd128621%_ _%hd128602128616%_)
                                   (_%rest128623%_ _%tl128603128618%_))
                              (if '#t
                                  (if (_%is-e?128588%_ _%hd128621%_)
                                      (let* ((_%e128624128631%_ _%rest128623%_)
                                             (_%E128626128635%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx128534%_
                                                   _%e128587%_))))
                                             (_%E128625128649%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128624128631%_))
                                                    (let ((_%e128627128639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128624128631%_))))
                                                      (let ((_%hd128628128642%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128627128639%_)))
                    (_%tl128629128644%_
                     (let () (declare (not safe)) (##cdr _%e128627128639%_))))
                (let ((_%rest128647%_ _%hd128628128642%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl128629128644%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur128582%_ _%rest128647%_ false))
                          (let () (declare (not safe)) (_%E128626128635%_)))
                      (let () (declare (not safe)) (_%E128626128635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128626128635%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128625128649%_)))
                                      (let _%lp128653%_ ((_%rest128655%_
                                                          _%rest128623%_)
                                                         (_%depth128656%_ '0))
                                        (let* ((_%e128657128664%_
                                                _%rest128655%_)
                                               (_%E128659128668%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth128656%_)
                                                      (let ((__tmp129128
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur128582%_ _%hd128621%_ _%is-e?128588%_)))
                    (__tmp129127
                     (let ()
                       (declare (not safe))
                       (_%recur128582%_ _%rest128655%_ _%is-e?128588%_))))
                (declare (not safe))
                (_%make-splice128581%_
                 _%e128587%_
                 _%depth128656%_
                 __tmp129128
                 __tmp129127))
              (let ((__tmp129130
                     (let ()
                       (declare (not safe))
                       (_%recur128582%_ _%hd128621%_ _%is-e?128588%_)))
                    (__tmp129129
                     (let ()
                       (declare (not safe))
                       (_%recur128582%_ _%rest128655%_ _%is-e?128588%_))))
                (declare (not safe))
                (_%make-cons128580%_ __tmp129130 __tmp129129)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E128658128687%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e128657128664%_))
                                                      (let ((_%e128660128672%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e128657128664%_))))
                (let ((_%hd128661128675%_
                       (let () (declare (not safe)) (##car _%e128660128672%_)))
                      (_%tl128662128677%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e128660128672%_))))
                  (let* ((_%rest-hd128680%_ _%hd128661128675%_)
                         (_%rest-tl128682%_ _%tl128662128677%_))
                    (if '#t
                        (if (_%is-e?128588%_ _%rest-hd128680%_)
                            (let ()
                              (let ((__tmp129131
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%depth128656%_ '1))))
                                (declare (not safe))
                                (_%lp128653%_ _%rest-tl128682%_ __tmp129131)))
                            (if (fxpositive? _%depth128656%_)
                                (let ()
                                  (let ((__tmp129133
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128582%_
                                            _%hd128621%_
                                            _%is-e?128588%_)))
                                        (__tmp129132
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128582%_
                                            _%rest128655%_
                                            _%is-e?128588%_))))
                                    (declare (not safe))
                                    (_%make-splice128581%_
                                     _%e128587%_
                                     _%depth128656%_
                                     __tmp129133
                                     __tmp129132)))
                                (let ()
                                  (let ((__tmp129135
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128582%_
                                            _%hd128621%_
                                            _%is-e?128588%_)))
                                        (__tmp129134
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128582%_
                                            _%rest128655%_
                                            _%is-e?128588%_))))
                                    (declare (not safe))
                                    (_%make-cons128580%_
                                     __tmp129135
                                     __tmp129134)))))
                        (let () (declare (not safe)) (_%E128659128668%_))))))
              (let () (declare (not safe)) (_%E128659128668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%E128658128687%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128600128609%_))))))
                        (let () (declare (not safe)) (_%E128600128609%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128599128691%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128587%_))
                                                    (let ()
                                                      (let ((_g129136_
                                                             (let ((__tmp129138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (vector->list
                             (let ()
                               (declare (not safe))
                               (gx#stx-unwrap__0 _%e128587%_)))))
                       (declare (not safe))
                       (_%recur128582%_ __tmp129138 _%is-e?128588%_))))
                (begin
                  (let ((_g129137_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g129136_)
                               (##vector-length _g129136_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g129137_ 2)))
                        (error "Context expects 2 values" _g129137_)))
                  (let ((_%e128696%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129136_ 0)))
                        (_%vars128697%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129136_ 1))))
                    (values (cons 'vector _%e128696%_) _%vars128697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128587%_))
                                                        (let ()
                                                          (let ((_g129139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129141
                                (unbox (let ()
                                         (declare (not safe))
                                         (gx#stx-unwrap__0 _%e128587%_)))))
                           (declare (not safe))
                           (_%recur128582%_ __tmp129141 _%is-e?128588%_))))
                    (begin
                      (let ((_g129140_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g129139_)
                                   (##vector-length _g129139_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g129140_ 2)))
                            (error "Context expects 2 values" _g129140_)))
                      (let ((_%e128700%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129139_ 0)))
                            (_%vars128701%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129139_ 1))))
                        (values (cons 'box _%e128700%_) _%vars128701%_)))))
                (let () (values (cons 'datum _%e128587%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129142_
                             (let ()
                               (declare (not safe))
                               (_%recur128582%_ _%e128578%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129143_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129142_)
                                       (##vector-length _g129142_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129143_ 2)))
                                (error "Context expects 2 values" _g129143_)))
                          (let ((_%tree128584%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129142_ 0)))
                                (_%vars128585%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129142_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars128585%_))
                                _%tree128584%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128534%_
                                   _%vars128585%_))))))))))
          (let* ((_%e128538128548%_ _%stx128534%_)
                 (_%E128540128552%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128534%_))))
                 (_%E128539128574%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128538128548%_))
                        (let ((_%e128541128556%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128538128548%_))))
                          (let ((_%hd128542128559%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128541128556%_)))
                                (_%tl128543128561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128541128556%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128543128561%_))
                                (let ((_%e128544128564%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128543128561%_))))
                                  (let ((_%hd128545128567%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128544128564%_)))
                                        (_%tl128546128569%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128544128564%_))))
                                    (let ((_%form128572%_ _%hd128545128567%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128546128569%_))
                                          (if '#t
                                              (let ((__tmp129145
                                                     (let ((__tmp129146
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse128537%_
                                                               _%form128572%_))))
                                                       (declare (not safe))
                                                       (_%generate128536%_
                                                        __tmp129146)))
                                                    (__tmp129144
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128534%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129145
                                                 __tmp129144))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128540128552%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128540128552%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128540128552%_)))))
                        (let () (declare (not safe)) (_%E128540128552%_))))))
            (let () (declare (not safe)) (_%E128539128574%_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127783%_
               _%identifier=?127784%_
               _%unwrap-e127785%_
               _%wrap-e127786%_)
        (letrec ((_%generate-bindings127788%_
                  (lambda (_%target128398%_
                           _%ids128399%_
                           _%clauses128400%_
                           _%clause-ids128401%_
                           _%E128402%_)
                    (letrec ((_%generate1128404%_
                              (lambda (_%clause128501%_
                                       _%clause-id128502%_
                                       _%E128503%_)
                                (cons (cons _%clause-id128502%_ '())
                                      (cons (let ((__tmp129148
                                                   (cons _%target128398%_ '()))
                                                  (__tmp129147
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause127790%_
                                                      _%target128398%_
                                                      _%ids128399%_
                                                      _%clause128501%_
                                                      _%E128503%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129148
                                               __tmp129147))
                                            '())))))
                      (let _%lp128406%_ ((_%rest128408%_ _%clauses128400%_)
                                         (_%rest-ids128409%_
                                          _%clause-ids128401%_)
                                         (_%bindings128410%_ '()))
                        (let* ((_%rest128411128419%_ _%rest128408%_)
                               (_%else128413128427%_
                                (lambda () _%bindings128410%_))
                               (_%K128415128489%_
                                (lambda (_%rest128430%_ _%clause128431%_)
                                  (let* ((_%rest-ids128432128439%_
                                          _%rest-ids128409%_)
                                         (_%E128434128443%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128432128439%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128435128477%_
                                          (lambda (_%rest-ids128446%_
                                                   _%clause-id128447%_)
                                            (let* ((_%rest-ids128448128456%_
                                                    _%rest-ids128446%_)
                                                   (_%else128450128464%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128404%_
                                                               _%clause128431%_
                                                               _%clause-id128447%_
                                                               _%E128402%_))
                                                            _%bindings128410%_)))
                                                   (_%K128452128469%_
                                                    (lambda (_%next-clause-id128467%_)
                                                      (let ((__tmp129149
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128404%_
                              _%clause128431%_
                              _%clause-id128447%_
                              _%next-clause-id128467%_))
                           _%bindings128410%_)))
                (declare (not safe))
                (_%lp128406%_
                 _%rest128430%_
                 _%rest-ids128446%_
                 __tmp129149)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128448128456%_))
                                                  (let* ((_%hd128453128472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128448128456%_)))
                                                         (_%next-clause-id128475%_
                                                          _%hd128453128472%_))
                                                    (declare (not safe))
                                                    (_%K128452128469%_
                                                     _%next-clause-id128475%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128450128464%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128432128439%_))
                                        (let ((_%hd128436128480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128432128439%_)))
                                              (_%tl128437128482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128432128439%_))))
                                          (let* ((_%clause-id128485%_
                                                  _%hd128436128480%_)
                                                 (_%rest-ids128487%_
                                                  _%tl128437128482%_))
                                            (declare (not safe))
                                            (_%K128435128477%_
                                             _%rest-ids128487%_
                                             _%clause-id128485%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128434128443%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128411128419%_))
                              (let ((_%hd128416128492%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128411128419%_)))
                                    (_%tl128417128494%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128411128419%_))))
                                (let* ((_%clause128497%_ _%hd128416128492%_)
                                       (_%rest128499%_ _%tl128417128494%_))
                                  (declare (not safe))
                                  (_%K128415128489%_
                                   _%rest128499%_
                                   _%clause128497%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128413128427%_))))))))
                 (_%generate-body127789%_
                  (lambda (_%bindings128358%_ _%body128359%_)
                    (let _%recur128361%_ ((_%rest128363%_ _%bindings128358%_))
                      (let* ((_%rest128364128372%_ _%rest128363%_)
                             (_%else128366128380%_ (lambda () _%body128359%_))
                             (_%K128368128386%_
                              (lambda (_%rest128383%_ _%hd128384%_)
                                (let ((__tmp129151 (cons _%hd128384%_ '()))
                                      (__tmp129150
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128361%_ _%rest128383%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129151
                                   __tmp129150)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128364128372%_))
                            (let ((_%hd128369128389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128364128372%_)))
                                  (_%tl128370128391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128364128372%_))))
                              (let* ((_%hd128394%_ _%hd128369128389%_)
                                     (_%rest128396%_ _%tl128370128391%_))
                                (declare (not safe))
                                (_%K128368128386%_
                                 _%rest128396%_
                                 _%hd128394%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128366128380%_)))))))
                 (_%generate-clause127790%_
                  (lambda (_%target128221%_
                           _%ids128222%_
                           _%clause128223%_
                           _%E128224%_)
                    (letrec ((_%generate1128226%_
                              (lambda (_%hd128313%_
                                       _%fender128314%_
                                       _%body128315%_)
                                (let ((_g129152_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause127792%_
                                          _%hd128313%_
                                          _%ids128222%_))))
                                  (begin
                                    (let ((_g129153_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129152_)
                                                 (##vector-length _g129152_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129153_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129153_)))
                                    (let ((_%e128317%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129152_ 0)))
                                          (_%mvars128318%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129152_ 1))))
                                      (let* ((_%pvars128320%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128318%_))))
                                             (_%E128322%_
                                              (cons _%E128224%_
                                                    (cons _%target128221%_
                                                          '())))
                                             (_%K128355%_
                                              (let ((__tmp129154
                                                     (let ((__tmp129156
                                                            (map (lambda (_%mvar128324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128325%_)
                           (let* ((_%mvar128326128333%_ _%mvar128324%_)
                                  (_%E128328128337%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128326128333%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128329128343%_
                                   (lambda (_%depth128340%_ _%id128341%_)
                                     (cons _%id128341%_
                                           (cons (let ((__tmp129158
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128341%_)))
                                                       (__tmp129157
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128325%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129158
                                                    __tmp129157
                                                    _%depth128340%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128326128333%_))
                                 (let ((_%hd128330128346%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128326128333%_)))
                                       (_%tl128331128348%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128326128333%_))))
                                   (let* ((_%id128351%_ _%hd128330128346%_)
                                          (_%depth128353%_ _%tl128331128348%_))
                                     (declare (not safe))
                                     (_%K128329128343%_
                                      _%depth128353%_
                                      _%id128351%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128328128337%_)))))
                         _%mvars128318%_
                         _%pvars128320%_))
                   (__tmp129155
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128314%_ '#t))
                        _%body128315%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128314%_
                           _%body128315%_
                           _%E128322%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129156 __tmp129155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128320%_
                                                 __tmp129154))))
                                        (let ()
                                          (declare (not safe))
                                          (_%generate-match127791%_
                                           _%hd128313%_
                                           _%target128221%_
                                           _%e128317%_
                                           _%mvars128318%_
                                           _%K128355%_
                                           _%E128322%_)))))))))
                      (let* ((_%e128227128247%_ _%clause128223%_)
                             (_%E128236128251%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128227128247%_))))
                             (_%E128229128285%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128227128247%_))
                                    (let ((_%e128237128255%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128227128247%_))))
                                      (let ((_%hd128238128258%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128237128255%_)))
                                            (_%tl128239128260%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128237128255%_))))
                                        (let ((_%hd128263%_
                                               _%hd128238128258%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128239128260%_))
                                              (let ((_%e128240128265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128239128260%_))))
                                                (let ((_%hd128241128268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128240128265%_)))
                                                      (_%tl128242128270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128240128265%_))))
                                                  (let ((_%fender128273%_
                                                         _%hd128241128268%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128242128270%_))
                                                        (let ((_%e128243128275%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128242128270%_))))
                  (let ((_%hd128244128278%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128243128275%_)))
                        (_%tl128245128280%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128243128275%_))))
                    (let ((_%body128283%_ _%hd128244128278%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128245128280%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128226%_
                                 _%hd128263%_
                                 _%fender128273%_
                                 _%body128283%_))
                              (let ()
                                (declare (not safe))
                                (_%E128236128251%_)))
                          (let () (declare (not safe)) (_%E128236128251%_))))))
                (let () (declare (not safe)) (_%E128236128251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128236128251%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128236128251%_)))))
                             (_%E128228128309%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128227128247%_))
                                    (let ((_%e128230128289%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128227128247%_))))
                                      (let ((_%hd128231128292%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128230128289%_)))
                                            (_%tl128232128294%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128230128289%_))))
                                        (let ((_%hd128297%_
                                               _%hd128231128292%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128232128294%_))
                                              (let ((_%e128233128299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128232128294%_))))
                                                (let ((_%hd128234128302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128233128299%_)))
                                                      (_%tl128235128304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128233128299%_))))
                                                  (let ((_%body128307%_
                                                         _%hd128234128302%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128235128304%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128226%_
                                                               _%hd128297%_
                                                               '#t
                                                               _%body128307%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128229128285%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128229128285%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128229128285%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128229128285%_))))))
                        (let () (declare (not safe)) (_%E128228128309%_))))))
                 (_%generate-match127791%_
                  (lambda (_%where127970%_
                           _%target127971%_
                           _%hd127972%_
                           _%mvars127973%_
                           _%K127974%_
                           _%E127975%_)
                    (letrec ((_%BUG127977%_
                              (lambda (_%q128219%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127783%_
                                         _%hd127972%_
                                         _%q128219%_))))
                             (_%recur127978%_
                              (lambda (_%e128069%_
                                       _%vars128070%_
                                       _%target128071%_
                                       _%E128072%_
                                       _%k128073%_)
                                (let* ((_%e128074128081%_ _%e128069%_)
                                       (_%E128076128085%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128074128081%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128077128207%_
                                        (lambda (_%body128088%_ _%tag128089%_)
                                          (let ((_%$e128091%_ _%tag128089%_))
                                            (if (eq? 'any _%$e128091%_)
                                                (_%k128073%_ _%vars128070%_)
                                                (if (eq? 'id _%$e128091%_)
                                                    (let ((__tmp129163
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128071%_)))
                                                          (__tmp129159
                                                           (let ((__tmp129161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129162
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127786%_
                                    _%body128088%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127784%_
                             __tmp129162
                             _%target128071%_)))
                         (__tmp129160 (_%k128073%_ _%vars128070%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129161 __tmp129160 _%E128072%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129163 __tmp129159 _%E128072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128091%_)
                                                        (_%k128073%_
                                                         (cons (cons _%body128088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128071%_)
                       _%vars128070%_))
                (if (eq? 'cons _%$e128091%_)
                    (let ((_%$e128094%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128095%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128096%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129170
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128071%_)))
                            (__tmp129164
                             (let ((__tmp129169
                                    (cons (cons (cons _%$e128094%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127785%_
                                                         _%target128071%_))
                                                      '()))
                                          '()))
                                   (__tmp129165
                                    (let ((__tmp129168
                                           (cons (cons (cons _%$hd128095%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128094%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128094%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129166
                                           (let* ((_%body128097128104%_
                                                   _%body128088%_)
                                                  (_%E128099128108%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128097128104%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128100128116%_
                                                   (lambda (_%tl128111%_
                                                            _%hd128112%_)
                                                     (let ((__tmp129167
                                                            (lambda (_%vars128114%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur127978%_
                         _%tl128111%_
                         _%vars128114%_
                         _%$tl128096%_
                         _%E128072%_
                         _%k128073%_)))))
               (declare (not safe))
               (_%recur127978%_
                _%hd128112%_
                _%vars128070%_
                _%$hd128095%_
                _%E128072%_
                __tmp129167)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128097128104%_))
                                                 (let ((_%hd128101128119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128097128104%_)))
                                                       (_%tl128102128121%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128097128104%_))))
                                                   (let* ((_%hd128124%_
                                                           _%hd128101128119%_)
                                                          (_%tl128126%_
                                                           _%tl128102128121%_))
                                                     (declare (not safe))
                                                     (_%K128100128116%_
                                                      _%tl128126%_
                                                      _%hd128124%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128099128108%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129168
                                       __tmp129166))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129169
                                __tmp129165))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129170
                         __tmp129164
                         _%E128072%_)))
                    (if (eq? 'splice _%$e128091%_)
                        (let* ((_%body128127128134%_ _%body128088%_)
                               (_%E128129128138%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128127128134%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128130128189%_
                                (lambda (_%tl128141%_ _%hd128142%_)
                                  (let* ((_%rlen128144%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen127979%_
                                             _%tl128141%_)))
                                         (_%$target128146%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128148%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128150%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128152%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128154%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128156%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128158%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128160%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars127980%_
                                             _%hd128142%_)))
                                         (_%lvars128162%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128160%_)))
                                         (_%tlvars128164%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128160%_)))
                                         (_%linit128168%_
                                          (map (lambda (_%var128166%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128162%_)))
                                    (letrec ((_%make-loop128171%_
                                              (lambda (_%vars128175%_)
                                                (let ((__tmp129173
                                                       (cons (cons (cons _%$lp128152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129189
                                        (cons _%$hd128148%_ _%lvars128162%_))
                                       (__tmp129174
                                        (let ((__tmp129188
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128148%_)))
                                              (__tmp129179
                                               (let ((__tmp129187
                                                      (cons (cons (cons _%$lp-e128154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127785%_
                                   _%$hd128148%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129180
                                                      (let ((__tmp129186
                                                             (cons (cons (cons _%$lp-hd128156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128154%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128158%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128154%_))
                                             '()))
                                 '())))
                    (__tmp129181
                     (let ((__tmp129182
                            (lambda (_%hdvars128177%_)
                              (let ((__tmp129183
                                     (let ((__tmp129184
                                            (map (lambda (_%svar128179%_
                                                          _%lvar128180%_)
                                                   (let ((__tmp129185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128179%_
                                                             _%hdvars128177%_
                                                             _%BUG127977%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129185
                                                      _%lvar128180%_)))
                                                 _%svars128160%_
                                                 _%lvars128162%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128158%_ __tmp129184))))
                                (declare (not safe))
                                (cons _%$lp128152%_ __tmp129183)))))
                       (declare (not safe))
                       (_%recur127978%_
                        _%hd128142%_
                        '()
                        _%$lp-hd128156%_
                        _%E128072%_
                        __tmp129182))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129186 __tmp129181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129187
                                                  __tmp129180)))
                                              (__tmp129175
                                               (let ((__tmp129178
                                                      (map (lambda (_%lvar128182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128183%_)
                     (cons (cons _%tlvar128183%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128182%_))
                                 '())))
                   _%lvars128162%_
                   _%tlvars128164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129176
                                                      (_%k128073%_
                                                       (let ((__tmp129177
                                                              (lambda (_%svar128185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128186%_
                               _%r128187%_)
                        (cons (cons _%svar128185%_ _%tlvar128186%_)
                              _%r128187%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129177
                  _%vars128175%_
                  _%svars128160%_
                  _%tlvars128164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129178
                                                  __tmp129176))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129188
                                           __tmp129179
                                           __tmp129175))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129189
                                    __tmp129174))
                                 '()))
                     '()))
              (__tmp129171
               (let ((__tmp129172
                      (let ()
                        (declare (not safe))
                        (cons _%$target128146%_ _%linit128168%_))))
                 (declare (not safe))
                 (cons _%$lp128152%_ __tmp129172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129173
                                                   __tmp129171)))))
                                      (let ((_%body128173%_
                                             (let ((__tmp129191
                                                    (cons (cons (cons _%$target128146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128150%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128071%_
                                 _%rlen128144%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129190
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur127978%_
                                                       _%tl128141%_
                                                       _%vars128070%_
                                                       _%$tl128150%_
                                                       _%E128072%_
                                                       _%make-loop128171%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129191
                                                __tmp129190))))
                                        (let ((__tmp129195
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128071%_)))
                                              (__tmp129192
                                               (if (zero? _%rlen128144%_)
                                                   _%body128173%_
                                                   (let ((__tmp129193
                                                          (let ((__tmp129194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128071%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129194 _%rlen128144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129193
                                                      _%body128173%_
                                                      _%E128072%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129195
                                           __tmp129192
                                           _%E128072%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128127128134%_))
                              (let ((_%hd128131128192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128127128134%_)))
                                    (_%tl128132128194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128127128134%_))))
                                (let* ((_%hd128197%_ _%hd128131128192%_)
                                       (_%tl128199%_ _%tl128132128194%_))
                                  (declare (not safe))
                                  (_%K128130128189%_
                                   _%tl128199%_
                                   _%hd128197%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128129128138%_))))
                        (if (eq? 'null _%$e128091%_)
                            (let ((__tmp129197
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128071%_)))
                                  (__tmp129196 (_%k128073%_ _%vars128070%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129197
                               __tmp129196
                               _%E128072%_))
                            (if (eq? 'vector _%$e128091%_)
                                (let ((_%$e128201%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129202
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128071%_)))
                                        (__tmp129198
                                         (let ((__tmp129200
                                                (cons (cons (cons _%$e128201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129201
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127785%_
                                    _%target128071%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129201))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129199
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur127978%_
                                                   _%body128088%_
                                                   _%vars128070%_
                                                   _%$e128201%_
                                                   _%E128072%_
                                                   _%k128073%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129200
                                            __tmp129199))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129202
                                     __tmp129198
                                     _%E128072%_)))
                                (if (eq? 'box _%$e128091%_)
                                    (let ((_%$e128203%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129207
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128071%_)))
                                            (__tmp129203
                                             (let ((__tmp129205
                                                    (cons (cons (cons _%$e128203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129206
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127785%_
                                        _%target128071%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129206))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129204
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur127978%_
                                                       _%body128088%_
                                                       _%vars128070%_
                                                       _%$e128203%_
                                                       _%E128072%_
                                                       _%k128073%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129205
                                                __tmp129204))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129207
                                         __tmp129203
                                         _%E128072%_)))
                                    (if (eq? 'datum _%$e128091%_)
                                        (let ((_%$e128205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129213
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128071%_)))
                                                (__tmp129208
                                                 (let ((__tmp129212
                                                        (cons (cons (cons _%$e128205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128071%_))
                                  '()))
                      '()))
               (__tmp129209
                (let ((__tmp129211
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128205%_ _%body128088%_)))
                      (__tmp129210 (_%k128073%_ _%vars128070%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129211 __tmp129210 _%E128072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129212
                                                    __tmp129209))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129213
                                             __tmp129208
                                             _%E128072%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG127977%_
                                           _%e128069%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128074128081%_))
                                      (let ((_%hd128078128210%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128074128081%_)))
                                            (_%tl128079128212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128074128081%_))))
                                        (let* ((_%tag128215%_
                                                _%hd128078128210%_)
                                               (_%body128217%_
                                                _%tl128079128212%_))
                                          (declare (not safe))
                                          (_%K128077128207%_
                                           _%body128217%_
                                           _%tag128215%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128076128085%_))))))
                             (_%splice-rlen127979%_
                              (lambda (_%e128031%_)
                                (let _%lp128033%_ ((_%e128035%_ _%e128031%_)
                                                   (_%n128036%_ '0))
                                  (let* ((_%e128037128044%_ _%e128035%_)
                                         (_%E128039128048%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128037128044%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128040128057%_
                                          (lambda (_%body128051%_
                                                   _%tag128052%_)
                                            (let ((_%$e128054%_ _%tag128052%_))
                                              (if (eq? 'splice _%$e128054%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127783%_
                                                     _%where127970%_))
                                                  (if (eq? 'cons _%$e128054%_)
                                                      (let ((__tmp129215
                                                             (cdr _%body128051%_))
                                                            (__tmp129214
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128036%_ '1))))
                (declare (not safe))
                (_%lp128033%_ __tmp129215 __tmp129214))
              _%n128036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128037128044%_))
                                        (let ((_%hd128041128060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128037128044%_)))
                                              (_%tl128042128062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128037128044%_))))
                                          (let* ((_%tag128065%_
                                                  _%hd128041128060%_)
                                                 (_%body128067%_
                                                  _%tl128042128062%_))
                                            (declare (not safe))
                                            (_%K128040128057%_
                                             _%body128067%_
                                             _%tag128065%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128039128048%_)))))))
                             (_%splice-vars127980%_
                              (lambda (_%e127987%_)
                                (let _%recur127989%_ ((_%e127991%_ _%e127987%_)
                                                      (_%vars127992%_ '()))
                                  (let* ((_%e127993128000%_ _%e127991%_)
                                         (_%E127995128004%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127993128000%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127996128019%_
                                          (lambda (_%body128007%_
                                                   _%tag128008%_)
                                            (let ((_%$e128010%_ _%tag128008%_))
                                              (if (eq? 'var _%$e128010%_)
                                                  (cons _%body128007%_
                                                        _%vars127992%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128010%_)
                                                          (eq? 'splice
                                                               _%$e128010%_))
                                                      (let ((__tmp129218
                                                             (cdr _%body128007%_))
                                                            (__tmp129216
                                                             (let ((__tmp129217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128007%_)))
                       (declare (not safe))
                       (_%recur127989%_ __tmp129217 _%vars127992%_))))
                (declare (not safe))
                (_%recur127989%_ __tmp129218 __tmp129216))
              (if (or (eq? 'vector _%$e128010%_) (eq? 'box _%$e128010%_))
                  (let ()
                    (declare (not safe))
                    (_%recur127989%_ _%body128007%_ _%vars127992%_))
                  _%vars127992%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127993128000%_))
                                        (let ((_%hd127997128022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127993128000%_)))
                                              (_%tl127998128024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127993128000%_))))
                                          (let* ((_%tag128027%_
                                                  _%hd127997128022%_)
                                                 (_%body128029%_
                                                  _%tl127998128024%_))
                                            (declare (not safe))
                                            (_%K127996128019%_
                                             _%body128029%_
                                             _%tag128027%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127995128004%_)))))))
                             (_%make-body127981%_
                              (lambda (_%vars127983%_)
                                (cons _%K127974%_
                                      (map (lambda (_%mvar127985%_)
                                             (let ((__tmp129219
                                                    (car _%mvar127985%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129219
                                                _%vars127983%_
                                                _%BUG127977%_)))
                                           _%mvars127973%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur127978%_
                         _%hd127972%_
                         '()
                         _%target127971%_
                         _%E127975%_
                         _%make-body127981%_)))))
                 (_%parse-clause127792%_
                  (lambda (_%hd127864%_ _%ids127865%_)
                    (let _%recur127867%_ ((_%e127869%_ _%hd127864%_)
                                          (_%vars127870%_ '())
                                          (_%depth127871%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127869%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e127869%_))
                                (let () (values '(any) _%vars127870%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e127869%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Misplaced ellipsis"
                                         _%stx127783%_
                                         _%hd127864%_)))
                                    (if (let ((__tmp129220
                                               (lambda (_%id127876%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e127869%_
                                                    _%id127876%_)))))
                                          (declare (not safe))
                                          (__find __tmp129220 _%ids127865%_))
                                        (let ()
                                          (values (cons 'id _%e127869%_)
                                                  _%vars127870%_))
                                        (if (let ((__tmp129221
                                                   (lambda (_%var127879%_)
                                                     (let ((__tmp129222
                                                            (car _%var127879%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e127869%_
                                                        __tmp129222)))))
                                              (declare (not safe))
                                              (__find __tmp129221
                                                      _%vars127870%_))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Duplicate pattern variable"
                                                 _%stx127783%_
                                                 _%e127869%_)))
                                            (let ()
                                              (values (cons 'var _%e127869%_)
                                                      (cons (cons _%e127869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth127871%_)
                    _%vars127870%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127869%_))
                              (let ()
                                (let* ((_%e127883127890%_ _%e127869%_)
                                       (_%E127885127894%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e127883127890%_))))
                                       (_%E127884127955%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e127883127890%_))
                                              (let ((_%e127886127898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127883127890%_))))
                                                (let ((_%hd127887127901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e127886127898%_)))
                                                      (_%tl127888127903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e127886127898%_))))
                                                  (let* ((_%hd127906%_
                                                          _%hd127887127901%_)
                                                         (_%rest127908%_
                                                          _%tl127888127903%_))
                                                    (if '#t
                                                        (let* ((_%make-pair127923%_
                                                                (lambda (_%tag127910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd127911%_
                                 _%tl127912%_)
                          (let* ((_%hd-depth127914%_
                                  (if (eq? _%tag127910%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth127871%_ '1))
                                      _%depth127871%_))
                                 (_g129223_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur127867%_
                                     _%hd127911%_
                                     _%vars127870%_
                                     _%hd-depth127914%_))))
                            (begin
                              (let ((_g129224_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129223_)
                                           (##vector-length _g129223_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129224_ 2)))
                                    (error "Context expects 2 values"
                                           _g129224_)))
                              (let ((_%hd127916%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129223_ 0)))
                                    (_%vars127917%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129223_ 1))))
                                (let ((_g129225_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur127867%_
                                          _%tl127912%_
                                          _%vars127917%_
                                          _%depth127871%_))))
                                  (begin
                                    (let ((_g129226_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129225_)
                                                 (##vector-length _g129225_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129226_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129226_)))
                                    (let ((_%tl127919%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129225_ 0)))
                                          (_%vars127920%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129225_ 1))))
                                      (let ()
                                        (values (let ((__tmp129227
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd127916%_
                                                               _%tl127919%_))))
                                                  (declare (not safe))
                                                  (cons _%tag127910%_
                                                        __tmp129227))
                                                _%vars127920%_))))))))))
                       (_%e127924127931%_ _%rest127908%_)
                       (_%E127926127935%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair127923%_
                             'cons
                             _%hd127906%_
                             _%rest127908%_))))
                       (_%E127925127951%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127924127931%_))
                              (let ((_%e127927127939%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e127924127931%_))))
                                (let ((_%hd127928127942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127927127939%_)))
                                      (_%tl127929127944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127927127939%_))))
                                  (let* ((_%rest-hd127947%_ _%hd127928127942%_)
                                         (_%rest-tl127949%_
                                          _%tl127929127944%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd127947%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127923%_
                                               'splice
                                               _%hd127906%_
                                               _%rest-tl127949%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127923%_
                                               'cons
                                               _%hd127906%_
                                               _%rest127908%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127926127935%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E127926127935%_))))))
                  (let () (declare (not safe)) (_%E127925127951%_)))
                (let () (declare (not safe)) (_%E127885127894%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E127885127894%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E127884127955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127869%_))
                                  (let () (values '(null) _%vars127870%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127869%_))
                                      (let ()
                                        (let ((_g129228_
                                               (let ((__tmp129230
                                                      (vector->list
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e127869%_)))))
                                                 (declare (not safe))
                                                 (_%recur127867%_
                                                  __tmp129230
                                                  _%vars127870%_
                                                  _%depth127871%_))))
                                          (begin
                                            (let ((_g129229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129228_)
                                                         (##vector-length
                                                          _g129228_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129229_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129229_)))
                                            (let ((_%e127961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129228_
                                                      0)))
                                                  (_%vars127962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129228_
                                                      1))))
                                              (values (cons 'vector
                                                            _%e127961%_)
                                                      _%vars127962%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127869%_))
                                          (let ()
                                            (let ((_g129231_
                                                   (let ((__tmp129233
                                                          (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#syntax-e _%e127869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%recur127867%_
                                                      __tmp129233
                                                      _%vars127870%_
                                                      _%depth127871%_))))
                                              (begin
                                                (let ((_g129232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g129231_)
                                                             (##vector-length
                                                              _g129231_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g129232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g129232_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%e127965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129231_
                                                          0)))
                                                      (_%vars127966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129231_
                                                          1))))
                                                  (values (cons 'box
                                                                _%e127965%_)
                                                          _%vars127966%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127869%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e127869%_)))
                _%vars127870%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad pattern"
                                                   _%stx127783%_
                                                   _%e127869%_)))))))))))))
          (let* ((_%e127793127806%_ _%stx127783%_)
                 (_%E127795127810%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127793127806%_))))
                 (_%E127794127860%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127793127806%_))
                        (let ((_%e127796127814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127793127806%_))))
                          (let ((_%hd127797127817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127796127814%_)))
                                (_%tl127798127819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127796127814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127798127819%_))
                                (let ((_%e127799127822%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127798127819%_))))
                                  (let ((_%hd127800127825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127799127822%_)))
                                        (_%tl127801127827%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127799127822%_))))
                                    (let ((_%expr127830%_ _%hd127800127825%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127801127827%_))
                                          (let ((_%e127802127832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127801127827%_))))
                                            (let ((_%hd127803127835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127802127832%_)))
                                                  (_%tl127804127837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127802127832%_))))
                                              (let* ((_%ids127840%_
                                                      _%hd127803127835%_)
                                                     (_%clauses127842%_
                                                      _%tl127804127837%_))
                                                (if '#t
                                                    (if (let ((__tmp129234
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids127840%_))))
                  (declare (not safe))
                  (not __tmp129234))
                (let ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad template identifier list"
                     _%stx127783%_
                     _%ids127840%_)))
                (if (let ((__tmp129235
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses127842%_))))
                      (declare (not safe))
                      (not __tmp129235))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; clauses expected"
                         _%stx127783%_)))
                    (let ()
                      (let* ((_%ids127847%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids127840%_)))
                             (_%clauses127849%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses127842%_)))
                             (_%clause-ids127851%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses127849%_)))
                             (_%E127853%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target127855%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first127857%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses127849%_))
                                  _%E127853%_
                                  (car _%clause-ids127851%_))))
                        (let ((__tmp129237
                               (let ((__tmp129238
                                      (let ((__tmp129240
                                             (let ((__tmp129244
                                                    (cons (cons (cons _%E127853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129246 (cons _%target127855%_ '()))
                                    (__tmp129245
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target127855%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129246
                                 __tmp129245))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129241
                                                    (let ((__tmp129243
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings127788%_
                                                              _%target127855%_
                                                              _%ids127847%_
                                                              _%clauses127849%_
                                                              _%clause-ids127851%_
                                                              _%E127853%_)))
                                                          (__tmp129242
                                                           (cons _%first127857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr127830%_ '()))))
              (declare (not safe))
              (_%generate-body127789%_ __tmp129243 __tmp129242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129244
                                                __tmp129241)))
                                            (__tmp129239
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx127783%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129240
                                         __tmp129239))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129238)))
                              (__tmp129236
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx127783%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129237 __tmp129236))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E127795127810%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E127795127810%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E127795127810%_)))))
                        (let () (declare (not safe)) (_%E127795127810%_))))))
            (let () (declare (not safe)) (_%E127794127860%_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128508%_)
        (let* ((_%identifier=?128510%_ 'free-identifier=?)
               (_%unwrap-e128512%_ 'syntax-e)
               (_%wrap-e128514%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128508%_
           _%identifier=?128510%_
           _%unwrap-e128512%_
           _%wrap-e128514%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128516%_ _%identifier=?128517%_)
        (let* ((_%unwrap-e128519%_ 'syntax-e) (_%wrap-e128521%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128516%_
           _%identifier=?128517%_
           _%unwrap-e128519%_
           _%wrap-e128521%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128523%_ _%identifier=?128524%_ _%unwrap-e128525%_)
        (let ((_%wrap-e128527%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128523%_
           _%identifier=?128524%_
           _%unwrap-e128525%_
           _%wrap-e128527%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129248_
        (let ((_g129247_ (let () (declare (not safe)) (##length _g129248_))))
          (cond ((let () (declare (not safe)) (##fx= _g129247_ 1))
                 (apply (lambda (_%stx128508%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx128508%_)))
                        _g129248_))
                ((let () (declare (not safe)) (##fx= _g129247_ 2))
                 (apply (lambda (_%stx128516%_ _%identifier=?128517%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx128516%_
                             _%identifier=?128517%_)))
                        _g129248_))
                ((let () (declare (not safe)) (##fx= _g129247_ 3))
                 (apply (lambda (_%stx128523%_
                                 _%identifier=?128524%_
                                 _%unwrap-e128525%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx128523%_
                             _%identifier=?128524%_
                             _%unwrap-e128525%_)))
                        _g129248_))
                ((let () (declare (not safe)) (##fx= _g129247_ 4))
                 (apply (lambda (_%stx128529%_
                                 _%identifier=?128530%_
                                 _%unwrap-e128531%_
                                 _%wrap-e128532%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx128529%_
                             _%identifier=?128530%_
                             _%unwrap-e128531%_
                             _%wrap-e128532%_)))
                        _g129248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129248_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127780%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127780%_))
            (let ((__tmp129249
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127780%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129249 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127738%_ . _%rest127739%_)
        (let ((_%len127741%_ (length _%hd127738%_)))
          (let _%lp127743%_ ((_%rest127745%_ _%rest127739%_))
            (let* ((_%rest127746127754%_ _%rest127745%_)
                   (_%else127748127762%_ (lambda () '#!void))
                   (_%K127750127768%_
                    (lambda (_%rest127765%_ _%hd127766%_)
                      (if (let ((__tmp129250 (length _%hd127766%_)))
                            (declare (not safe))
                            (##fx= _%len127741%_ __tmp129250))
                          (let ()
                            (declare (not safe))
                            (_%lp127743%_ _%rest127765%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127766%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127746127754%_))
                  (let ((_%hd127751127771%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127746127754%_)))
                        (_%tl127752127773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127746127754%_))))
                    (let* ((_%hd127776%_ _%hd127751127771%_)
                           (_%rest127778%_ _%tl127752127773%_))
                      (declare (not safe))
                      (_%K127750127768%_ _%rest127778%_ _%hd127776%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127693%_ _%n127694%_)
        (let _%lp127696%_ ((_%rest127698%_ _%stx127693%_) (_%r127699%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127698%_))
              (let* ((_%g127700127707%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127698%_)))
                     (_%E127702127711%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127700127707%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127703127717%_
                      (lambda (_%rest127714%_ _%hd127715%_)
                        (let ((__tmp129251 (cons _%hd127715%_ _%r127699%_)))
                          (declare (not safe))
                          (_%lp127696%_ _%rest127714%_ __tmp129251)))))
                (if (let () (declare (not safe)) (##pair? _%g127700127707%_))
                    (let ((_%hd127704127720%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127700127707%_)))
                          (_%tl127705127722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127700127707%_))))
                      (let* ((_%hd127725%_ _%hd127704127720%_)
                             (_%rest127727%_ _%tl127705127722%_))
                        (declare (not safe))
                        (_%K127703127717%_ _%rest127727%_ _%hd127725%_)))
                    (let () (declare (not safe)) (_%E127702127711%_))))
              (let _%lp127729%_ ((_%n127731%_ _%n127694%_)
                                 (_%l127732%_ _%r127699%_)
                                 (_%r127733%_ _%rest127698%_))
                (if (let () (declare (not safe)) (null? _%l127732%_))
                    (let () (values _%l127732%_ _%r127733%_))
                    (if (fxpositive? _%n127731%_)
                        (let ()
                          (let ((__tmp129254
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%n127731%_ '1)))
                                (__tmp129253 (cdr _%l127732%_))
                                (__tmp129252
                                 (cons (car _%l127732%_) _%r127733%_)))
                            (declare (not safe))
                            (_%lp127729%_
                             __tmp129254
                             __tmp129253
                             __tmp129252)))
                        (let ()
                          (values (reverse _%l127732%_) _%r127733%_)))))))))))
