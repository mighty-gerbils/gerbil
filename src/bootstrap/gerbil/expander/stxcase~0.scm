(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712757955)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129412 (list gx#expander::t))
            (__tmp129411 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129412
         '(id depth)
         __tmp129411
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129408%_
        (apply make-instance gx#syntax-pattern::t _%$args129408%_)))
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
      (lambda (_%self129394%_ _%stx129395%_)
        (let ((_%self129398%_ _%self129394%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129395%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128860%_)
        (letrec ((_%generate128862%_
                  (lambda (_%e129102%_)
                    (letrec ((_%BUG129104%_
                              (lambda (_%q129269%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128860%_
                                         _%e129102%_
                                         _%q129269%_))))
                             (_%local-pattern-e129105%_
                              (lambda (_%pat129267%_)
                                (let ((__tmp129413
                                       (##structure-ref
                                        _%pat129267%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129413))))
                             (_%getvar129106%_
                              (lambda (_%q129264%_ _%vars129265%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129264%_
                                   _%vars129265%_
                                   _%BUG129104%_))))
                             (_%getarg129107%_
                              (lambda (_%arg129230%_ _%vars129231%_)
                                (let* ((_%arg129232129239%_ _%arg129230%_)
                                       (_%E129234129243%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129232129239%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129235129252%_
                                        (lambda (_%e129246%_ _%tag129247%_)
                                          (let ((_%$e129249%_ _%tag129247%_))
                                            (if (eq? 'ref _%$e129249%_)
                                                (_%getvar129106%_
                                                 _%e129246%_
                                                 _%vars129231%_)
                                                (if (eq? 'pattern _%$e129249%_)
                                                    (_%local-pattern-e129105%_
                                                     _%e129246%_)
                                                    (_%BUG129104%_
                                                     _%arg129230%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129232129239%_))
                                      (let ((_%hd129236129255%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129232129239%_)))
                                            (_%tl129237129257%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129232129239%_))))
                                        (let* ((_%tag129260%_
                                                _%hd129236129255%_)
                                               (_%e129262%_
                                                _%tl129237129257%_))
                                          (_%K129235129252%_
                                           _%e129262%_
                                           _%tag129260%_)))
                                      (_%E129234129243%_))))))
                      (let _%recur129109%_ ((_%e129111%_ _%e129102%_)
                                            (_%vars129112%_ '()))
                        (let* ((_%e129113129120%_ _%e129111%_)
                               (_%E129115129124%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129113129120%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129116129218%_
                                (lambda (_%body129127%_ _%tag129128%_)
                                  (let ((_%$e129130%_ _%tag129128%_))
                                    (if (eq? 'datum _%$e129130%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129127%_))
                                        (if (eq? 'term _%$e129130%_)
                                            (let ((_%id129133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129127%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129133%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129133%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks129136%_)
                                                        (let ((__tmp129414
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129127%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129414))
                (let ((__tmp129416
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129127%_)))
                      (__tmp129415
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129127%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129416
                   __tmp129415
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129133%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129127%_))
                                                      (_%BUG129104%_
                                                       _%e129111%_))))
                                            (if (eq? 'pattern _%$e129130%_)
                                                (_%local-pattern-e129105%_
                                                 _%body129127%_)
                                                (if (eq? 'ref _%$e129130%_)
                                                    (_%getvar129106%_
                                                     _%body129127%_
                                                     _%vars129112%_)
                                                    (if (eq? 'cons
                                                             _%$e129130%_)
                                                        (let ((__tmp129418
                                                               (_%recur129109%_
                                                                (car _%body129127%_)
                                                                _%vars129112%_))
                                                              (__tmp129417
                                                               (_%recur129109%_
                                                                (cdr _%body129127%_)
                                                                _%vars129112%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp129418
                                                           __tmp129417))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e129130%_)
                    (let ((__tmp129419
                           (_%recur129109%_ _%body129127%_ _%vars129112%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129419))
                    (if (eq? 'box _%$e129130%_)
                        (let ((__tmp129420
                               (_%recur129109%_
                                _%body129127%_
                                _%vars129112%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129420))
                        (if (eq? 'splice _%$e129130%_)
                            (let* ((_%body129139129150%_ _%body129127%_)
                                   (_%E129141129154%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129139129150%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129142129192%_
                                    (lambda (_%args129157%_
                                             _%iv129158%_
                                             _%hd129159%_
                                             _%depth129160%_)
                                      (let* ((_%targets129166%_
                                              (map (lambda (_%g129161129163%_)
                                                     (_%getarg129107%_
                                                      _%g129161129163%_
                                                      _%vars129112%_))
                                                   _%args129157%_))
                                             (_%fold-in129168%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129157%_)))
                                             (_%fold-out129170%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129172%_
                                              (let ((__tmp129421
                                                     (cons _%fold-out129170%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129421
                                                 _%fold-in129168%_)))
                                             (_%lambda-body129189%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129160%_ '1))
                                                  (let ((_%r-args129180%_
                                                         (map (lambda (_%arg129174%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129174%_)))
                      _%args129157%_))
                (_%r-vars129181%_
                 (let ((__tmp129422
                        (lambda (_%arg129176%_ _%var129177%_ _%r129178%_)
                          (cons (cons (cdr _%arg129176%_) _%var129177%_)
                                _%r129178%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129422
                    _%vars129112%_
                    _%args129157%_
                    _%fold-in129168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur129109%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth129160%_ '1))
                         (cons _%hd129159%_
                               (cons (cons 'var _%fold-out129170%_)
                                     _%r-args129180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars129181%_))
                                                  (let* ((_%hd-vars129187%_
                                                          (let ((__tmp129423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129183%_ _%var129184%_ _%r129185%_)
                           (cons (cons (cdr _%arg129183%_) _%var129184%_)
                                 _%r129185%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129423
                     _%vars129112%_
                     _%args129157%_
                     _%fold-in129168%_)))
                 (__tmp129424
                  (_%recur129109%_ _%hd129159%_ _%hd-vars129187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129424
                                                     _%fold-out129170%_)))))
                                        (let ((__tmp129428
                                               (if (let ((__tmp129429
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129166%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129429 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129166%_))
                                                   '#!void))
                                              (__tmp129425
                                               (let ((__tmp129427
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129172%_
                                                         _%lambda-body129189%_)))
                                                     (__tmp129426
                                                      (_%recur129109%_
                                                       _%iv129158%_
                                                       _%vars129112%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129427
                                                  __tmp129426
                                                  _%targets129166%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129428
                                           __tmp129425))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129139129150%_))
                                  (let ((_%hd129143129195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129139129150%_)))
                                        (_%tl129144129197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129139129150%_))))
                                    (let ((_%depth129200%_ _%hd129143129195%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129144129197%_))
                                          (let ((_%hd129145129202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129144129197%_)))
                                                (_%tl129146129204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129144129197%_))))
                                            (let ((_%hd129207%_
                                                   _%hd129145129202%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129146129204%_))
                                                  (let ((_%hd129147129209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129146129204%_)))
                                                        (_%tl129148129211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129146129204%_))))
                                                    (let* ((_%iv129214%_
                                                            _%hd129147129209%_)
                                                           (_%args129216%_
                                                            _%tl129148129211%_))
                                                      (_%K129142129192%_
                                                       _%args129216%_
                                                       _%iv129214%_
                                                       _%hd129207%_
                                                       _%depth129200%_)))
                                                  (_%E129141129154%_))))
                                          (_%E129141129154%_))))
                                  (_%E129141129154%_)))
                            (if (eq? 'var _%$e129130%_)
                                _%body129127%_
                                (_%BUG129104%_ _%e129111%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129113129120%_))
                              (let ((_%hd129117129221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129113129120%_)))
                                    (_%tl129118129223%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129113129120%_))))
                                (let* ((_%tag129226%_ _%hd129117129221%_)
                                       (_%body129228%_ _%tl129118129223%_))
                                  (_%K129116129218%_
                                   _%body129228%_
                                   _%tag129226%_)))
                              (_%E129115129124%_)))))))
                 (_%parse128863%_
                  (lambda (_%e128904%_)
                    (letrec ((_%make-cons128906%_
                              (lambda (_%hd129094%_ _%tl129095%_)
                                (let ((_g129430_ _%hd129094%_)
                                      (_g129432_ _%tl129095%_))
                                  (begin
                                    (let ((_g129431_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129430_)
                                                 (##vector-length _g129430_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129431_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129431_)))
                                    (let ((_g129433_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129432_)
                                                 (##vector-length _g129432_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129433_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129433_)))
                                    (let ((_%hd-e129097%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129430_ 0)))
                                          (_%hd-vars129098%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129430_ 1))))
                                      (let ((_%tl-e129099%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129432_ 0)))
                                            (_%tl-vars129100%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129432_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e129097%_
                                                            _%tl-e129099%_))
                                                (append _%hd-vars129098%_
                                                        _%tl-vars129100%_))))))))
                             (_%make-splice128907%_
                              (lambda (_%where129030%_
                                       _%depth129031%_
                                       _%hd129032%_
                                       _%tl129033%_)
                                (let ((_g129434_ _%hd129032%_)
                                      (_g129436_ _%tl129033%_))
                                  (begin
                                    (let ((_g129435_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129434_)
                                                 (##vector-length _g129434_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129435_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129435_)))
                                    (let ((_g129437_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129436_)
                                                 (##vector-length _g129436_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129437_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129437_)))
                                    (let ((_%hd-e129035%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129434_ 0)))
                                          (_%hd-vars129036%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129434_ 1))))
                                      (let ((_%tl-e129037%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129436_ 0)))
                                            (_%tl-vars129038%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129436_ 1))))
                                        (let _%lp129040%_ ((_%rest129042%_
                                                            _%hd-vars129036%_)
                                                           (_%targets129043%_
                                                            '())
                                                           (_%vars129044%_
                                                            _%tl-vars129038%_))
                                          (let* ((_%rest129045129055%_
                                                  _%rest129042%_)
                                                 (_%else129047129063%_
                                                  (lambda ()
                                                    (if (null? _%targets129043%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128860%_
                                                           _%where129030%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth129031%_
                                    (cons _%hd-e129035%_
                                          (cons _%tl-e129037%_
                                                _%targets129043%_))))
                        _%vars129044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129049129075%_
                                                  (lambda (_%rest129066%_
                                                           _%hd-pat129067%_
                                                           _%hd-depth*129068%_)
                                                    (let ((_%hd-depth129070%_
                                                           (fx- _%hd-depth*129068%_
                                                                _%depth129031%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129070%_))
                                                          (_%lp129040%_
                                                           _%rest129066%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat129067%_)
                         _%targets129043%_)
                   (cons (cons _%hd-depth129070%_ _%hd-pat129067%_)
                         _%vars129044%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129070%_))
                      (_%lp129040%_
                       _%rest129066%_
                       (cons (cons 'pattern _%hd-pat129067%_)
                             _%targets129043%_)
                       _%vars129044%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx128860%_
                         _%where129030%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129045129055%_))
                                                (let ((_%hd129050129078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129045129055%_)))
                                                      (_%tl129051129080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129045129055%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129050129078%_))
                                                      (let ((_%hd129052129083%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129050129078%_)))
                    (_%tl129053129085%_
                     (let () (declare (not safe)) (##cdr _%hd129050129078%_))))
                (let* ((_%hd-depth*129088%_ _%hd129052129083%_)
                       (_%hd-pat129090%_ _%tl129053129085%_)
                       (_%rest129092%_ _%tl129051129080%_))
                  (_%K129049129075%_
                   _%rest129092%_
                   _%hd-pat129090%_
                   _%hd-depth*129088%_)))
              (_%else129047129063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else129047129063%_))))))))))
                             (_%recur128908%_
                              (lambda (_%e128913%_ _%is-e?128914%_)
                                (if (_%is-e?128914%_ _%e128913%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx128860%_))
                                    (if (gx#syntax-local-pattern? _%e128913%_)
                                        (let* ((_%pat128918%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e128913%_)))
                                               (_%depth128920%_
                                                (##structure-ref
                                                 _%pat128918%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth128920%_)
                                              (values (cons 'ref _%pat128918%_)
                                                      (cons (cons _%depth128920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat128918%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat128918%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128913%_))
                                            (values (cons 'term _%e128913%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128913%_))
                                                (let* ((_%e128924128931%_
                                                        _%e128913%_)
                                                       (_%E128926128935%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e128924128931%_))))
                                                       (_%E128925129017%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e128924128931%_))
                      (let ((_%e128927128939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e128924128931%_))))
                        (let ((_%hd128928128942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128927128939%_)))
                              (_%tl128929128944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128927128939%_))))
                          (let* ((_%hd128947%_ _%hd128928128942%_)
                                 (_%rest128949%_ _%tl128929128944%_))
                            (if '#t
                                (if (_%is-e?128914%_ _%hd128947%_)
                                    (let* ((_%e128950128957%_ _%rest128949%_)
                                           (_%E128952128961%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx128860%_
                                                 _%e128913%_))))
                                           (_%E128951128975%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e128950128957%_))
                                                  (let ((_%e128953128965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128950128957%_))))
                                                    (let ((_%hd128954128968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e128953128965%_)))
                                                          (_%tl128955128970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e128953128965%_))))
                                                      (let ((_%rest128973%_
                                                             _%hd128954128968%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl128955128970%_))
                                                            (if '#t
                                                                (_%recur128908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest128973%_
                         false)
                        (_%E128952128961%_))
                    (_%E128952128961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128952128961%_)))))
                                      (_%E128951128975%_))
                                    (let _%lp128979%_ ((_%rest128981%_
                                                        _%rest128949%_)
                                                       (_%depth128982%_ '0))
                                      (let* ((_%e128983128990%_ _%rest128981%_)
                                             (_%E128985128994%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth128982%_)
                                                    (_%make-splice128907%_
                                                     _%e128913%_
                                                     _%depth128982%_
                                                     (_%recur128908%_
                                                      _%hd128947%_
                                                      _%is-e?128914%_)
                                                     (_%recur128908%_
                                                      _%rest128981%_
                                                      _%is-e?128914%_))
                                                    (_%make-cons128906%_
                                                     (_%recur128908%_
                                                      _%hd128947%_
                                                      _%is-e?128914%_)
                                                     (_%recur128908%_
                                                      _%rest128981%_
                                                      _%is-e?128914%_)))))
                                             (_%E128984129013%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128983128990%_))
                                                    (let ((_%e128986128998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128983128990%_))))
                                                      (let ((_%hd128987129001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128986128998%_)))
                    (_%tl128988129003%_
                     (let () (declare (not safe)) (##cdr _%e128986128998%_))))
                (let* ((_%rest-hd129006%_ _%hd128987129001%_)
                       (_%rest-tl129008%_ _%tl128988129003%_))
                  (if '#t
                      (if (_%is-e?128914%_ _%rest-hd129006%_)
                          (_%lp128979%_
                           _%rest-tl129008%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth128982%_ '1)))
                          (if (fxpositive? _%depth128982%_)
                              (_%make-splice128907%_
                               _%e128913%_
                               _%depth128982%_
                               (_%recur128908%_ _%hd128947%_ _%is-e?128914%_)
                               (_%recur128908%_
                                _%rest128981%_
                                _%is-e?128914%_))
                              (_%make-cons128906%_
                               (_%recur128908%_ _%hd128947%_ _%is-e?128914%_)
                               (_%recur128908%_
                                _%rest128981%_
                                _%is-e?128914%_))))
                      (_%E128985128994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128985128994%_)))))
                                        (_%E128984129013%_))))
                                (_%E128926128935%_)))))
                      (_%E128926128935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128925129017%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128913%_))
                                                    (let ((_g129438_
                                                           (_%recur128908%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e128913%_)))
                    _%is-e?128914%_)))
              (begin
                (let ((_g129439_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129438_)
                             (##vector-length _g129438_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129439_ 2)))
                      (error "Context expects 2 values" _g129439_)))
                (let ((_%e129022%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129438_ 0)))
                      (_%vars129023%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129438_ 1))))
                  (values (cons 'vector _%e129022%_) _%vars129023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128913%_))
                                                        (let ((_g129440_
                                                               (_%recur128908%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e128913%_)))
                        _%is-e?128914%_)))
                  (begin
                    (let ((_g129441_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129440_)
                                 (##vector-length _g129440_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129441_ 2)))
                          (error "Context expects 2 values" _g129441_)))
                    (let ((_%e129026%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129440_ 0)))
                          (_%vars129027%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129440_ 1))))
                      (values (cons 'box _%e129026%_) _%vars129027%_))))
                (values (cons 'datum _%e128913%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129442_
                             (_%recur128908%_ _%e128904%_ gx#ellipsis?)))
                        (begin
                          (let ((_g129443_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129442_)
                                       (##vector-length _g129442_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129443_ 2)))
                                (error "Context expects 2 values" _g129443_)))
                          (let ((_%tree128910%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129442_ 0)))
                                (_%vars128911%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129442_ 1))))
                            (if (null? _%vars128911%_)
                                _%tree128910%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128860%_
                                   _%vars128911%_))))))))))
          (let* ((_%e128864128874%_ _%stx128860%_)
                 (_%E128866128878%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128860%_))))
                 (_%E128865128900%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128864128874%_))
                        (let ((_%e128867128882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128864128874%_))))
                          (let ((_%hd128868128885%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128867128882%_)))
                                (_%tl128869128887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128867128882%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128869128887%_))
                                (let ((_%e128870128890%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128869128887%_))))
                                  (let ((_%hd128871128893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128870128890%_)))
                                        (_%tl128872128895%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128870128890%_))))
                                    (let ((_%form128898%_ _%hd128871128893%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128872128895%_))
                                          (if '#t
                                              (let ((__tmp129445
                                                     (_%generate128862%_
                                                      (_%parse128863%_
                                                       _%form128898%_)))
                                                    (__tmp129444
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128860%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129445
                                                 __tmp129444))
                                              (_%E128866128878%_))
                                          (_%E128866128878%_)))))
                                (_%E128866128878%_))))
                        (_%E128866128878%_)))))
            (_%E128865128900%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128109%_
               _%identifier=?128110%_
               _%unwrap-e128111%_
               _%wrap-e128112%_)
        (letrec ((_%generate-bindings128114%_
                  (lambda (_%target128724%_
                           _%ids128725%_
                           _%clauses128726%_
                           _%clause-ids128727%_
                           _%E128728%_)
                    (letrec ((_%generate1128730%_
                              (lambda (_%clause128827%_
                                       _%clause-id128828%_
                                       _%E128829%_)
                                (cons (cons _%clause-id128828%_ '())
                                      (cons (let ((__tmp129447
                                                   (cons _%target128724%_ '()))
                                                  (__tmp129446
                                                   (_%generate-clause128116%_
                                                    _%target128724%_
                                                    _%ids128725%_
                                                    _%clause128827%_
                                                    _%E128829%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129447
                                               __tmp129446))
                                            '())))))
                      (let _%lp128732%_ ((_%rest128734%_ _%clauses128726%_)
                                         (_%rest-ids128735%_
                                          _%clause-ids128727%_)
                                         (_%bindings128736%_ '()))
                        (let* ((_%rest128737128745%_ _%rest128734%_)
                               (_%else128739128753%_
                                (lambda () _%bindings128736%_))
                               (_%K128741128815%_
                                (lambda (_%rest128756%_ _%clause128757%_)
                                  (let* ((_%rest-ids128758128765%_
                                          _%rest-ids128735%_)
                                         (_%E128760128769%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128758128765%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128761128803%_
                                          (lambda (_%rest-ids128772%_
                                                   _%clause-id128773%_)
                                            (let* ((_%rest-ids128774128782%_
                                                    _%rest-ids128772%_)
                                                   (_%else128776128790%_
                                                    (lambda ()
                                                      (cons (_%generate1128730%_
                                                             _%clause128757%_
                                                             _%clause-id128773%_
                                                             _%E128728%_)
                                                            _%bindings128736%_)))
                                                   (_%K128778128795%_
                                                    (lambda (_%next-clause-id128793%_)
                                                      (_%lp128732%_
                                                       _%rest128756%_
                                                       _%rest-ids128772%_
                                                       (cons (_%generate1128730%_
                                                              _%clause128757%_
                                                              _%clause-id128773%_
                                                              _%next-clause-id128793%_)
                                                             _%bindings128736%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128774128782%_))
                                                  (let* ((_%hd128779128798%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128774128782%_)))
                                                         (_%next-clause-id128801%_
                                                          _%hd128779128798%_))
                                                    (_%K128778128795%_
                                                     _%next-clause-id128801%_))
                                                  (_%else128776128790%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128758128765%_))
                                        (let ((_%hd128762128806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128758128765%_)))
                                              (_%tl128763128808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128758128765%_))))
                                          (let* ((_%clause-id128811%_
                                                  _%hd128762128806%_)
                                                 (_%rest-ids128813%_
                                                  _%tl128763128808%_))
                                            (_%K128761128803%_
                                             _%rest-ids128813%_
                                             _%clause-id128811%_)))
                                        (_%E128760128769%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128737128745%_))
                              (let ((_%hd128742128818%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128737128745%_)))
                                    (_%tl128743128820%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128737128745%_))))
                                (let* ((_%clause128823%_ _%hd128742128818%_)
                                       (_%rest128825%_ _%tl128743128820%_))
                                  (_%K128741128815%_
                                   _%rest128825%_
                                   _%clause128823%_)))
                              (_%else128739128753%_)))))))
                 (_%generate-body128115%_
                  (lambda (_%bindings128684%_ _%body128685%_)
                    (let _%recur128687%_ ((_%rest128689%_ _%bindings128684%_))
                      (let* ((_%rest128690128698%_ _%rest128689%_)
                             (_%else128692128706%_ (lambda () _%body128685%_))
                             (_%K128694128712%_
                              (lambda (_%rest128709%_ _%hd128710%_)
                                (let ((__tmp129449 (cons _%hd128710%_ '()))
                                      (__tmp129448
                                       (_%recur128687%_ _%rest128709%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129449
                                   __tmp129448)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128690128698%_))
                            (let ((_%hd128695128715%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128690128698%_)))
                                  (_%tl128696128717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128690128698%_))))
                              (let* ((_%hd128720%_ _%hd128695128715%_)
                                     (_%rest128722%_ _%tl128696128717%_))
                                (_%K128694128712%_
                                 _%rest128722%_
                                 _%hd128720%_)))
                            (_%else128692128706%_))))))
                 (_%generate-clause128116%_
                  (lambda (_%target128547%_
                           _%ids128548%_
                           _%clause128549%_
                           _%E128550%_)
                    (letrec ((_%generate1128552%_
                              (lambda (_%hd128639%_
                                       _%fender128640%_
                                       _%body128641%_)
                                (let ((_g129450_
                                       (_%parse-clause128118%_
                                        _%hd128639%_
                                        _%ids128548%_)))
                                  (begin
                                    (let ((_g129451_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129450_)
                                                 (##vector-length _g129450_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129451_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129451_)))
                                    (let ((_%e128643%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129450_ 0)))
                                          (_%mvars128644%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129450_ 1))))
                                      (let* ((_%pvars128646%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128644%_))))
                                             (_%E128648%_
                                              (cons _%E128550%_
                                                    (cons _%target128547%_
                                                          '())))
                                             (_%K128681%_
                                              (let ((__tmp129452
                                                     (let ((__tmp129454
                                                            (map (lambda (_%mvar128650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128651%_)
                           (let* ((_%mvar128652128659%_ _%mvar128650%_)
                                  (_%E128654128663%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128652128659%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128655128669%_
                                   (lambda (_%depth128666%_ _%id128667%_)
                                     (cons _%id128667%_
                                           (cons (let ((__tmp129456
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128667%_)))
                                                       (__tmp129455
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128651%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129456
                                                    __tmp129455
                                                    _%depth128666%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128652128659%_))
                                 (let ((_%hd128656128672%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128652128659%_)))
                                       (_%tl128657128674%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128652128659%_))))
                                   (let* ((_%id128677%_ _%hd128656128672%_)
                                          (_%depth128679%_ _%tl128657128674%_))
                                     (_%K128655128669%_
                                      _%depth128679%_
                                      _%id128677%_)))
                                 (_%E128654128663%_))))
                         _%mvars128644%_
                         _%pvars128646%_))
                   (__tmp129453
                    (if (eq? _%fender128640%_ '#t)
                        _%body128641%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128640%_
                           _%body128641%_
                           _%E128648%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129454 __tmp129453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128646%_
                                                 __tmp129452))))
                                        (_%generate-match128117%_
                                         _%hd128639%_
                                         _%target128547%_
                                         _%e128643%_
                                         _%mvars128644%_
                                         _%K128681%_
                                         _%E128648%_))))))))
                      (let* ((_%e128553128573%_ _%clause128549%_)
                             (_%E128562128577%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128553128573%_))))
                             (_%E128555128611%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128553128573%_))
                                    (let ((_%e128563128581%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128553128573%_))))
                                      (let ((_%hd128564128584%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128563128581%_)))
                                            (_%tl128565128586%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128563128581%_))))
                                        (let ((_%hd128589%_
                                               _%hd128564128584%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128565128586%_))
                                              (let ((_%e128566128591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128565128586%_))))
                                                (let ((_%hd128567128594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128566128591%_)))
                                                      (_%tl128568128596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128566128591%_))))
                                                  (let ((_%fender128599%_
                                                         _%hd128567128594%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128568128596%_))
                                                        (let ((_%e128569128601%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128568128596%_))))
                  (let ((_%hd128570128604%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128569128601%_)))
                        (_%tl128571128606%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128569128601%_))))
                    (let ((_%body128609%_ _%hd128570128604%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128571128606%_))
                          (if '#t
                              (_%generate1128552%_
                               _%hd128589%_
                               _%fender128599%_
                               _%body128609%_)
                              (_%E128562128577%_))
                          (_%E128562128577%_)))))
                (_%E128562128577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E128562128577%_)))))
                                    (_%E128562128577%_))))
                             (_%E128554128635%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128553128573%_))
                                    (let ((_%e128556128615%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128553128573%_))))
                                      (let ((_%hd128557128618%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128556128615%_)))
                                            (_%tl128558128620%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128556128615%_))))
                                        (let ((_%hd128623%_
                                               _%hd128557128618%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128558128620%_))
                                              (let ((_%e128559128625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128558128620%_))))
                                                (let ((_%hd128560128628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128559128625%_)))
                                                      (_%tl128561128630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128559128625%_))))
                                                  (let ((_%body128633%_
                                                         _%hd128560128628%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128561128630%_))
                                                        (if '#t
                                                            (_%generate1128552%_
                                                             _%hd128623%_
                                                             '#t
                                                             _%body128633%_)
                                                            (_%E128555128611%_))
                                                        (_%E128555128611%_)))))
                                              (_%E128555128611%_)))))
                                    (_%E128555128611%_)))))
                        (_%E128554128635%_)))))
                 (_%generate-match128117%_
                  (lambda (_%where128296%_
                           _%target128297%_
                           _%hd128298%_
                           _%mvars128299%_
                           _%K128300%_
                           _%E128301%_)
                    (letrec ((_%BUG128303%_
                              (lambda (_%q128545%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128109%_
                                         _%hd128298%_
                                         _%q128545%_))))
                             (_%recur128304%_
                              (lambda (_%e128395%_
                                       _%vars128396%_
                                       _%target128397%_
                                       _%E128398%_
                                       _%k128399%_)
                                (let* ((_%e128400128407%_ _%e128395%_)
                                       (_%E128402128411%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128400128407%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128403128533%_
                                        (lambda (_%body128414%_ _%tag128415%_)
                                          (let ((_%$e128417%_ _%tag128415%_))
                                            (if (eq? 'any _%$e128417%_)
                                                (_%k128399%_ _%vars128396%_)
                                                (if (eq? 'id _%$e128417%_)
                                                    (let ((__tmp129461
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128397%_)))
                                                          (__tmp129457
                                                           (let ((__tmp129459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129460
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128112%_
                                    _%body128414%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128110%_
                             __tmp129460
                             _%target128397%_)))
                         (__tmp129458 (_%k128399%_ _%vars128396%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129459 __tmp129458 _%E128398%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129461 __tmp129457 _%E128398%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128417%_)
                                                        (_%k128399%_
                                                         (cons (cons _%body128414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128397%_)
                       _%vars128396%_))
                (if (eq? 'cons _%$e128417%_)
                    (let ((_%$e128420%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128421%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128422%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129467
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128397%_)))
                            (__tmp129462
                             (let ((__tmp129466
                                    (cons (cons (cons _%$e128420%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128111%_
                                                         _%target128397%_))
                                                      '()))
                                          '()))
                                   (__tmp129463
                                    (let ((__tmp129465
                                           (cons (cons (cons _%$hd128421%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128420%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128420%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129464
                                           (let* ((_%body128423128430%_
                                                   _%body128414%_)
                                                  (_%E128425128434%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128423128430%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128426128442%_
                                                   (lambda (_%tl128437%_
                                                            _%hd128438%_)
                                                     (_%recur128304%_
                                                      _%hd128438%_
                                                      _%vars128396%_
                                                      _%$hd128421%_
                                                      _%E128398%_
                                                      (lambda (_%vars128440%_)
                                                        (_%recur128304%_
                                                         _%tl128437%_
                                                         _%vars128440%_
                                                         _%$tl128422%_
                                                         _%E128398%_
                                                         _%k128399%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128423128430%_))
                                                 (let ((_%hd128427128445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128423128430%_)))
                                                       (_%tl128428128447%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128423128430%_))))
                                                   (let* ((_%hd128450%_
                                                           _%hd128427128445%_)
                                                          (_%tl128452%_
                                                           _%tl128428128447%_))
                                                     (_%K128426128442%_
                                                      _%tl128452%_
                                                      _%hd128450%_)))
                                                 (_%E128425128434%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129465
                                       __tmp129464))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129466
                                __tmp129463))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129467
                         __tmp129462
                         _%E128398%_)))
                    (if (eq? 'splice _%$e128417%_)
                        (let* ((_%body128453128460%_ _%body128414%_)
                               (_%E128455128464%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128453128460%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128456128515%_
                                (lambda (_%tl128467%_ _%hd128468%_)
                                  (let* ((_%rlen128470%_
                                          (_%splice-rlen128305%_ _%tl128467%_))
                                         (_%$target128472%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128474%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128476%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128478%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128480%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128482%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128484%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128486%_
                                          (_%splice-vars128306%_ _%hd128468%_))
                                         (_%lvars128488%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128486%_)))
                                         (_%tlvars128490%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128486%_)))
                                         (_%linit128494%_
                                          (map (lambda (_%var128492%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128488%_)))
                                    (letrec ((_%make-loop128497%_
                                              (lambda (_%vars128501%_)
                                                (let ((__tmp129469
                                                       (cons (cons (cons _%$lp128478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129482
                                        (cons _%$hd128474%_ _%lvars128488%_))
                                       (__tmp129470
                                        (let ((__tmp129481
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128474%_)))
                                              (__tmp129475
                                               (let ((__tmp129480
                                                      (cons (cons (cons _%$lp-e128480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128111%_
                                   _%$hd128474%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129476
                                                      (let ((__tmp129479
                                                             (cons (cons (cons _%$lp-hd128482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128480%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128484%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128480%_))
                                             '()))
                                 '())))
                    (__tmp129477
                     (_%recur128304%_
                      _%hd128468%_
                      '()
                      _%$lp-hd128482%_
                      _%E128398%_
                      (lambda (_%hdvars128503%_)
                        (cons _%$lp128478%_
                              (cons _%$lp-tl128484%_
                                    (map (lambda (_%svar128505%_
                                                  _%lvar128506%_)
                                           (let ((__tmp129478
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar128505%_
                                                     _%hdvars128503%_
                                                     _%BUG128303%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp129478
                                              _%lvar128506%_)))
                                         _%svars128486%_
                                         _%lvars128488%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129479 __tmp129477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129480
                                                  __tmp129476)))
                                              (__tmp129471
                                               (let ((__tmp129474
                                                      (map (lambda (_%lvar128508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128509%_)
                     (cons (cons _%tlvar128509%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128508%_))
                                 '())))
                   _%lvars128488%_
                   _%tlvars128490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129472
                                                      (_%k128399%_
                                                       (let ((__tmp129473
                                                              (lambda (_%svar128511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128512%_
                               _%r128513%_)
                        (cons (cons _%svar128511%_ _%tlvar128512%_)
                              _%r128513%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129473
                  _%vars128501%_
                  _%svars128486%_
                  _%tlvars128490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129474
                                                  __tmp129472))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129481
                                           __tmp129475
                                           __tmp129471))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129482
                                    __tmp129470))
                                 '()))
                     '()))
              (__tmp129468
               (cons _%$lp128478%_ (cons _%$target128472%_ _%linit128494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129469
                                                   __tmp129468)))))
                                      (let ((_%body128499%_
                                             (let ((__tmp129484
                                                    (cons (cons (cons _%$target128472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128476%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128397%_
                                 _%rlen128470%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129483
                                                    (_%recur128304%_
                                                     _%tl128467%_
                                                     _%vars128396%_
                                                     _%$tl128476%_
                                                     _%E128398%_
                                                     _%make-loop128497%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129484
                                                __tmp129483))))
                                        (let ((__tmp129488
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128397%_)))
                                              (__tmp129485
                                               (if (zero? _%rlen128470%_)
                                                   _%body128499%_
                                                   (let ((__tmp129486
                                                          (let ((__tmp129487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128397%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129487 _%rlen128470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129486
                                                      _%body128499%_
                                                      _%E128398%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129488
                                           __tmp129485
                                           _%E128398%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128453128460%_))
                              (let ((_%hd128457128518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128453128460%_)))
                                    (_%tl128458128520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128453128460%_))))
                                (let* ((_%hd128523%_ _%hd128457128518%_)
                                       (_%tl128525%_ _%tl128458128520%_))
                                  (_%K128456128515%_
                                   _%tl128525%_
                                   _%hd128523%_)))
                              (_%E128455128464%_)))
                        (if (eq? 'null _%$e128417%_)
                            (let ((__tmp129490
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128397%_)))
                                  (__tmp129489 (_%k128399%_ _%vars128396%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129490
                               __tmp129489
                               _%E128398%_))
                            (if (eq? 'vector _%$e128417%_)
                                (let ((_%$e128527%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129495
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128397%_)))
                                        (__tmp129491
                                         (let ((__tmp129493
                                                (cons (cons (cons _%$e128527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129494
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128111%_
                                    _%target128397%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129494))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129492
                                                (_%recur128304%_
                                                 _%body128414%_
                                                 _%vars128396%_
                                                 _%$e128527%_
                                                 _%E128398%_
                                                 _%k128399%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129493
                                            __tmp129492))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129495
                                     __tmp129491
                                     _%E128398%_)))
                                (if (eq? 'box _%$e128417%_)
                                    (let ((_%$e128529%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129500
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128397%_)))
                                            (__tmp129496
                                             (let ((__tmp129498
                                                    (cons (cons (cons _%$e128529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129499
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128111%_
                                        _%target128397%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129499))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129497
                                                    (_%recur128304%_
                                                     _%body128414%_
                                                     _%vars128396%_
                                                     _%$e128529%_
                                                     _%E128398%_
                                                     _%k128399%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129498
                                                __tmp129497))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129500
                                         __tmp129496
                                         _%E128398%_)))
                                    (if (eq? 'datum _%$e128417%_)
                                        (let ((_%$e128531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129506
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128397%_)))
                                                (__tmp129501
                                                 (let ((__tmp129505
                                                        (cons (cons (cons _%$e128531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128397%_))
                                  '()))
                      '()))
               (__tmp129502
                (let ((__tmp129504
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128531%_ _%body128414%_)))
                      (__tmp129503 (_%k128399%_ _%vars128396%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129504 __tmp129503 _%E128398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129505
                                                    __tmp129502))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129506
                                             __tmp129501
                                             _%E128398%_)))
                                        (_%BUG128303%_
                                         _%e128395%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128400128407%_))
                                      (let ((_%hd128404128536%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128400128407%_)))
                                            (_%tl128405128538%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128400128407%_))))
                                        (let* ((_%tag128541%_
                                                _%hd128404128536%_)
                                               (_%body128543%_
                                                _%tl128405128538%_))
                                          (_%K128403128533%_
                                           _%body128543%_
                                           _%tag128541%_)))
                                      (_%E128402128411%_)))))
                             (_%splice-rlen128305%_
                              (lambda (_%e128357%_)
                                (let _%lp128359%_ ((_%e128361%_ _%e128357%_)
                                                   (_%n128362%_ '0))
                                  (let* ((_%e128363128370%_ _%e128361%_)
                                         (_%E128365128374%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128363128370%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128366128383%_
                                          (lambda (_%body128377%_
                                                   _%tag128378%_)
                                            (let ((_%$e128380%_ _%tag128378%_))
                                              (if (eq? 'splice _%$e128380%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128109%_
                                                     _%where128296%_))
                                                  (if (eq? 'cons _%$e128380%_)
                                                      (_%lp128359%_
                                                       (cdr _%body128377%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n128362%_
                                                                '1)))
                                                      _%n128362%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128363128370%_))
                                        (let ((_%hd128367128386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128363128370%_)))
                                              (_%tl128368128388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128363128370%_))))
                                          (let* ((_%tag128391%_
                                                  _%hd128367128386%_)
                                                 (_%body128393%_
                                                  _%tl128368128388%_))
                                            (_%K128366128383%_
                                             _%body128393%_
                                             _%tag128391%_)))
                                        (_%E128365128374%_))))))
                             (_%splice-vars128306%_
                              (lambda (_%e128313%_)
                                (let _%recur128315%_ ((_%e128317%_ _%e128313%_)
                                                      (_%vars128318%_ '()))
                                  (let* ((_%e128319128326%_ _%e128317%_)
                                         (_%E128321128330%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128319128326%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128322128345%_
                                          (lambda (_%body128333%_
                                                   _%tag128334%_)
                                            (let ((_%$e128336%_ _%tag128334%_))
                                              (if (eq? 'var _%$e128336%_)
                                                  (cons _%body128333%_
                                                        _%vars128318%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128336%_)
                                                          (eq? 'splice
                                                               _%$e128336%_))
                                                      (_%recur128315%_
                                                       (cdr _%body128333%_)
                                                       (_%recur128315%_
                                                        (car _%body128333%_)
                                                        _%vars128318%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e128336%_)
                      (eq? 'box _%$e128336%_))
                  (_%recur128315%_ _%body128333%_ _%vars128318%_)
                  _%vars128318%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128319128326%_))
                                        (let ((_%hd128323128348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128319128326%_)))
                                              (_%tl128324128350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128319128326%_))))
                                          (let* ((_%tag128353%_
                                                  _%hd128323128348%_)
                                                 (_%body128355%_
                                                  _%tl128324128350%_))
                                            (_%K128322128345%_
                                             _%body128355%_
                                             _%tag128353%_)))
                                        (_%E128321128330%_))))))
                             (_%make-body128307%_
                              (lambda (_%vars128309%_)
                                (cons _%K128300%_
                                      (map (lambda (_%mvar128311%_)
                                             (let ((__tmp129507
                                                    (car _%mvar128311%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129507
                                                _%vars128309%_
                                                _%BUG128303%_)))
                                           _%mvars128299%_)))))
                      (_%recur128304%_
                       _%hd128298%_
                       '()
                       _%target128297%_
                       _%E128301%_
                       _%make-body128307%_))))
                 (_%parse-clause128118%_
                  (lambda (_%hd128190%_ _%ids128191%_)
                    (let _%recur128193%_ ((_%e128195%_ _%hd128190%_)
                                          (_%vars128196%_ '())
                                          (_%depth128197%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128195%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e128195%_))
                              (values '(any) _%vars128196%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e128195%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx128109%_
                                     _%hd128190%_))
                                  (if (let ((__tmp129508
                                             (lambda (_%id128202%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e128195%_
                                                  _%id128202%_)))))
                                        (declare (not safe))
                                        (__find __tmp129508 _%ids128191%_))
                                      (values (cons 'id _%e128195%_)
                                              _%vars128196%_)
                                      (if (let ((__tmp129509
                                                 (lambda (_%var128205%_)
                                                   (let ((__tmp129510
                                                          (car _%var128205%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e128195%_
                                                      __tmp129510)))))
                                            (declare (not safe))
                                            (__find __tmp129509
                                                    _%vars128196%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx128109%_
                                             _%e128195%_))
                                          (values (cons 'var _%e128195%_)
                                                  (cons (cons _%e128195%_
                                                              _%depth128197%_)
                                                        _%vars128196%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128195%_))
                              (let* ((_%e128209128216%_ _%e128195%_)
                                     (_%E128211128220%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e128209128216%_))))
                                     (_%E128210128281%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e128209128216%_))
                                            (let ((_%e128212128224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e128209128216%_))))
                                              (let ((_%hd128213128227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e128212128224%_)))
                                                    (_%tl128214128229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e128212128224%_))))
                                                (let* ((_%hd128232%_
                                                        _%hd128213128227%_)
                                                       (_%rest128234%_
                                                        _%tl128214128229%_))
                                                  (if '#t
                                                      (let* ((_%make-pair128249%_
                                                              (lambda (_%tag128236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd128237%_
                               _%tl128238%_)
                        (let* ((_%hd-depth128240%_
                                (if (eq? _%tag128236%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth128197%_ '1))
                                    _%depth128197%_))
                               (_g129511_
                                (_%recur128193%_
                                 _%hd128237%_
                                 _%vars128196%_
                                 _%hd-depth128240%_)))
                          (begin
                            (let ((_g129512_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g129511_)
                                         (##vector-length _g129511_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g129512_ 2)))
                                  (error "Context expects 2 values"
                                         _g129512_)))
                            (let ((_%hd128242%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129511_ 0)))
                                  (_%vars128243%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129511_ 1))))
                              (let ((_g129513_
                                     (_%recur128193%_
                                      _%tl128238%_
                                      _%vars128243%_
                                      _%depth128197%_)))
                                (begin
                                  (let ((_g129514_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g129513_)
                                               (##vector-length _g129513_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g129514_ 2)))
                                        (error "Context expects 2 values"
                                               _g129514_)))
                                  (let ((_%tl128245%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129513_ 0)))
                                        (_%vars128246%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129513_ 1))))
                                    (values (cons _%tag128236%_
                                                  (cons _%hd128242%_
                                                        _%tl128245%_))
                                            _%vars128246%_)))))))))
                     (_%e128250128257%_ _%rest128234%_)
                     (_%E128252128261%_
                      (lambda ()
                        (_%make-pair128249%_
                         'cons
                         _%hd128232%_
                         _%rest128234%_)))
                     (_%E128251128277%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e128250128257%_))
                            (let ((_%e128253128265%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e128250128257%_))))
                              (let ((_%hd128254128268%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128253128265%_)))
                                    (_%tl128255128270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128253128265%_))))
                                (let* ((_%rest-hd128273%_ _%hd128254128268%_)
                                       (_%rest-tl128275%_ _%tl128255128270%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd128273%_))
                                          (_%make-pair128249%_
                                           'splice
                                           _%hd128232%_
                                           _%rest-tl128275%_)
                                          (_%make-pair128249%_
                                           'cons
                                           _%hd128232%_
                                           _%rest128234%_))
                                      (_%E128252128261%_)))))
                            (_%E128252128261%_)))))
                (_%E128251128277%_))
              (_%E128211128220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E128211128220%_)))))
                                (_%E128210128281%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128195%_))
                                  (values '(null) _%vars128196%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128195%_))
                                      (let ((_g129515_
                                             (_%recur128193%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e128195%_)))
                                              _%vars128196%_
                                              _%depth128197%_)))
                                        (begin
                                          (let ((_g129516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129515_)
                                                       (##vector-length
                                                        _g129515_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129516_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129516_)))
                                          (let ((_%e128287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129515_ 0)))
                                                (_%vars128288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129515_
                                                    1))))
                                            (values (cons 'vector _%e128287%_)
                                                    _%vars128288%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128195%_))
                                          (let ((_g129517_
                                                 (_%recur128193%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128195%_)))
                                                  _%vars128196%_
                                                  _%depth128197%_)))
                                            (begin
                                              (let ((_g129518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129517_)
                                                           (##vector-length
                                                            _g129517_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129518_)))
                                              (let ((_%e128291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129517_
                                                        0)))
                                                    (_%vars128292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129517_
                                                        1))))
                                                (values (cons 'box _%e128291%_)
                                                        _%vars128292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128195%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e128195%_)))
                                                      _%vars128196%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128109%_
                                                 _%e128195%_))))))))))))
          (let* ((_%e128119128132%_ _%stx128109%_)
                 (_%E128121128136%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128119128132%_))))
                 (_%E128120128186%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128119128132%_))
                        (let ((_%e128122128140%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128119128132%_))))
                          (let ((_%hd128123128143%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128122128140%_)))
                                (_%tl128124128145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128122128140%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128124128145%_))
                                (let ((_%e128125128148%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128124128145%_))))
                                  (let ((_%hd128126128151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128125128148%_)))
                                        (_%tl128127128153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128125128148%_))))
                                    (let ((_%expr128156%_ _%hd128126128151%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128127128153%_))
                                          (let ((_%e128128128158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128127128153%_))))
                                            (let ((_%hd128129128161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128128128158%_)))
                                                  (_%tl128130128163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128128128158%_))))
                                              (let* ((_%ids128166%_
                                                      _%hd128129128161%_)
                                                     (_%clauses128168%_
                                                      _%tl128130128163%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids128166%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128109%_
                   _%ids128166%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses128168%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128109%_))
                    (let* ((_%ids128173%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids128166%_)))
                           (_%clauses128175%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses128168%_)))
                           (_%clause-ids128177%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses128175%_)))
                           (_%E128179%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target128181%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first128183%_
                            (if (null? _%clauses128175%_)
                                _%E128179%_
                                (car _%clause-ids128177%_))))
                      (let ((__tmp129520
                             (let ((__tmp129521
                                    (let ((__tmp129523
                                           (let ((__tmp129525
                                                  (cons (cons (cons _%E128179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp129527 (cons _%target128181%_ '()))
                                  (__tmp129526
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target128181%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp129527 __tmp129526))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp129524
                                                  (_%generate-body128115%_
                                                   (_%generate-bindings128114%_
                                                    _%target128181%_
                                                    _%ids128173%_
                                                    _%clauses128175%_
                                                    _%clause-ids128177%_
                                                    _%E128179%_)
                                                   (cons _%first128183%_
                                                         (cons _%expr128156%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp129525
                                              __tmp129524)))
                                          (__tmp129522
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx128109%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp129523
                                       __tmp129522))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp129521)))
                            (__tmp129519
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx128109%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp129520 __tmp129519)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128121128136%_)))))
                                          (_%E128121128136%_)))))
                                (_%E128121128136%_))))
                        (_%E128121128136%_)))))
            (_%E128120128186%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128834%_)
        (let* ((_%identifier=?128836%_ 'free-identifier=?)
               (_%unwrap-e128838%_ 'syntax-e)
               (_%wrap-e128840%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128834%_
           _%identifier=?128836%_
           _%unwrap-e128838%_
           _%wrap-e128840%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128842%_ _%identifier=?128843%_)
        (let* ((_%unwrap-e128845%_ 'syntax-e) (_%wrap-e128847%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128842%_
           _%identifier=?128843%_
           _%unwrap-e128845%_
           _%wrap-e128847%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128849%_ _%identifier=?128850%_ _%unwrap-e128851%_)
        (let ((_%wrap-e128853%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128849%_
           _%identifier=?128850%_
           _%unwrap-e128851%_
           _%wrap-e128853%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129529_
        (let ((_g129528_ (let () (declare (not safe)) (##length _g129529_))))
          (cond ((let () (declare (not safe)) (##fx= _g129528_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g129529_))
                ((let () (declare (not safe)) (##fx= _g129528_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g129529_))
                ((let () (declare (not safe)) (##fx= _g129528_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g129529_))
                ((let () (declare (not safe)) (##fx= _g129528_ 4))
                 (apply gx#macro-expand-syntax-case__% _g129529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129529_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128106%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128106%_))
            (let ((__tmp129530
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128106%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129530 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128064%_ . _%rest128065%_)
        (let ((_%len128067%_ (length _%hd128064%_)))
          (let _%lp128069%_ ((_%rest128071%_ _%rest128065%_))
            (let* ((_%rest128072128080%_ _%rest128071%_)
                   (_%else128074128088%_ (lambda () '#!void))
                   (_%K128076128094%_
                    (lambda (_%rest128091%_ _%hd128092%_)
                      (if (let ((__tmp129531 (length _%hd128092%_)))
                            (declare (not safe))
                            (##fx= _%len128067%_ __tmp129531))
                          (_%lp128069%_ _%rest128091%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128092%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128072128080%_))
                  (let ((_%hd128077128097%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128072128080%_)))
                        (_%tl128078128099%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128072128080%_))))
                    (let* ((_%hd128102%_ _%hd128077128097%_)
                           (_%rest128104%_ _%tl128078128099%_))
                      (_%K128076128094%_ _%rest128104%_ _%hd128102%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128019%_ _%n128020%_)
        (let _%lp128022%_ ((_%rest128024%_ _%stx128019%_) (_%r128025%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128024%_))
              (let* ((_%g128026128033%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128024%_)))
                     (_%E128028128037%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128026128033%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128029128043%_
                      (lambda (_%rest128040%_ _%hd128041%_)
                        (_%lp128022%_
                         _%rest128040%_
                         (cons _%hd128041%_ _%r128025%_)))))
                (if (let () (declare (not safe)) (##pair? _%g128026128033%_))
                    (let ((_%hd128030128046%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128026128033%_)))
                          (_%tl128031128048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128026128033%_))))
                      (let* ((_%hd128051%_ _%hd128030128046%_)
                             (_%rest128053%_ _%tl128031128048%_))
                        (_%K128029128043%_ _%rest128053%_ _%hd128051%_)))
                    (_%E128028128037%_)))
              (let _%lp128055%_ ((_%n128057%_ _%n128020%_)
                                 (_%l128058%_ _%r128025%_)
                                 (_%r128059%_ _%rest128024%_))
                (if (null? _%l128058%_)
                    (values _%l128058%_ _%r128059%_)
                    (if (fxpositive? _%n128057%_)
                        (_%lp128055%_
                         (let () (declare (not safe)) (##fx- _%n128057%_ '1))
                         (cdr _%l128058%_)
                         (cons (car _%l128058%_) _%r128059%_))
                        (values (reverse _%l128058%_) _%r128059%_))))))))))
