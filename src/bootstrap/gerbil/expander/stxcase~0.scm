(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712155162)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129114 (list gx#expander::t))
            (__tmp129113 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129114
         '(id depth)
         __tmp129113
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129110%_
        (apply make-instance gx#syntax-pattern::t _%$args129110%_)))
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
      (lambda (_%self129096%_ _%stx129097%_)
        (let ((_%self129100%_ _%self129096%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129097%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128562%_)
        (letrec ((_%generate128564%_
                  (lambda (_%e128804%_)
                    (letrec ((_%BUG128806%_
                              (lambda (_%q128971%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128562%_
                                         _%e128804%_
                                         _%q128971%_))))
                             (_%local-pattern-e128807%_
                              (lambda (_%pat128969%_)
                                (let ((__tmp129115
                                       (##structure-ref
                                        _%pat128969%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129115))))
                             (_%getvar128808%_
                              (lambda (_%q128966%_ _%vars128967%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128966%_
                                   _%vars128967%_
                                   _%BUG128806%_))))
                             (_%getarg128809%_
                              (lambda (_%arg128932%_ _%vars128933%_)
                                (let* ((_%arg128934128941%_ _%arg128932%_)
                                       (_%E128936128945%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128934128941%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128937128954%_
                                        (lambda (_%e128948%_ _%tag128949%_)
                                          (let ((_%$e128951%_ _%tag128949%_))
                                            (if (eq? 'ref _%$e128951%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar128808%_
                                                   _%e128948%_
                                                   _%vars128933%_))
                                                (if (eq? 'pattern _%$e128951%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e128807%_
                                                       _%e128948%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG128806%_
                                                       _%arg128932%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128934128941%_))
                                      (let ((_%hd128938128957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128934128941%_)))
                                            (_%tl128939128959%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128934128941%_))))
                                        (let* ((_%tag128962%_
                                                _%hd128938128957%_)
                                               (_%e128964%_
                                                _%tl128939128959%_))
                                          (declare (not safe))
                                          (_%K128937128954%_
                                           _%e128964%_
                                           _%tag128962%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128936128945%_)))))))
                      (let _%recur128811%_ ((_%e128813%_ _%e128804%_)
                                            (_%vars128814%_ '()))
                        (let* ((_%e128815128822%_ _%e128813%_)
                               (_%E128817128826%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128815128822%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128818128920%_
                                (lambda (_%body128829%_ _%tag128830%_)
                                  (let ((_%$e128832%_ _%tag128830%_))
                                    (if (eq? 'datum _%$e128832%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128829%_))
                                        (if (eq? 'term _%$e128832%_)
                                            (let ((_%id128835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128829%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128835%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks128838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id128835%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks128838%_))
                                                        (let ((__tmp129116
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body128829%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129116))
                (let ((__tmp129118
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body128829%_)))
                      (__tmp129117
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body128829%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129118
                   __tmp129117
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128835%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body128829%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG128806%_
                                                         _%e128813%_)))))
                                            (if (eq? 'pattern _%$e128832%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e128807%_
                                                   _%body128829%_))
                                                (if (eq? 'ref _%$e128832%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar128808%_
                                                       _%body128829%_
                                                       _%vars128814%_))
                                                    (if (eq? 'cons
                                                             _%$e128832%_)
                                                        (let ((__tmp129121
                                                               (let ((__tmp129122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body128829%_)))
                         (declare (not safe))
                         (_%recur128811%_ __tmp129122 _%vars128814%_)))
                      (__tmp129119
                       (let ((__tmp129120 (cdr _%body128829%_)))
                         (declare (not safe))
                         (_%recur128811%_ __tmp129120 _%vars128814%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129121 __tmp129119))
                (if (eq? 'vector _%$e128832%_)
                    (let ((__tmp129123
                           (let ()
                             (declare (not safe))
                             (_%recur128811%_ _%body128829%_ _%vars128814%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129123))
                    (if (eq? 'box _%$e128832%_)
                        (let ((__tmp129124
                               (let ()
                                 (declare (not safe))
                                 (_%recur128811%_
                                  _%body128829%_
                                  _%vars128814%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129124))
                        (if (eq? 'splice _%$e128832%_)
                            (let* ((_%body128841128852%_ _%body128829%_)
                                   (_%E128843128856%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128841128852%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128844128894%_
                                    (lambda (_%args128859%_
                                             _%iv128860%_
                                             _%hd128861%_
                                             _%depth128862%_)
                                      (let* ((_%targets128868%_
                                              (map (lambda (_%g128863128865%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg128809%_
                                                        _%g128863128865%_
                                                        _%vars128814%_)))
                                                   _%args128859%_))
                                             (_%fold-in128870%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128859%_)))
                                             (_%fold-out128872%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128874%_
                                              (let ((__tmp129125
                                                     (cons _%fold-out128872%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129125
                                                 _%fold-in128870%_)))
                                             (_%lambda-body128891%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128862%_ '1))
                                                  (let ((_%r-args128882%_
                                                         (map (lambda (_%arg128876%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128876%_)))
                      _%args128859%_))
                (_%r-vars128883%_
                 (let ((__tmp129126
                        (lambda (_%arg128878%_ _%var128879%_ _%r128880%_)
                          (cons (cons (cdr _%arg128878%_) _%var128879%_)
                                _%r128880%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129126
                    _%vars128814%_
                    _%args128859%_
                    _%fold-in128870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129127
                                                           (let ((__tmp129128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129132
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth128862%_ '1)))
                                (__tmp129129
                                 (let ((__tmp129130
                                        (let ((__tmp129131
                                               (cons 'var _%fold-out128872%_)))
                                          (declare (not safe))
                                          (cons __tmp129131
                                                _%r-args128882%_))))
                                   (declare (not safe))
                                   (cons _%hd128861%_ __tmp129130))))
                            (declare (not safe))
                            (cons __tmp129132 __tmp129129))))
                     (declare (not safe))
                     (cons 'splice __tmp129128))))
              (declare (not safe))
              (_%recur128811%_ __tmp129127 _%r-vars128883%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars128889%_
                                                          (let ((__tmp129133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128885%_ _%var128886%_ _%r128887%_)
                           (cons (cons (cdr _%arg128885%_) _%var128886%_)
                                 _%r128887%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129133
                     _%vars128814%_
                     _%args128859%_
                     _%fold-in128870%_)))
                 (__tmp129134
                  (let ()
                    (declare (not safe))
                    (_%recur128811%_ _%hd128861%_ _%hd-vars128889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129134
                                                     _%fold-out128872%_)))))
                                        (let ((__tmp129138
                                               (if (let ((__tmp129139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128868%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129139 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128868%_))
                                                   '#!void))
                                              (__tmp129135
                                               (let ((__tmp129137
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128874%_
                                                         _%lambda-body128891%_)))
                                                     (__tmp129136
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur128811%_
                                                         _%iv128860%_
                                                         _%vars128814%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129137
                                                  __tmp129136
                                                  _%targets128868%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129138
                                           __tmp129135))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128841128852%_))
                                  (let ((_%hd128845128897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128841128852%_)))
                                        (_%tl128846128899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128841128852%_))))
                                    (let ((_%depth128902%_ _%hd128845128897%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128846128899%_))
                                          (let ((_%hd128847128904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128846128899%_)))
                                                (_%tl128848128906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128846128899%_))))
                                            (let ((_%hd128909%_
                                                   _%hd128847128904%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128848128906%_))
                                                  (let ((_%hd128849128911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128848128906%_)))
                                                        (_%tl128850128913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128848128906%_))))
                                                    (let* ((_%iv128916%_
                                                            _%hd128849128911%_)
                                                           (_%args128918%_
                                                            _%tl128850128913%_))
                                                      (declare (not safe))
                                                      (_%K128844128894%_
                                                       _%args128918%_
                                                       _%iv128916%_
                                                       _%hd128909%_
                                                       _%depth128902%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E128843128856%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128843128856%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128843128856%_))))
                            (if (eq? 'var _%$e128832%_)
                                _%body128829%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG128806%_ _%e128813%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128815128822%_))
                              (let ((_%hd128819128923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128815128822%_)))
                                    (_%tl128820128925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128815128822%_))))
                                (let* ((_%tag128928%_ _%hd128819128923%_)
                                       (_%body128930%_ _%tl128820128925%_))
                                  (declare (not safe))
                                  (_%K128818128920%_
                                   _%body128930%_
                                   _%tag128928%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128817128826%_))))))))
                 (_%parse128565%_
                  (lambda (_%e128606%_)
                    (letrec ((_%make-cons128608%_
                              (lambda (_%hd128796%_ _%tl128797%_)
                                (let ((_g129140_ _%hd128796%_)
                                      (_g129142_ _%tl128797%_))
                                  (begin
                                    (let ((_g129141_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129140_)
                                                 (##vector-length _g129140_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129141_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129141_)))
                                    (let ((_g129143_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129142_)
                                                 (##vector-length _g129142_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129143_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129143_)))
                                    (let ((_%hd-e128799%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129140_ 0)))
                                          (_%hd-vars128800%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129140_ 1))))
                                      (let ((_%tl-e128801%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129142_ 0)))
                                            (_%tl-vars128802%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129142_ 1))))
                                        (values (let ((__tmp129144
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e128799%_
                                                               _%tl-e128801%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129144))
                                                (append _%hd-vars128800%_
                                                        _%tl-vars128802%_))))))))
                             (_%make-splice128609%_
                              (lambda (_%where128732%_
                                       _%depth128733%_
                                       _%hd128734%_
                                       _%tl128735%_)
                                (let ((_g129145_ _%hd128734%_)
                                      (_g129147_ _%tl128735%_))
                                  (begin
                                    (let ((_g129146_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129145_)
                                                 (##vector-length _g129145_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129146_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129146_)))
                                    (let ((_g129148_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129147_)
                                                 (##vector-length _g129147_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129148_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129148_)))
                                    (let ((_%hd-e128737%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129145_ 0)))
                                          (_%hd-vars128738%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129145_ 1))))
                                      (let ((_%tl-e128739%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129147_ 0)))
                                            (_%tl-vars128740%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129147_ 1))))
                                        (let _%lp128742%_ ((_%rest128744%_
                                                            _%hd-vars128738%_)
                                                           (_%targets128745%_
                                                            '())
                                                           (_%vars128746%_
                                                            _%tl-vars128740%_))
                                          (let* ((_%rest128747128757%_
                                                  _%rest128744%_)
                                                 (_%else128749128765%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets128745%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128562%_
                                                           _%where128732%_))
                                                        (values (let ((__tmp129149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129150
                                      (let ((__tmp129151
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e128739%_
                                                     _%targets128745%_))))
                                        (declare (not safe))
                                        (cons _%hd-e128737%_ __tmp129151))))
                                 (declare (not safe))
                                 (cons _%depth128733%_ __tmp129150))))
                          (declare (not safe))
                          (cons 'splice __tmp129149))
                        _%vars128746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128751128777%_
                                                  (lambda (_%rest128768%_
                                                           _%hd-pat128769%_
                                                           _%hd-depth*128770%_)
                                                    (let ((_%hd-depth128772%_
                                                           (fx- _%hd-depth*128770%_
                                                                _%depth128733%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128772%_))
                                                          (let ((__tmp129153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat128769%_) _%targets128745%_))
                        (__tmp129152
                         (cons (cons _%hd-depth128772%_ _%hd-pat128769%_)
                               _%vars128746%_)))
                    (declare (not safe))
                    (_%lp128742%_ _%rest128768%_ __tmp129153 __tmp129152))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128772%_))
                      (let ((__tmp129154
                             (cons (cons 'pattern _%hd-pat128769%_)
                                   _%targets128745%_)))
                        (declare (not safe))
                        (_%lp128742%_
                         _%rest128768%_
                         __tmp129154
                         _%vars128746%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx128562%_
                         _%where128732%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128747128757%_))
                                                (let ((_%hd128752128780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128747128757%_)))
                                                      (_%tl128753128782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128747128757%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128752128780%_))
                                                      (let ((_%hd128754128785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128752128780%_)))
                    (_%tl128755128787%_
                     (let () (declare (not safe)) (##cdr _%hd128752128780%_))))
                (let* ((_%hd-depth*128790%_ _%hd128754128785%_)
                       (_%hd-pat128792%_ _%tl128755128787%_)
                       (_%rest128794%_ _%tl128753128782%_))
                  (declare (not safe))
                  (_%K128751128777%_
                   _%rest128794%_
                   _%hd-pat128792%_
                   _%hd-depth*128790%_)))
              (let () (declare (not safe)) (_%else128749128765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else128749128765%_)))))))))))
                             (_%recur128610%_
                              (lambda (_%e128615%_ _%is-e?128616%_)
                                (if (_%is-e?128616%_ _%e128615%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx128562%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e128615%_))
                                        (let ()
                                          (let* ((_%pat128620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e128615%_)))
                                                 (_%depth128622%_
                                                  (##structure-ref
                                                   _%pat128620%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth128622%_)
                                                (values (cons 'ref
                                                              _%pat128620%_)
                                                        (cons (cons _%depth128622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat128620%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat128620%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128615%_))
                                            (let ()
                                              (values (cons 'term _%e128615%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128615%_))
                                                (let ()
                                                  (let* ((_%e128626128633%_
                                                          _%e128615%_)
                                                         (_%E128628128637%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e128626128633%_))))
                                                         (_%E128627128719%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e128626128633%_))
                        (let ((_%e128629128641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128626128633%_))))
                          (let ((_%hd128630128644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128629128641%_)))
                                (_%tl128631128646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128629128641%_))))
                            (let* ((_%hd128649%_ _%hd128630128644%_)
                                   (_%rest128651%_ _%tl128631128646%_))
                              (if '#t
                                  (if (_%is-e?128616%_ _%hd128649%_)
                                      (let* ((_%e128652128659%_ _%rest128651%_)
                                             (_%E128654128663%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx128562%_
                                                   _%e128615%_))))
                                             (_%E128653128677%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128652128659%_))
                                                    (let ((_%e128655128667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128652128659%_))))
                                                      (let ((_%hd128656128670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128655128667%_)))
                    (_%tl128657128672%_
                     (let () (declare (not safe)) (##cdr _%e128655128667%_))))
                (let ((_%rest128675%_ _%hd128656128670%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl128657128672%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur128610%_ _%rest128675%_ false))
                          (let () (declare (not safe)) (_%E128654128663%_)))
                      (let () (declare (not safe)) (_%E128654128663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128654128663%_))))))
                                        (declare (not safe))
                                        (_%E128653128677%_))
                                      (let _%lp128681%_ ((_%rest128683%_
                                                          _%rest128651%_)
                                                         (_%depth128684%_ '0))
                                        (let* ((_%e128685128692%_
                                                _%rest128683%_)
                                               (_%E128687128696%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth128684%_)
                                                      (let ((__tmp129156
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur128610%_ _%hd128649%_ _%is-e?128616%_)))
                    (__tmp129155
                     (let ()
                       (declare (not safe))
                       (_%recur128610%_ _%rest128683%_ _%is-e?128616%_))))
                (declare (not safe))
                (_%make-splice128609%_
                 _%e128615%_
                 _%depth128684%_
                 __tmp129156
                 __tmp129155))
              (let ((__tmp129158
                     (let ()
                       (declare (not safe))
                       (_%recur128610%_ _%hd128649%_ _%is-e?128616%_)))
                    (__tmp129157
                     (let ()
                       (declare (not safe))
                       (_%recur128610%_ _%rest128683%_ _%is-e?128616%_))))
                (declare (not safe))
                (_%make-cons128608%_ __tmp129158 __tmp129157)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E128686128715%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e128685128692%_))
                                                      (let ((_%e128688128700%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e128685128692%_))))
                (let ((_%hd128689128703%_
                       (let () (declare (not safe)) (##car _%e128688128700%_)))
                      (_%tl128690128705%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e128688128700%_))))
                  (let* ((_%rest-hd128708%_ _%hd128689128703%_)
                         (_%rest-tl128710%_ _%tl128690128705%_))
                    (if '#t
                        (if (_%is-e?128616%_ _%rest-hd128708%_)
                            (let ((__tmp129159
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth128684%_ '1))))
                              (declare (not safe))
                              (_%lp128681%_ _%rest-tl128710%_ __tmp129159))
                            (if (fxpositive? _%depth128684%_)
                                (let ((__tmp129161
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128610%_
                                          _%hd128649%_
                                          _%is-e?128616%_)))
                                      (__tmp129160
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128610%_
                                          _%rest128683%_
                                          _%is-e?128616%_))))
                                  (declare (not safe))
                                  (_%make-splice128609%_
                                   _%e128615%_
                                   _%depth128684%_
                                   __tmp129161
                                   __tmp129160))
                                (let ((__tmp129163
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128610%_
                                          _%hd128649%_
                                          _%is-e?128616%_)))
                                      (__tmp129162
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128610%_
                                          _%rest128683%_
                                          _%is-e?128616%_))))
                                  (declare (not safe))
                                  (_%make-cons128608%_
                                   __tmp129163
                                   __tmp129162))))
                        (let () (declare (not safe)) (_%E128687128696%_))))))
              (let () (declare (not safe)) (_%E128687128696%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E128686128715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128628128637%_))))))
                        (let () (declare (not safe)) (_%E128628128637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E128627128719%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128615%_))
                                                    (let ((_g129164_
                                                           (let ((__tmp129166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e128615%_)))))
                     (declare (not safe))
                     (_%recur128610%_ __tmp129166 _%is-e?128616%_))))
              (begin
                (let ((_g129165_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129164_)
                             (##vector-length _g129164_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129165_ 2)))
                      (error "Context expects 2 values" _g129165_)))
                (let ((_%e128724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129164_ 0)))
                      (_%vars128725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129164_ 1))))
                  (values (cons 'vector _%e128724%_) _%vars128725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128615%_))
                                                        (let ((_g129167_
                                                               (let ((__tmp129169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e128615%_)))))
                         (declare (not safe))
                         (_%recur128610%_ __tmp129169 _%is-e?128616%_))))
                  (begin
                    (let ((_g129168_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129167_)
                                 (##vector-length _g129167_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129168_ 2)))
                          (error "Context expects 2 values" _g129168_)))
                    (let ((_%e128728%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129167_ 0)))
                          (_%vars128729%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129167_ 1))))
                      (values (cons 'box _%e128728%_) _%vars128729%_))))
                (let () (values (cons 'datum _%e128615%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129170_
                             (let ()
                               (declare (not safe))
                               (_%recur128610%_ _%e128606%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129171_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129170_)
                                       (##vector-length _g129170_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129171_ 2)))
                                (error "Context expects 2 values" _g129171_)))
                          (let ((_%tree128612%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129170_ 0)))
                                (_%vars128613%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129170_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars128613%_))
                                _%tree128612%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128562%_
                                   _%vars128613%_))))))))))
          (let* ((_%e128566128576%_ _%stx128562%_)
                 (_%E128568128580%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128562%_))))
                 (_%E128567128602%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128566128576%_))
                        (let ((_%e128569128584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128566128576%_))))
                          (let ((_%hd128570128587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128569128584%_)))
                                (_%tl128571128589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128569128584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128571128589%_))
                                (let ((_%e128572128592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128571128589%_))))
                                  (let ((_%hd128573128595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128572128592%_)))
                                        (_%tl128574128597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128572128592%_))))
                                    (let ((_%form128600%_ _%hd128573128595%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128574128597%_))
                                          (if '#t
                                              (let ((__tmp129173
                                                     (let ((__tmp129174
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse128565%_
                                                               _%form128600%_))))
                                                       (declare (not safe))
                                                       (_%generate128564%_
                                                        __tmp129174)))
                                                    (__tmp129172
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128562%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129173
                                                 __tmp129172))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128568128580%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128568128580%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128568128580%_)))))
                        (let () (declare (not safe)) (_%E128568128580%_))))))
            (declare (not safe))
            (_%E128567128602%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127811%_
               _%identifier=?127812%_
               _%unwrap-e127813%_
               _%wrap-e127814%_)
        (letrec ((_%generate-bindings127816%_
                  (lambda (_%target128426%_
                           _%ids128427%_
                           _%clauses128428%_
                           _%clause-ids128429%_
                           _%E128430%_)
                    (letrec ((_%generate1128432%_
                              (lambda (_%clause128529%_
                                       _%clause-id128530%_
                                       _%E128531%_)
                                (cons (cons _%clause-id128530%_ '())
                                      (cons (let ((__tmp129176
                                                   (cons _%target128426%_ '()))
                                                  (__tmp129175
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause127818%_
                                                      _%target128426%_
                                                      _%ids128427%_
                                                      _%clause128529%_
                                                      _%E128531%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129176
                                               __tmp129175))
                                            '())))))
                      (let _%lp128434%_ ((_%rest128436%_ _%clauses128428%_)
                                         (_%rest-ids128437%_
                                          _%clause-ids128429%_)
                                         (_%bindings128438%_ '()))
                        (let* ((_%rest128439128447%_ _%rest128436%_)
                               (_%else128441128455%_
                                (lambda () _%bindings128438%_))
                               (_%K128443128517%_
                                (lambda (_%rest128458%_ _%clause128459%_)
                                  (let* ((_%rest-ids128460128467%_
                                          _%rest-ids128437%_)
                                         (_%E128462128471%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128460128467%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128463128505%_
                                          (lambda (_%rest-ids128474%_
                                                   _%clause-id128475%_)
                                            (let* ((_%rest-ids128476128484%_
                                                    _%rest-ids128474%_)
                                                   (_%else128478128492%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128432%_
                                                               _%clause128459%_
                                                               _%clause-id128475%_
                                                               _%E128430%_))
                                                            _%bindings128438%_)))
                                                   (_%K128480128497%_
                                                    (lambda (_%next-clause-id128495%_)
                                                      (let ((__tmp129177
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128432%_
                              _%clause128459%_
                              _%clause-id128475%_
                              _%next-clause-id128495%_))
                           _%bindings128438%_)))
                (declare (not safe))
                (_%lp128434%_
                 _%rest128458%_
                 _%rest-ids128474%_
                 __tmp129177)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128476128484%_))
                                                  (let* ((_%hd128481128500%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128476128484%_)))
                                                         (_%next-clause-id128503%_
                                                          _%hd128481128500%_))
                                                    (declare (not safe))
                                                    (_%K128480128497%_
                                                     _%next-clause-id128503%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128478128492%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128460128467%_))
                                        (let ((_%hd128464128508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128460128467%_)))
                                              (_%tl128465128510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128460128467%_))))
                                          (let* ((_%clause-id128513%_
                                                  _%hd128464128508%_)
                                                 (_%rest-ids128515%_
                                                  _%tl128465128510%_))
                                            (declare (not safe))
                                            (_%K128463128505%_
                                             _%rest-ids128515%_
                                             _%clause-id128513%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128462128471%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128439128447%_))
                              (let ((_%hd128444128520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128439128447%_)))
                                    (_%tl128445128522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128439128447%_))))
                                (let* ((_%clause128525%_ _%hd128444128520%_)
                                       (_%rest128527%_ _%tl128445128522%_))
                                  (declare (not safe))
                                  (_%K128443128517%_
                                   _%rest128527%_
                                   _%clause128525%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128441128455%_))))))))
                 (_%generate-body127817%_
                  (lambda (_%bindings128386%_ _%body128387%_)
                    (let _%recur128389%_ ((_%rest128391%_ _%bindings128386%_))
                      (let* ((_%rest128392128400%_ _%rest128391%_)
                             (_%else128394128408%_ (lambda () _%body128387%_))
                             (_%K128396128414%_
                              (lambda (_%rest128411%_ _%hd128412%_)
                                (let ((__tmp129179 (cons _%hd128412%_ '()))
                                      (__tmp129178
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128389%_ _%rest128411%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129179
                                   __tmp129178)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128392128400%_))
                            (let ((_%hd128397128417%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128392128400%_)))
                                  (_%tl128398128419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128392128400%_))))
                              (let* ((_%hd128422%_ _%hd128397128417%_)
                                     (_%rest128424%_ _%tl128398128419%_))
                                (declare (not safe))
                                (_%K128396128414%_
                                 _%rest128424%_
                                 _%hd128422%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128394128408%_)))))))
                 (_%generate-clause127818%_
                  (lambda (_%target128249%_
                           _%ids128250%_
                           _%clause128251%_
                           _%E128252%_)
                    (letrec ((_%generate1128254%_
                              (lambda (_%hd128341%_
                                       _%fender128342%_
                                       _%body128343%_)
                                (let ((_g129180_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause127820%_
                                          _%hd128341%_
                                          _%ids128250%_))))
                                  (begin
                                    (let ((_g129181_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129180_)
                                                 (##vector-length _g129180_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129181_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129181_)))
                                    (let ((_%e128345%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129180_ 0)))
                                          (_%mvars128346%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129180_ 1))))
                                      (let* ((_%pvars128348%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128346%_))))
                                             (_%E128350%_
                                              (cons _%E128252%_
                                                    (cons _%target128249%_
                                                          '())))
                                             (_%K128383%_
                                              (let ((__tmp129182
                                                     (let ((__tmp129184
                                                            (map (lambda (_%mvar128352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128353%_)
                           (let* ((_%mvar128354128361%_ _%mvar128352%_)
                                  (_%E128356128365%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128354128361%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128357128371%_
                                   (lambda (_%depth128368%_ _%id128369%_)
                                     (cons _%id128369%_
                                           (cons (let ((__tmp129186
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128369%_)))
                                                       (__tmp129185
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128353%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129186
                                                    __tmp129185
                                                    _%depth128368%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128354128361%_))
                                 (let ((_%hd128358128374%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128354128361%_)))
                                       (_%tl128359128376%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128354128361%_))))
                                   (let* ((_%id128379%_ _%hd128358128374%_)
                                          (_%depth128381%_ _%tl128359128376%_))
                                     (declare (not safe))
                                     (_%K128357128371%_
                                      _%depth128381%_
                                      _%id128379%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128356128365%_)))))
                         _%mvars128346%_
                         _%pvars128348%_))
                   (__tmp129183
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128342%_ '#t))
                        _%body128343%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128342%_
                           _%body128343%_
                           _%E128350%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129184 __tmp129183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128348%_
                                                 __tmp129182))))
                                        (declare (not safe))
                                        (_%generate-match127819%_
                                         _%hd128341%_
                                         _%target128249%_
                                         _%e128345%_
                                         _%mvars128346%_
                                         _%K128383%_
                                         _%E128350%_))))))))
                      (let* ((_%e128255128275%_ _%clause128251%_)
                             (_%E128264128279%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128255128275%_))))
                             (_%E128257128313%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128255128275%_))
                                    (let ((_%e128265128283%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128255128275%_))))
                                      (let ((_%hd128266128286%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128265128283%_)))
                                            (_%tl128267128288%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128265128283%_))))
                                        (let ((_%hd128291%_
                                               _%hd128266128286%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128267128288%_))
                                              (let ((_%e128268128293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128267128288%_))))
                                                (let ((_%hd128269128296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128268128293%_)))
                                                      (_%tl128270128298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128268128293%_))))
                                                  (let ((_%fender128301%_
                                                         _%hd128269128296%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128270128298%_))
                                                        (let ((_%e128271128303%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128270128298%_))))
                  (let ((_%hd128272128306%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128271128303%_)))
                        (_%tl128273128308%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128271128303%_))))
                    (let ((_%body128311%_ _%hd128272128306%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128273128308%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128254%_
                                 _%hd128291%_
                                 _%fender128301%_
                                 _%body128311%_))
                              (let ()
                                (declare (not safe))
                                (_%E128264128279%_)))
                          (let () (declare (not safe)) (_%E128264128279%_))))))
                (let () (declare (not safe)) (_%E128264128279%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128264128279%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128264128279%_)))))
                             (_%E128256128337%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128255128275%_))
                                    (let ((_%e128258128317%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128255128275%_))))
                                      (let ((_%hd128259128320%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128258128317%_)))
                                            (_%tl128260128322%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128258128317%_))))
                                        (let ((_%hd128325%_
                                               _%hd128259128320%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128260128322%_))
                                              (let ((_%e128261128327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128260128322%_))))
                                                (let ((_%hd128262128330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128261128327%_)))
                                                      (_%tl128263128332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128261128327%_))))
                                                  (let ((_%body128335%_
                                                         _%hd128262128330%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128263128332%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128254%_
                                                               _%hd128325%_
                                                               '#t
                                                               _%body128335%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128257128313%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128257128313%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128257128313%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128257128313%_))))))
                        (declare (not safe))
                        (_%E128256128337%_)))))
                 (_%generate-match127819%_
                  (lambda (_%where127998%_
                           _%target127999%_
                           _%hd128000%_
                           _%mvars128001%_
                           _%K128002%_
                           _%E128003%_)
                    (letrec ((_%BUG128005%_
                              (lambda (_%q128247%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127811%_
                                         _%hd128000%_
                                         _%q128247%_))))
                             (_%recur128006%_
                              (lambda (_%e128097%_
                                       _%vars128098%_
                                       _%target128099%_
                                       _%E128100%_
                                       _%k128101%_)
                                (let* ((_%e128102128109%_ _%e128097%_)
                                       (_%E128104128113%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128102128109%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128105128235%_
                                        (lambda (_%body128116%_ _%tag128117%_)
                                          (let ((_%$e128119%_ _%tag128117%_))
                                            (if (eq? 'any _%$e128119%_)
                                                (_%k128101%_ _%vars128098%_)
                                                (if (eq? 'id _%$e128119%_)
                                                    (let ((__tmp129191
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128099%_)))
                                                          (__tmp129187
                                                           (let ((__tmp129189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129190
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127814%_
                                    _%body128116%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127812%_
                             __tmp129190
                             _%target128099%_)))
                         (__tmp129188 (_%k128101%_ _%vars128098%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129189 __tmp129188 _%E128100%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129191 __tmp129187 _%E128100%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128119%_)
                                                        (_%k128101%_
                                                         (cons (cons _%body128116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128099%_)
                       _%vars128098%_))
                (if (eq? 'cons _%$e128119%_)
                    (let ((_%$e128122%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128123%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128124%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129198
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128099%_)))
                            (__tmp129192
                             (let ((__tmp129197
                                    (cons (cons (cons _%$e128122%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127813%_
                                                         _%target128099%_))
                                                      '()))
                                          '()))
                                   (__tmp129193
                                    (let ((__tmp129196
                                           (cons (cons (cons _%$hd128123%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128122%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128122%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129194
                                           (let* ((_%body128125128132%_
                                                   _%body128116%_)
                                                  (_%E128127128136%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128125128132%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128128128144%_
                                                   (lambda (_%tl128139%_
                                                            _%hd128140%_)
                                                     (let ((__tmp129195
                                                            (lambda (_%vars128142%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128006%_
                         _%tl128139%_
                         _%vars128142%_
                         _%$tl128124%_
                         _%E128100%_
                         _%k128101%_)))))
               (declare (not safe))
               (_%recur128006%_
                _%hd128140%_
                _%vars128098%_
                _%$hd128123%_
                _%E128100%_
                __tmp129195)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128125128132%_))
                                                 (let ((_%hd128129128147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128125128132%_)))
                                                       (_%tl128130128149%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128125128132%_))))
                                                   (let* ((_%hd128152%_
                                                           _%hd128129128147%_)
                                                          (_%tl128154%_
                                                           _%tl128130128149%_))
                                                     (declare (not safe))
                                                     (_%K128128128144%_
                                                      _%tl128154%_
                                                      _%hd128152%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128127128136%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129196
                                       __tmp129194))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129197
                                __tmp129193))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129198
                         __tmp129192
                         _%E128100%_)))
                    (if (eq? 'splice _%$e128119%_)
                        (let* ((_%body128155128162%_ _%body128116%_)
                               (_%E128157128166%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128155128162%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128158128217%_
                                (lambda (_%tl128169%_ _%hd128170%_)
                                  (let* ((_%rlen128172%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128007%_
                                             _%tl128169%_)))
                                         (_%$target128174%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128176%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128178%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128180%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128182%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128184%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128186%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128188%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128008%_
                                             _%hd128170%_)))
                                         (_%lvars128190%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128188%_)))
                                         (_%tlvars128192%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128188%_)))
                                         (_%linit128196%_
                                          (map (lambda (_%var128194%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128190%_)))
                                    (letrec ((_%make-loop128199%_
                                              (lambda (_%vars128203%_)
                                                (let ((__tmp129201
                                                       (cons (cons (cons _%$lp128180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129217
                                        (cons _%$hd128176%_ _%lvars128190%_))
                                       (__tmp129202
                                        (let ((__tmp129216
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128176%_)))
                                              (__tmp129207
                                               (let ((__tmp129215
                                                      (cons (cons (cons _%$lp-e128182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127813%_
                                   _%$hd128176%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129208
                                                      (let ((__tmp129214
                                                             (cons (cons (cons _%$lp-hd128184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128182%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128186%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128182%_))
                                             '()))
                                 '())))
                    (__tmp129209
                     (let ((__tmp129210
                            (lambda (_%hdvars128205%_)
                              (let ((__tmp129211
                                     (let ((__tmp129212
                                            (map (lambda (_%svar128207%_
                                                          _%lvar128208%_)
                                                   (let ((__tmp129213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128207%_
                                                             _%hdvars128205%_
                                                             _%BUG128005%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129213
                                                      _%lvar128208%_)))
                                                 _%svars128188%_
                                                 _%lvars128190%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128186%_ __tmp129212))))
                                (declare (not safe))
                                (cons _%$lp128180%_ __tmp129211)))))
                       (declare (not safe))
                       (_%recur128006%_
                        _%hd128170%_
                        '()
                        _%$lp-hd128184%_
                        _%E128100%_
                        __tmp129210))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129214 __tmp129209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129215
                                                  __tmp129208)))
                                              (__tmp129203
                                               (let ((__tmp129206
                                                      (map (lambda (_%lvar128210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128211%_)
                     (cons (cons _%tlvar128211%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128210%_))
                                 '())))
                   _%lvars128190%_
                   _%tlvars128192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129204
                                                      (_%k128101%_
                                                       (let ((__tmp129205
                                                              (lambda (_%svar128213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128214%_
                               _%r128215%_)
                        (cons (cons _%svar128213%_ _%tlvar128214%_)
                              _%r128215%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129205
                  _%vars128203%_
                  _%svars128188%_
                  _%tlvars128192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129206
                                                  __tmp129204))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129216
                                           __tmp129207
                                           __tmp129203))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129217
                                    __tmp129202))
                                 '()))
                     '()))
              (__tmp129199
               (let ((__tmp129200
                      (let ()
                        (declare (not safe))
                        (cons _%$target128174%_ _%linit128196%_))))
                 (declare (not safe))
                 (cons _%$lp128180%_ __tmp129200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129201
                                                   __tmp129199)))))
                                      (let ((_%body128201%_
                                             (let ((__tmp129219
                                                    (cons (cons (cons _%$target128174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128178%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128099%_
                                 _%rlen128172%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129218
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128006%_
                                                       _%tl128169%_
                                                       _%vars128098%_
                                                       _%$tl128178%_
                                                       _%E128100%_
                                                       _%make-loop128199%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129219
                                                __tmp129218))))
                                        (let ((__tmp129223
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128099%_)))
                                              (__tmp129220
                                               (if (zero? _%rlen128172%_)
                                                   _%body128201%_
                                                   (let ((__tmp129221
                                                          (let ((__tmp129222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128099%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129222 _%rlen128172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129221
                                                      _%body128201%_
                                                      _%E128100%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129223
                                           __tmp129220
                                           _%E128100%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128155128162%_))
                              (let ((_%hd128159128220%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128155128162%_)))
                                    (_%tl128160128222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128155128162%_))))
                                (let* ((_%hd128225%_ _%hd128159128220%_)
                                       (_%tl128227%_ _%tl128160128222%_))
                                  (declare (not safe))
                                  (_%K128158128217%_
                                   _%tl128227%_
                                   _%hd128225%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128157128166%_))))
                        (if (eq? 'null _%$e128119%_)
                            (let ((__tmp129225
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128099%_)))
                                  (__tmp129224 (_%k128101%_ _%vars128098%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129225
                               __tmp129224
                               _%E128100%_))
                            (if (eq? 'vector _%$e128119%_)
                                (let ((_%$e128229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129230
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128099%_)))
                                        (__tmp129226
                                         (let ((__tmp129228
                                                (cons (cons (cons _%$e128229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129229
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127813%_
                                    _%target128099%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129229))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129227
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128006%_
                                                   _%body128116%_
                                                   _%vars128098%_
                                                   _%$e128229%_
                                                   _%E128100%_
                                                   _%k128101%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129228
                                            __tmp129227))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129230
                                     __tmp129226
                                     _%E128100%_)))
                                (if (eq? 'box _%$e128119%_)
                                    (let ((_%$e128231%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129235
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128099%_)))
                                            (__tmp129231
                                             (let ((__tmp129233
                                                    (cons (cons (cons _%$e128231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129234
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127813%_
                                        _%target128099%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129234))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129232
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128006%_
                                                       _%body128116%_
                                                       _%vars128098%_
                                                       _%$e128231%_
                                                       _%E128100%_
                                                       _%k128101%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129233
                                                __tmp129232))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129235
                                         __tmp129231
                                         _%E128100%_)))
                                    (if (eq? 'datum _%$e128119%_)
                                        (let ((_%$e128233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129241
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128099%_)))
                                                (__tmp129236
                                                 (let ((__tmp129240
                                                        (cons (cons (cons _%$e128233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128099%_))
                                  '()))
                      '()))
               (__tmp129237
                (let ((__tmp129239
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128233%_ _%body128116%_)))
                      (__tmp129238 (_%k128101%_ _%vars128098%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129239 __tmp129238 _%E128100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129240
                                                    __tmp129237))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129241
                                             __tmp129236
                                             _%E128100%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128005%_
                                           _%e128097%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128102128109%_))
                                      (let ((_%hd128106128238%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128102128109%_)))
                                            (_%tl128107128240%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128102128109%_))))
                                        (let* ((_%tag128243%_
                                                _%hd128106128238%_)
                                               (_%body128245%_
                                                _%tl128107128240%_))
                                          (declare (not safe))
                                          (_%K128105128235%_
                                           _%body128245%_
                                           _%tag128243%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128104128113%_))))))
                             (_%splice-rlen128007%_
                              (lambda (_%e128059%_)
                                (let _%lp128061%_ ((_%e128063%_ _%e128059%_)
                                                   (_%n128064%_ '0))
                                  (let* ((_%e128065128072%_ _%e128063%_)
                                         (_%E128067128076%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128065128072%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128068128085%_
                                          (lambda (_%body128079%_
                                                   _%tag128080%_)
                                            (let ((_%$e128082%_ _%tag128080%_))
                                              (if (eq? 'splice _%$e128082%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127811%_
                                                     _%where127998%_))
                                                  (if (eq? 'cons _%$e128082%_)
                                                      (let ((__tmp129243
                                                             (cdr _%body128079%_))
                                                            (__tmp129242
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128064%_ '1))))
                (declare (not safe))
                (_%lp128061%_ __tmp129243 __tmp129242))
              _%n128064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128065128072%_))
                                        (let ((_%hd128069128088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128065128072%_)))
                                              (_%tl128070128090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128065128072%_))))
                                          (let* ((_%tag128093%_
                                                  _%hd128069128088%_)
                                                 (_%body128095%_
                                                  _%tl128070128090%_))
                                            (declare (not safe))
                                            (_%K128068128085%_
                                             _%body128095%_
                                             _%tag128093%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128067128076%_)))))))
                             (_%splice-vars128008%_
                              (lambda (_%e128015%_)
                                (let _%recur128017%_ ((_%e128019%_ _%e128015%_)
                                                      (_%vars128020%_ '()))
                                  (let* ((_%e128021128028%_ _%e128019%_)
                                         (_%E128023128032%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128021128028%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128024128047%_
                                          (lambda (_%body128035%_
                                                   _%tag128036%_)
                                            (let ((_%$e128038%_ _%tag128036%_))
                                              (if (eq? 'var _%$e128038%_)
                                                  (cons _%body128035%_
                                                        _%vars128020%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128038%_)
                                                          (eq? 'splice
                                                               _%$e128038%_))
                                                      (let ((__tmp129246
                                                             (cdr _%body128035%_))
                                                            (__tmp129244
                                                             (let ((__tmp129245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128035%_)))
                       (declare (not safe))
                       (_%recur128017%_ __tmp129245 _%vars128020%_))))
                (declare (not safe))
                (_%recur128017%_ __tmp129246 __tmp129244))
              (if (or (eq? 'vector _%$e128038%_) (eq? 'box _%$e128038%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128017%_ _%body128035%_ _%vars128020%_))
                  _%vars128020%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128021128028%_))
                                        (let ((_%hd128025128050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128021128028%_)))
                                              (_%tl128026128052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128021128028%_))))
                                          (let* ((_%tag128055%_
                                                  _%hd128025128050%_)
                                                 (_%body128057%_
                                                  _%tl128026128052%_))
                                            (declare (not safe))
                                            (_%K128024128047%_
                                             _%body128057%_
                                             _%tag128055%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128023128032%_)))))))
                             (_%make-body128009%_
                              (lambda (_%vars128011%_)
                                (cons _%K128002%_
                                      (map (lambda (_%mvar128013%_)
                                             (let ((__tmp129247
                                                    (car _%mvar128013%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129247
                                                _%vars128011%_
                                                _%BUG128005%_)))
                                           _%mvars128001%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128006%_
                         _%hd128000%_
                         '()
                         _%target127999%_
                         _%E128003%_
                         _%make-body128009%_)))))
                 (_%parse-clause127820%_
                  (lambda (_%hd127892%_ _%ids127893%_)
                    (let _%recur127895%_ ((_%e127897%_ _%hd127892%_)
                                          (_%vars127898%_ '())
                                          (_%depth127899%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127897%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e127897%_))
                                (let () (values '(any) _%vars127898%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e127897%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx127811%_
                                       _%hd127892%_))
                                    (if (let ((__tmp129248
                                               (lambda (_%id127904%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e127897%_
                                                    _%id127904%_)))))
                                          (declare (not safe))
                                          (__find __tmp129248 _%ids127893%_))
                                        (let ()
                                          (values (cons 'id _%e127897%_)
                                                  _%vars127898%_))
                                        (if (let ((__tmp129249
                                                   (lambda (_%var127907%_)
                                                     (let ((__tmp129250
                                                            (car _%var127907%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e127897%_
                                                        __tmp129250)))))
                                              (declare (not safe))
                                              (__find __tmp129249
                                                      _%vars127898%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx127811%_
                                               _%e127897%_))
                                            (let ()
                                              (values (cons 'var _%e127897%_)
                                                      (cons (cons _%e127897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth127899%_)
                    _%vars127898%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127897%_))
                              (let ()
                                (let* ((_%e127911127918%_ _%e127897%_)
                                       (_%E127913127922%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e127911127918%_))))
                                       (_%E127912127983%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e127911127918%_))
                                              (let ((_%e127914127926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127911127918%_))))
                                                (let ((_%hd127915127929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e127914127926%_)))
                                                      (_%tl127916127931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e127914127926%_))))
                                                  (let* ((_%hd127934%_
                                                          _%hd127915127929%_)
                                                         (_%rest127936%_
                                                          _%tl127916127931%_))
                                                    (if '#t
                                                        (let* ((_%make-pair127951%_
                                                                (lambda (_%tag127938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd127939%_
                                 _%tl127940%_)
                          (let* ((_%hd-depth127942%_
                                  (if (eq? _%tag127938%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth127899%_ '1))
                                      _%depth127899%_))
                                 (_g129251_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur127895%_
                                     _%hd127939%_
                                     _%vars127898%_
                                     _%hd-depth127942%_))))
                            (begin
                              (let ((_g129252_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129251_)
                                           (##vector-length _g129251_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129252_ 2)))
                                    (error "Context expects 2 values"
                                           _g129252_)))
                              (let ((_%hd127944%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129251_ 0)))
                                    (_%vars127945%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129251_ 1))))
                                (let ((_g129253_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur127895%_
                                          _%tl127940%_
                                          _%vars127945%_
                                          _%depth127899%_))))
                                  (begin
                                    (let ((_g129254_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129253_)
                                                 (##vector-length _g129253_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129254_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129254_)))
                                    (let ((_%tl127947%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129253_ 0)))
                                          (_%vars127948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129253_ 1))))
                                      (let ()
                                        (values (let ((__tmp129255
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd127944%_
                                                               _%tl127947%_))))
                                                  (declare (not safe))
                                                  (cons _%tag127938%_
                                                        __tmp129255))
                                                _%vars127948%_))))))))))
                       (_%e127952127959%_ _%rest127936%_)
                       (_%E127954127963%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair127951%_
                             'cons
                             _%hd127934%_
                             _%rest127936%_))))
                       (_%E127953127979%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127952127959%_))
                              (let ((_%e127955127967%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e127952127959%_))))
                                (let ((_%hd127956127970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127955127967%_)))
                                      (_%tl127957127972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127955127967%_))))
                                  (let* ((_%rest-hd127975%_ _%hd127956127970%_)
                                         (_%rest-tl127977%_
                                          _%tl127957127972%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd127975%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127951%_
                                               'splice
                                               _%hd127934%_
                                               _%rest-tl127977%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127951%_
                                               'cons
                                               _%hd127934%_
                                               _%rest127936%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127954127963%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E127954127963%_))))))
                  (declare (not safe))
                  (_%E127953127979%_))
                (let () (declare (not safe)) (_%E127913127922%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E127913127922%_))))))
                                  (declare (not safe))
                                  (_%E127912127983%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127897%_))
                                  (let () (values '(null) _%vars127898%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127897%_))
                                      (let ((_g129256_
                                             (let ((__tmp129258
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127897%_)))))
                                               (declare (not safe))
                                               (_%recur127895%_
                                                __tmp129258
                                                _%vars127898%_
                                                _%depth127899%_))))
                                        (begin
                                          (let ((_g129257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129256_)
                                                       (##vector-length
                                                        _g129256_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129257_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129257_)))
                                          (let ((_%e127989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129256_ 0)))
                                                (_%vars127990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129256_
                                                    1))))
                                            (values (cons 'vector _%e127989%_)
                                                    _%vars127990%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127897%_))
                                          (let ((_g129259_
                                                 (let ((__tmp129261
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e127897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur127895%_
                                                    __tmp129261
                                                    _%vars127898%_
                                                    _%depth127899%_))))
                                            (begin
                                              (let ((_g129260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129259_)
                                                           (##vector-length
                                                            _g129259_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129260_)))
                                              (let ((_%e127993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129259_
                                                        0)))
                                                    (_%vars127994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129259_
                                                        1))))
                                                (values (cons 'box _%e127993%_)
                                                        _%vars127994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127897%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e127897%_)))
                _%vars127898%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx127811%_
                                                 _%e127897%_))))))))))))
          (let* ((_%e127821127834%_ _%stx127811%_)
                 (_%E127823127838%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127821127834%_))))
                 (_%E127822127888%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127821127834%_))
                        (let ((_%e127824127842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127821127834%_))))
                          (let ((_%hd127825127845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127824127842%_)))
                                (_%tl127826127847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127824127842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127826127847%_))
                                (let ((_%e127827127850%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127826127847%_))))
                                  (let ((_%hd127828127853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127827127850%_)))
                                        (_%tl127829127855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127827127850%_))))
                                    (let ((_%expr127858%_ _%hd127828127853%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127829127855%_))
                                          (let ((_%e127830127860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127829127855%_))))
                                            (let ((_%hd127831127863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127830127860%_)))
                                                  (_%tl127832127865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127830127860%_))))
                                              (let* ((_%ids127868%_
                                                      _%hd127831127863%_)
                                                     (_%clauses127870%_
                                                      _%tl127832127865%_))
                                                (if '#t
                                                    (if (let ((__tmp129262
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids127868%_))))
                  (declare (not safe))
                  (not __tmp129262))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx127811%_
                   _%ids127868%_))
                (if (let ((__tmp129263
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses127870%_))))
                      (declare (not safe))
                      (not __tmp129263))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx127811%_))
                    (let ()
                      (let* ((_%ids127875%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids127868%_)))
                             (_%clauses127877%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses127870%_)))
                             (_%clause-ids127879%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses127877%_)))
                             (_%E127881%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target127883%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first127885%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses127877%_))
                                  _%E127881%_
                                  (car _%clause-ids127879%_))))
                        (let ((__tmp129265
                               (let ((__tmp129266
                                      (let ((__tmp129268
                                             (let ((__tmp129272
                                                    (cons (cons (cons _%E127881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129274 (cons _%target127883%_ '()))
                                    (__tmp129273
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target127883%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129274
                                 __tmp129273))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129269
                                                    (let ((__tmp129271
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings127816%_
                                                              _%target127883%_
                                                              _%ids127875%_
                                                              _%clauses127877%_
                                                              _%clause-ids127879%_
                                                              _%E127881%_)))
                                                          (__tmp129270
                                                           (cons _%first127885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr127858%_ '()))))
              (declare (not safe))
              (_%generate-body127817%_ __tmp129271 __tmp129270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129272
                                                __tmp129269)))
                                            (__tmp129267
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx127811%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129268
                                         __tmp129267))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129266)))
                              (__tmp129264
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx127811%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129265 __tmp129264))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E127823127838%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E127823127838%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E127823127838%_)))))
                        (let () (declare (not safe)) (_%E127823127838%_))))))
            (declare (not safe))
            (_%E127822127888%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128536%_)
        (let* ((_%identifier=?128538%_ 'free-identifier=?)
               (_%unwrap-e128540%_ 'syntax-e)
               (_%wrap-e128542%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128536%_
           _%identifier=?128538%_
           _%unwrap-e128540%_
           _%wrap-e128542%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128544%_ _%identifier=?128545%_)
        (let* ((_%unwrap-e128547%_ 'syntax-e) (_%wrap-e128549%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128544%_
           _%identifier=?128545%_
           _%unwrap-e128547%_
           _%wrap-e128549%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128551%_ _%identifier=?128552%_ _%unwrap-e128553%_)
        (let ((_%wrap-e128555%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128551%_
           _%identifier=?128552%_
           _%unwrap-e128553%_
           _%wrap-e128555%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129276_
        (let ((_g129275_ (let () (declare (not safe)) (##length _g129276_))))
          (cond ((let () (declare (not safe)) (##fx= _g129275_ 1))
                 (apply (lambda (_%stx128536%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx128536%_)))
                        _g129276_))
                ((let () (declare (not safe)) (##fx= _g129275_ 2))
                 (apply (lambda (_%stx128544%_ _%identifier=?128545%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx128544%_
                             _%identifier=?128545%_)))
                        _g129276_))
                ((let () (declare (not safe)) (##fx= _g129275_ 3))
                 (apply (lambda (_%stx128551%_
                                 _%identifier=?128552%_
                                 _%unwrap-e128553%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx128551%_
                             _%identifier=?128552%_
                             _%unwrap-e128553%_)))
                        _g129276_))
                ((let () (declare (not safe)) (##fx= _g129275_ 4))
                 (apply (lambda (_%stx128557%_
                                 _%identifier=?128558%_
                                 _%unwrap-e128559%_
                                 _%wrap-e128560%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx128557%_
                             _%identifier=?128558%_
                             _%unwrap-e128559%_
                             _%wrap-e128560%_)))
                        _g129276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129276_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127808%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127808%_))
            (let ((__tmp129277
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127808%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129277 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127766%_ . _%rest127767%_)
        (let ((_%len127769%_ (length _%hd127766%_)))
          (let _%lp127771%_ ((_%rest127773%_ _%rest127767%_))
            (let* ((_%rest127774127782%_ _%rest127773%_)
                   (_%else127776127790%_ (lambda () '#!void))
                   (_%K127778127796%_
                    (lambda (_%rest127793%_ _%hd127794%_)
                      (if (let ((__tmp129278 (length _%hd127794%_)))
                            (declare (not safe))
                            (##fx= _%len127769%_ __tmp129278))
                          (let ()
                            (declare (not safe))
                            (_%lp127771%_ _%rest127793%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127794%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127774127782%_))
                  (let ((_%hd127779127799%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127774127782%_)))
                        (_%tl127780127801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127774127782%_))))
                    (let* ((_%hd127804%_ _%hd127779127799%_)
                           (_%rest127806%_ _%tl127780127801%_))
                      (declare (not safe))
                      (_%K127778127796%_ _%rest127806%_ _%hd127804%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127721%_ _%n127722%_)
        (let _%lp127724%_ ((_%rest127726%_ _%stx127721%_) (_%r127727%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127726%_))
              (let* ((_%g127728127735%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127726%_)))
                     (_%E127730127739%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127728127735%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127731127745%_
                      (lambda (_%rest127742%_ _%hd127743%_)
                        (let ((__tmp129279 (cons _%hd127743%_ _%r127727%_)))
                          (declare (not safe))
                          (_%lp127724%_ _%rest127742%_ __tmp129279)))))
                (if (let () (declare (not safe)) (##pair? _%g127728127735%_))
                    (let ((_%hd127732127748%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127728127735%_)))
                          (_%tl127733127750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127728127735%_))))
                      (let* ((_%hd127753%_ _%hd127732127748%_)
                             (_%rest127755%_ _%tl127733127750%_))
                        (declare (not safe))
                        (_%K127731127745%_ _%rest127755%_ _%hd127753%_)))
                    (let () (declare (not safe)) (_%E127730127739%_))))
              (let _%lp127757%_ ((_%n127759%_ _%n127722%_)
                                 (_%l127760%_ _%r127727%_)
                                 (_%r127761%_ _%rest127726%_))
                (if (let () (declare (not safe)) (null? _%l127760%_))
                    (let () (values _%l127760%_ _%r127761%_))
                    (if (fxpositive? _%n127759%_)
                        (let ((__tmp129282
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n127759%_ '1)))
                              (__tmp129281 (cdr _%l127760%_))
                              (__tmp129280
                               (cons (car _%l127760%_) _%r127761%_)))
                          (declare (not safe))
                          (_%lp127757%_ __tmp129282 __tmp129281 __tmp129280))
                        (let ()
                          (values (reverse _%l127760%_) _%r127761%_)))))))))))
