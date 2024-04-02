(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712084996)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp128980 (list gx#expander::t))
            (__tmp128979 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp128980
         '(id depth)
         __tmp128979
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args128976%_
        (apply make-instance gx#syntax-pattern::t _%$args128976%_)))
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
      (lambda (_%self128962%_ _%stx128963%_)
        (let ()
          (let ((_%self128966%_ _%self128962%_))
            (let ()
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Identifier used out of context"
                 _%stx128963%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128428%_)
        (letrec ((_%generate128430%_
                  (lambda (_%e128670%_)
                    (letrec ((_%BUG128672%_
                              (lambda (_%q128837%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128428%_
                                         _%e128670%_
                                         _%q128837%_))))
                             (_%local-pattern-e128673%_
                              (lambda (_%pat128835%_)
                                (let ((__tmp128981
                                       (##structure-ref
                                        _%pat128835%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp128981))))
                             (_%getvar128674%_
                              (lambda (_%q128832%_ _%vars128833%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128832%_
                                   _%vars128833%_
                                   _%BUG128672%_))))
                             (_%getarg128675%_
                              (lambda (_%arg128798%_ _%vars128799%_)
                                (let* ((_%arg128800128807%_ _%arg128798%_)
                                       (_%E128802128811%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128800128807%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128803128820%_
                                        (lambda (_%e128814%_ _%tag128815%_)
                                          (let ((_%$e128817%_ _%tag128815%_))
                                            (if (eq? 'ref _%$e128817%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar128674%_
                                                   _%e128814%_
                                                   _%vars128799%_))
                                                (if (eq? 'pattern _%$e128817%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e128673%_
                                                       _%e128814%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG128672%_
                                                       _%arg128798%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128800128807%_))
                                      (let ((_%hd128804128823%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128800128807%_)))
                                            (_%tl128805128825%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128800128807%_))))
                                        (let* ((_%tag128828%_
                                                _%hd128804128823%_)
                                               (_%e128830%_
                                                _%tl128805128825%_))
                                          (declare (not safe))
                                          (_%K128803128820%_
                                           _%e128830%_
                                           _%tag128828%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128802128811%_)))))))
                      (let _%recur128677%_ ((_%e128679%_ _%e128670%_)
                                            (_%vars128680%_ '()))
                        (let* ((_%e128681128688%_ _%e128679%_)
                               (_%E128683128692%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128681128688%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128684128786%_
                                (lambda (_%body128695%_ _%tag128696%_)
                                  (let ((_%$e128698%_ _%tag128696%_))
                                    (if (eq? 'datum _%$e128698%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128695%_))
                                        (if (eq? 'term _%$e128698%_)
                                            (let ((_%id128701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128695%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128701%_
                                                     'gx#identifier-wrap::t))
                                                  (let ()
                                                    (let ((_%marks128704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%id128701%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _%marks128704%_))
                                                          (let ((__tmp128982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128695%_))))
                    (declare (not safe))
                    (gx#core-list 'datum->syntax '#f __tmp128982))
                  (let ((__tmp128984
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote-syntax _%body128695%_)))
                        (__tmp128983
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128695%_))))
                    (declare (not safe))
                    (gx#core-list
                     'datum->syntax
                     __tmp128984
                     __tmp128983
                     '#f
                     '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128701%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote-syntax
                                                           _%body128695%_)))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%BUG128672%_
                                                           _%e128679%_))))))
                                            (if (eq? 'pattern _%$e128698%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e128673%_
                                                   _%body128695%_))
                                                (if (eq? 'ref _%$e128698%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar128674%_
                                                       _%body128695%_
                                                       _%vars128680%_))
                                                    (if (eq? 'cons
                                                             _%$e128698%_)
                                                        (let ((__tmp128987
                                                               (let ((__tmp128988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body128695%_)))
                         (declare (not safe))
                         (_%recur128677%_ __tmp128988 _%vars128680%_)))
                      (__tmp128985
                       (let ((__tmp128986 (cdr _%body128695%_)))
                         (declare (not safe))
                         (_%recur128677%_ __tmp128986 _%vars128680%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp128987 __tmp128985))
                (if (eq? 'vector _%$e128698%_)
                    (let ((__tmp128989
                           (let ()
                             (declare (not safe))
                             (_%recur128677%_ _%body128695%_ _%vars128680%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp128989))
                    (if (eq? 'box _%$e128698%_)
                        (let ((__tmp128990
                               (let ()
                                 (declare (not safe))
                                 (_%recur128677%_
                                  _%body128695%_
                                  _%vars128680%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp128990))
                        (if (eq? 'splice _%$e128698%_)
                            (let* ((_%body128707128718%_ _%body128695%_)
                                   (_%E128709128722%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128707128718%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128710128760%_
                                    (lambda (_%args128725%_
                                             _%iv128726%_
                                             _%hd128727%_
                                             _%depth128728%_)
                                      (let* ((_%targets128734%_
                                              (map (lambda (_%g128729128731%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg128675%_
                                                        _%g128729128731%_
                                                        _%vars128680%_)))
                                                   _%args128725%_))
                                             (_%fold-in128736%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128725%_)))
                                             (_%fold-out128738%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128740%_
                                              (let ((__tmp128991
                                                     (cons _%fold-out128738%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp128991
                                                 _%fold-in128736%_)))
                                             (_%lambda-body128757%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128728%_ '1))
                                                  (let ((_%r-args128748%_
                                                         (map (lambda (_%arg128742%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128742%_)))
                      _%args128725%_))
                (_%r-vars128749%_
                 (let ((__tmp128992
                        (lambda (_%arg128744%_ _%var128745%_ _%r128746%_)
                          (cons (cons (cdr _%arg128744%_) _%var128745%_)
                                _%r128746%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp128992
                    _%vars128680%_
                    _%args128725%_
                    _%fold-in128736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp128993
                                                           (let ((__tmp128994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128998
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth128728%_ '1)))
                                (__tmp128995
                                 (let ((__tmp128996
                                        (let ((__tmp128997
                                               (cons 'var _%fold-out128738%_)))
                                          (declare (not safe))
                                          (cons __tmp128997
                                                _%r-args128748%_))))
                                   (declare (not safe))
                                   (cons _%hd128727%_ __tmp128996))))
                            (declare (not safe))
                            (cons __tmp128998 __tmp128995))))
                     (declare (not safe))
                     (cons 'splice __tmp128994))))
              (declare (not safe))
              (_%recur128677%_ __tmp128993 _%r-vars128749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars128755%_
                                                          (let ((__tmp128999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128751%_ _%var128752%_ _%r128753%_)
                           (cons (cons (cdr _%arg128751%_) _%var128752%_)
                                 _%r128753%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp128999
                     _%vars128680%_
                     _%args128725%_
                     _%fold-in128736%_)))
                 (__tmp129000
                  (let ()
                    (declare (not safe))
                    (_%recur128677%_ _%hd128727%_ _%hd-vars128755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129000
                                                     _%fold-out128738%_)))))
                                        (let ((__tmp129004
                                               (if (let ((__tmp129005
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128734%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129005 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128734%_))
                                                   '#!void))
                                              (__tmp129001
                                               (let ((__tmp129003
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128740%_
                                                         _%lambda-body128757%_)))
                                                     (__tmp129002
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur128677%_
                                                         _%iv128726%_
                                                         _%vars128680%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129003
                                                  __tmp129002
                                                  _%targets128734%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129004
                                           __tmp129001))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128707128718%_))
                                  (let ((_%hd128711128763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128707128718%_)))
                                        (_%tl128712128765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128707128718%_))))
                                    (let ((_%depth128768%_ _%hd128711128763%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128712128765%_))
                                          (let ((_%hd128713128770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128712128765%_)))
                                                (_%tl128714128772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128712128765%_))))
                                            (let ((_%hd128775%_
                                                   _%hd128713128770%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128714128772%_))
                                                  (let ((_%hd128715128777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128714128772%_)))
                                                        (_%tl128716128779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128714128772%_))))
                                                    (let* ((_%iv128782%_
                                                            _%hd128715128777%_)
                                                           (_%args128784%_
                                                            _%tl128716128779%_))
                                                      (declare (not safe))
                                                      (_%K128710128760%_
                                                       _%args128784%_
                                                       _%iv128782%_
                                                       _%hd128775%_
                                                       _%depth128768%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E128709128722%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128709128722%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128709128722%_))))
                            (if (eq? 'var _%$e128698%_)
                                _%body128695%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG128672%_ _%e128679%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128681128688%_))
                              (let ((_%hd128685128789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128681128688%_)))
                                    (_%tl128686128791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128681128688%_))))
                                (let* ((_%tag128794%_ _%hd128685128789%_)
                                       (_%body128796%_ _%tl128686128791%_))
                                  (declare (not safe))
                                  (_%K128684128786%_
                                   _%body128796%_
                                   _%tag128794%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128683128692%_))))))))
                 (_%parse128431%_
                  (lambda (_%e128472%_)
                    (letrec ((_%make-cons128474%_
                              (lambda (_%hd128662%_ _%tl128663%_)
                                (let ((_g129006_ _%hd128662%_)
                                      (_g129008_ _%tl128663%_))
                                  (begin
                                    (let ((_g129007_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129006_)
                                                 (##vector-length _g129006_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129007_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129007_)))
                                    (let ((_g129009_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129008_)
                                                 (##vector-length _g129008_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129009_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129009_)))
                                    (let ((_%hd-e128665%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129006_ 0)))
                                          (_%hd-vars128666%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129006_ 1))))
                                      (let ((_%tl-e128667%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129008_ 0)))
                                            (_%tl-vars128668%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129008_ 1))))
                                        (values (let ((__tmp129010
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e128665%_
                                                               _%tl-e128667%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129010))
                                                (append _%hd-vars128666%_
                                                        _%tl-vars128668%_))))))))
                             (_%make-splice128475%_
                              (lambda (_%where128598%_
                                       _%depth128599%_
                                       _%hd128600%_
                                       _%tl128601%_)
                                (let ((_g129011_ _%hd128600%_)
                                      (_g129013_ _%tl128601%_))
                                  (begin
                                    (let ((_g129012_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129011_)
                                                 (##vector-length _g129011_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129012_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129012_)))
                                    (let ((_g129014_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129013_)
                                                 (##vector-length _g129013_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129014_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129014_)))
                                    (let ((_%hd-e128603%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129011_ 0)))
                                          (_%hd-vars128604%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129011_ 1))))
                                      (let ((_%tl-e128605%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129013_ 0)))
                                            (_%tl-vars128606%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129013_ 1))))
                                        (let _%lp128608%_ ((_%rest128610%_
                                                            _%hd-vars128604%_)
                                                           (_%targets128611%_
                                                            '())
                                                           (_%vars128612%_
                                                            _%tl-vars128606%_))
                                          (let* ((_%rest128613128623%_
                                                  _%rest128610%_)
                                                 (_%else128615128631%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets128611%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128428%_
                                                           _%where128598%_))
                                                        (values (let ((__tmp129015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129016
                                      (let ((__tmp129017
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e128605%_
                                                     _%targets128611%_))))
                                        (declare (not safe))
                                        (cons _%hd-e128603%_ __tmp129017))))
                                 (declare (not safe))
                                 (cons _%depth128599%_ __tmp129016))))
                          (declare (not safe))
                          (cons 'splice __tmp129015))
                        _%vars128612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128617128643%_
                                                  (lambda (_%rest128634%_
                                                           _%hd-pat128635%_
                                                           _%hd-depth*128636%_)
                                                    (let ((_%hd-depth128638%_
                                                           (fx- _%hd-depth*128636%_
                                                                _%depth128599%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128638%_))
                                                          (let ()
                                                            (let ((__tmp129019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'ref _%hd-pat128635%_)
                                 _%targets128611%_))
                          (__tmp129018
                           (cons (cons _%hd-depth128638%_ _%hd-pat128635%_)
                                 _%vars128612%_)))
                      (declare (not safe))
                      (_%lp128608%_ _%rest128634%_ __tmp129019 __tmp129018)))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128638%_))
                      (let ()
                        (let ((__tmp129020
                               (cons (cons 'pattern _%hd-pat128635%_)
                                     _%targets128611%_)))
                          (declare (not safe))
                          (_%lp128608%_
                           _%rest128634%_
                           __tmp129020
                           _%vars128612%_)))
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Too many ellipses"
                           _%stx128428%_
                           _%where128598%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128613128623%_))
                                                (let ((_%hd128618128646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128613128623%_)))
                                                      (_%tl128619128648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128613128623%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128618128646%_))
                                                      (let ((_%hd128620128651%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128618128646%_)))
                    (_%tl128621128653%_
                     (let () (declare (not safe)) (##cdr _%hd128618128646%_))))
                (let* ((_%hd-depth*128656%_ _%hd128620128651%_)
                       (_%hd-pat128658%_ _%tl128621128653%_)
                       (_%rest128660%_ _%tl128619128648%_))
                  (declare (not safe))
                  (_%K128617128643%_
                   _%rest128660%_
                   _%hd-pat128658%_
                   _%hd-depth*128656%_)))
              (let () (declare (not safe)) (_%else128615128631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else128615128631%_)))))))))))
                             (_%recur128476%_
                              (lambda (_%e128481%_ _%is-e?128482%_)
                                (if (_%is-e?128482%_ _%e128481%_)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Mislpaced ellipsis"
                                         _%stx128428%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e128481%_))
                                        (let ()
                                          (let* ((_%pat128486%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e128481%_)))
                                                 (_%depth128488%_
                                                  (##structure-ref
                                                   _%pat128486%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth128488%_)
                                                (values (cons 'ref
                                                              _%pat128486%_)
                                                        (cons (cons _%depth128488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat128486%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat128486%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128481%_))
                                            (let ()
                                              (values (cons 'term _%e128481%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128481%_))
                                                (let ()
                                                  (let* ((_%e128492128499%_
                                                          _%e128481%_)
                                                         (_%E128494128503%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e128492128499%_))))
                                                         (_%E128493128585%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e128492128499%_))
                        (let ((_%e128495128507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128492128499%_))))
                          (let ((_%hd128496128510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128495128507%_)))
                                (_%tl128497128512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128495128507%_))))
                            (let* ((_%hd128515%_ _%hd128496128510%_)
                                   (_%rest128517%_ _%tl128497128512%_))
                              (if '#t
                                  (if (_%is-e?128482%_ _%hd128515%_)
                                      (let* ((_%e128518128525%_ _%rest128517%_)
                                             (_%E128520128529%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx128428%_
                                                   _%e128481%_))))
                                             (_%E128519128543%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128518128525%_))
                                                    (let ((_%e128521128533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128518128525%_))))
                                                      (let ((_%hd128522128536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128521128533%_)))
                    (_%tl128523128538%_
                     (let () (declare (not safe)) (##cdr _%e128521128533%_))))
                (let ((_%rest128541%_ _%hd128522128536%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl128523128538%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur128476%_ _%rest128541%_ false))
                          (let () (declare (not safe)) (_%E128520128529%_)))
                      (let () (declare (not safe)) (_%E128520128529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128520128529%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128519128543%_)))
                                      (let _%lp128547%_ ((_%rest128549%_
                                                          _%rest128517%_)
                                                         (_%depth128550%_ '0))
                                        (let* ((_%e128551128558%_
                                                _%rest128549%_)
                                               (_%E128553128562%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth128550%_)
                                                      (let ((__tmp129022
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur128476%_ _%hd128515%_ _%is-e?128482%_)))
                    (__tmp129021
                     (let ()
                       (declare (not safe))
                       (_%recur128476%_ _%rest128549%_ _%is-e?128482%_))))
                (declare (not safe))
                (_%make-splice128475%_
                 _%e128481%_
                 _%depth128550%_
                 __tmp129022
                 __tmp129021))
              (let ((__tmp129024
                     (let ()
                       (declare (not safe))
                       (_%recur128476%_ _%hd128515%_ _%is-e?128482%_)))
                    (__tmp129023
                     (let ()
                       (declare (not safe))
                       (_%recur128476%_ _%rest128549%_ _%is-e?128482%_))))
                (declare (not safe))
                (_%make-cons128474%_ __tmp129024 __tmp129023)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E128552128581%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e128551128558%_))
                                                      (let ((_%e128554128566%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e128551128558%_))))
                (let ((_%hd128555128569%_
                       (let () (declare (not safe)) (##car _%e128554128566%_)))
                      (_%tl128556128571%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e128554128566%_))))
                  (let* ((_%rest-hd128574%_ _%hd128555128569%_)
                         (_%rest-tl128576%_ _%tl128556128571%_))
                    (if '#t
                        (if (_%is-e?128482%_ _%rest-hd128574%_)
                            (let ()
                              (let ((__tmp129025
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%depth128550%_ '1))))
                                (declare (not safe))
                                (_%lp128547%_ _%rest-tl128576%_ __tmp129025)))
                            (if (fxpositive? _%depth128550%_)
                                (let ()
                                  (let ((__tmp129027
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128476%_
                                            _%hd128515%_
                                            _%is-e?128482%_)))
                                        (__tmp129026
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128476%_
                                            _%rest128549%_
                                            _%is-e?128482%_))))
                                    (declare (not safe))
                                    (_%make-splice128475%_
                                     _%e128481%_
                                     _%depth128550%_
                                     __tmp129027
                                     __tmp129026)))
                                (let ()
                                  (let ((__tmp129029
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128476%_
                                            _%hd128515%_
                                            _%is-e?128482%_)))
                                        (__tmp129028
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128476%_
                                            _%rest128549%_
                                            _%is-e?128482%_))))
                                    (declare (not safe))
                                    (_%make-cons128474%_
                                     __tmp129029
                                     __tmp129028)))))
                        (let () (declare (not safe)) (_%E128553128562%_))))))
              (let () (declare (not safe)) (_%E128553128562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%E128552128581%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128494128503%_))))))
                        (let () (declare (not safe)) (_%E128494128503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128493128585%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128481%_))
                                                    (let ()
                                                      (let ((_g129030_
                                                             (let ((__tmp129032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (vector->list
                             (let ()
                               (declare (not safe))
                               (gx#stx-unwrap__0 _%e128481%_)))))
                       (declare (not safe))
                       (_%recur128476%_ __tmp129032 _%is-e?128482%_))))
                (begin
                  (let ((_g129031_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g129030_)
                               (##vector-length _g129030_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g129031_ 2)))
                        (error "Context expects 2 values" _g129031_)))
                  (let ((_%e128590%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129030_ 0)))
                        (_%vars128591%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129030_ 1))))
                    (values (cons 'vector _%e128590%_) _%vars128591%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128481%_))
                                                        (let ()
                                                          (let ((_g129033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129035
                                (unbox (let ()
                                         (declare (not safe))
                                         (gx#stx-unwrap__0 _%e128481%_)))))
                           (declare (not safe))
                           (_%recur128476%_ __tmp129035 _%is-e?128482%_))))
                    (begin
                      (let ((_g129034_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g129033_)
                                   (##vector-length _g129033_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g129034_ 2)))
                            (error "Context expects 2 values" _g129034_)))
                      (let ((_%e128594%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129033_ 0)))
                            (_%vars128595%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129033_ 1))))
                        (values (cons 'box _%e128594%_) _%vars128595%_)))))
                (let () (values (cons 'datum _%e128481%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129036_
                             (let ()
                               (declare (not safe))
                               (_%recur128476%_ _%e128472%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129037_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129036_)
                                       (##vector-length _g129036_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129037_ 2)))
                                (error "Context expects 2 values" _g129037_)))
                          (let ((_%tree128478%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129036_ 0)))
                                (_%vars128479%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129036_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars128479%_))
                                _%tree128478%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128428%_
                                   _%vars128479%_))))))))))
          (let* ((_%e128432128442%_ _%stx128428%_)
                 (_%E128434128446%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128428%_))))
                 (_%E128433128468%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128432128442%_))
                        (let ((_%e128435128450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128432128442%_))))
                          (let ((_%hd128436128453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128435128450%_)))
                                (_%tl128437128455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128435128450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128437128455%_))
                                (let ((_%e128438128458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128437128455%_))))
                                  (let ((_%hd128439128461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128438128458%_)))
                                        (_%tl128440128463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128438128458%_))))
                                    (let ((_%form128466%_ _%hd128439128461%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128440128463%_))
                                          (if '#t
                                              (let ((__tmp129039
                                                     (let ((__tmp129040
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse128431%_
                                                               _%form128466%_))))
                                                       (declare (not safe))
                                                       (_%generate128430%_
                                                        __tmp129040)))
                                                    (__tmp129038
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128428%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129039
                                                 __tmp129038))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128434128446%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128434128446%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128434128446%_)))))
                        (let () (declare (not safe)) (_%E128434128446%_))))))
            (let () (declare (not safe)) (_%E128433128468%_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127677%_
               _%identifier=?127678%_
               _%unwrap-e127679%_
               _%wrap-e127680%_)
        (letrec ((_%generate-bindings127682%_
                  (lambda (_%target128292%_
                           _%ids128293%_
                           _%clauses128294%_
                           _%clause-ids128295%_
                           _%E128296%_)
                    (letrec ((_%generate1128298%_
                              (lambda (_%clause128395%_
                                       _%clause-id128396%_
                                       _%E128397%_)
                                (cons (cons _%clause-id128396%_ '())
                                      (cons (let ((__tmp129042
                                                   (cons _%target128292%_ '()))
                                                  (__tmp129041
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause127684%_
                                                      _%target128292%_
                                                      _%ids128293%_
                                                      _%clause128395%_
                                                      _%E128397%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129042
                                               __tmp129041))
                                            '())))))
                      (let _%lp128300%_ ((_%rest128302%_ _%clauses128294%_)
                                         (_%rest-ids128303%_
                                          _%clause-ids128295%_)
                                         (_%bindings128304%_ '()))
                        (let* ((_%rest128305128313%_ _%rest128302%_)
                               (_%else128307128321%_
                                (lambda () _%bindings128304%_))
                               (_%K128309128383%_
                                (lambda (_%rest128324%_ _%clause128325%_)
                                  (let* ((_%rest-ids128326128333%_
                                          _%rest-ids128303%_)
                                         (_%E128328128337%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128326128333%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128329128371%_
                                          (lambda (_%rest-ids128340%_
                                                   _%clause-id128341%_)
                                            (let* ((_%rest-ids128342128350%_
                                                    _%rest-ids128340%_)
                                                   (_%else128344128358%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128298%_
                                                               _%clause128325%_
                                                               _%clause-id128341%_
                                                               _%E128296%_))
                                                            _%bindings128304%_)))
                                                   (_%K128346128363%_
                                                    (lambda (_%next-clause-id128361%_)
                                                      (let ((__tmp129043
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128298%_
                              _%clause128325%_
                              _%clause-id128341%_
                              _%next-clause-id128361%_))
                           _%bindings128304%_)))
                (declare (not safe))
                (_%lp128300%_
                 _%rest128324%_
                 _%rest-ids128340%_
                 __tmp129043)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128342128350%_))
                                                  (let* ((_%hd128347128366%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128342128350%_)))
                                                         (_%next-clause-id128369%_
                                                          _%hd128347128366%_))
                                                    (declare (not safe))
                                                    (_%K128346128363%_
                                                     _%next-clause-id128369%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128344128358%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128326128333%_))
                                        (let ((_%hd128330128374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128326128333%_)))
                                              (_%tl128331128376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128326128333%_))))
                                          (let* ((_%clause-id128379%_
                                                  _%hd128330128374%_)
                                                 (_%rest-ids128381%_
                                                  _%tl128331128376%_))
                                            (declare (not safe))
                                            (_%K128329128371%_
                                             _%rest-ids128381%_
                                             _%clause-id128379%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128328128337%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128305128313%_))
                              (let ((_%hd128310128386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128305128313%_)))
                                    (_%tl128311128388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128305128313%_))))
                                (let* ((_%clause128391%_ _%hd128310128386%_)
                                       (_%rest128393%_ _%tl128311128388%_))
                                  (declare (not safe))
                                  (_%K128309128383%_
                                   _%rest128393%_
                                   _%clause128391%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128307128321%_))))))))
                 (_%generate-body127683%_
                  (lambda (_%bindings128252%_ _%body128253%_)
                    (let _%recur128255%_ ((_%rest128257%_ _%bindings128252%_))
                      (let* ((_%rest128258128266%_ _%rest128257%_)
                             (_%else128260128274%_ (lambda () _%body128253%_))
                             (_%K128262128280%_
                              (lambda (_%rest128277%_ _%hd128278%_)
                                (let ((__tmp129045 (cons _%hd128278%_ '()))
                                      (__tmp129044
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128255%_ _%rest128277%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129045
                                   __tmp129044)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128258128266%_))
                            (let ((_%hd128263128283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128258128266%_)))
                                  (_%tl128264128285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128258128266%_))))
                              (let* ((_%hd128288%_ _%hd128263128283%_)
                                     (_%rest128290%_ _%tl128264128285%_))
                                (declare (not safe))
                                (_%K128262128280%_
                                 _%rest128290%_
                                 _%hd128288%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128260128274%_)))))))
                 (_%generate-clause127684%_
                  (lambda (_%target128115%_
                           _%ids128116%_
                           _%clause128117%_
                           _%E128118%_)
                    (letrec ((_%generate1128120%_
                              (lambda (_%hd128207%_
                                       _%fender128208%_
                                       _%body128209%_)
                                (let ((_g129046_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause127686%_
                                          _%hd128207%_
                                          _%ids128116%_))))
                                  (begin
                                    (let ((_g129047_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129046_)
                                                 (##vector-length _g129046_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129047_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129047_)))
                                    (let ((_%e128211%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129046_ 0)))
                                          (_%mvars128212%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129046_ 1))))
                                      (let* ((_%pvars128214%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128212%_))))
                                             (_%E128216%_
                                              (cons _%E128118%_
                                                    (cons _%target128115%_
                                                          '())))
                                             (_%K128249%_
                                              (let ((__tmp129048
                                                     (let ((__tmp129050
                                                            (map (lambda (_%mvar128218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128219%_)
                           (let* ((_%mvar128220128227%_ _%mvar128218%_)
                                  (_%E128222128231%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128220128227%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128223128237%_
                                   (lambda (_%depth128234%_ _%id128235%_)
                                     (cons _%id128235%_
                                           (cons (let ((__tmp129052
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128235%_)))
                                                       (__tmp129051
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128219%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129052
                                                    __tmp129051
                                                    _%depth128234%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128220128227%_))
                                 (let ((_%hd128224128240%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128220128227%_)))
                                       (_%tl128225128242%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128220128227%_))))
                                   (let* ((_%id128245%_ _%hd128224128240%_)
                                          (_%depth128247%_ _%tl128225128242%_))
                                     (declare (not safe))
                                     (_%K128223128237%_
                                      _%depth128247%_
                                      _%id128245%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128222128231%_)))))
                         _%mvars128212%_
                         _%pvars128214%_))
                   (__tmp129049
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128208%_ '#t))
                        _%body128209%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128208%_
                           _%body128209%_
                           _%E128216%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129050 __tmp129049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128214%_
                                                 __tmp129048))))
                                        (let ()
                                          (declare (not safe))
                                          (_%generate-match127685%_
                                           _%hd128207%_
                                           _%target128115%_
                                           _%e128211%_
                                           _%mvars128212%_
                                           _%K128249%_
                                           _%E128216%_)))))))))
                      (let* ((_%e128121128141%_ _%clause128117%_)
                             (_%E128130128145%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128121128141%_))))
                             (_%E128123128179%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128121128141%_))
                                    (let ((_%e128131128149%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128121128141%_))))
                                      (let ((_%hd128132128152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128131128149%_)))
                                            (_%tl128133128154%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128131128149%_))))
                                        (let ((_%hd128157%_
                                               _%hd128132128152%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128133128154%_))
                                              (let ((_%e128134128159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128133128154%_))))
                                                (let ((_%hd128135128162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128134128159%_)))
                                                      (_%tl128136128164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128134128159%_))))
                                                  (let ((_%fender128167%_
                                                         _%hd128135128162%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128136128164%_))
                                                        (let ((_%e128137128169%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128136128164%_))))
                  (let ((_%hd128138128172%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128137128169%_)))
                        (_%tl128139128174%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128137128169%_))))
                    (let ((_%body128177%_ _%hd128138128172%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128139128174%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128120%_
                                 _%hd128157%_
                                 _%fender128167%_
                                 _%body128177%_))
                              (let ()
                                (declare (not safe))
                                (_%E128130128145%_)))
                          (let () (declare (not safe)) (_%E128130128145%_))))))
                (let () (declare (not safe)) (_%E128130128145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128130128145%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128130128145%_)))))
                             (_%E128122128203%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128121128141%_))
                                    (let ((_%e128124128183%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128121128141%_))))
                                      (let ((_%hd128125128186%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128124128183%_)))
                                            (_%tl128126128188%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128124128183%_))))
                                        (let ((_%hd128191%_
                                               _%hd128125128186%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128126128188%_))
                                              (let ((_%e128127128193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128126128188%_))))
                                                (let ((_%hd128128128196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128127128193%_)))
                                                      (_%tl128129128198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128127128193%_))))
                                                  (let ((_%body128201%_
                                                         _%hd128128128196%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128129128198%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128120%_
                                                               _%hd128191%_
                                                               '#t
                                                               _%body128201%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128123128179%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128123128179%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128123128179%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128123128179%_))))))
                        (let () (declare (not safe)) (_%E128122128203%_))))))
                 (_%generate-match127685%_
                  (lambda (_%where127864%_
                           _%target127865%_
                           _%hd127866%_
                           _%mvars127867%_
                           _%K127868%_
                           _%E127869%_)
                    (letrec ((_%BUG127871%_
                              (lambda (_%q128113%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127677%_
                                         _%hd127866%_
                                         _%q128113%_))))
                             (_%recur127872%_
                              (lambda (_%e127963%_
                                       _%vars127964%_
                                       _%target127965%_
                                       _%E127966%_
                                       _%k127967%_)
                                (let* ((_%e127968127975%_ _%e127963%_)
                                       (_%E127970127979%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e127968127975%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K127971128101%_
                                        (lambda (_%body127982%_ _%tag127983%_)
                                          (let ((_%$e127985%_ _%tag127983%_))
                                            (if (eq? 'any _%$e127985%_)
                                                (_%k127967%_ _%vars127964%_)
                                                (if (eq? 'id _%$e127985%_)
                                                    (let ((__tmp129057
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target127965%_)))
                                                          (__tmp129053
                                                           (let ((__tmp129055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129056
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127680%_
                                    _%body127982%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127678%_
                             __tmp129056
                             _%target127965%_)))
                         (__tmp129054 (_%k127967%_ _%vars127964%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129055 __tmp129054 _%E127966%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129057 __tmp129053 _%E127966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e127985%_)
                                                        (_%k127967%_
                                                         (cons (cons _%body127982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target127965%_)
                       _%vars127964%_))
                (if (eq? 'cons _%$e127985%_)
                    (let ((_%$e127988%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd127989%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl127990%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129064
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target127965%_)))
                            (__tmp129058
                             (let ((__tmp129063
                                    (cons (cons (cons _%$e127988%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127679%_
                                                         _%target127965%_))
                                                      '()))
                                          '()))
                                   (__tmp129059
                                    (let ((__tmp129062
                                           (cons (cons (cons _%$hd127989%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e127988%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl127990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e127988%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129060
                                           (let* ((_%body127991127998%_
                                                   _%body127982%_)
                                                  (_%E127993128002%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body127991127998%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K127994128010%_
                                                   (lambda (_%tl128005%_
                                                            _%hd128006%_)
                                                     (let ((__tmp129061
                                                            (lambda (_%vars128008%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur127872%_
                         _%tl128005%_
                         _%vars128008%_
                         _%$tl127990%_
                         _%E127966%_
                         _%k127967%_)))))
               (declare (not safe))
               (_%recur127872%_
                _%hd128006%_
                _%vars127964%_
                _%$hd127989%_
                _%E127966%_
                __tmp129061)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body127991127998%_))
                                                 (let ((_%hd127995128013%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body127991127998%_)))
                                                       (_%tl127996128015%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body127991127998%_))))
                                                   (let* ((_%hd128018%_
                                                           _%hd127995128013%_)
                                                          (_%tl128020%_
                                                           _%tl127996128015%_))
                                                     (declare (not safe))
                                                     (_%K127994128010%_
                                                      _%tl128020%_
                                                      _%hd128018%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E127993128002%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129062
                                       __tmp129060))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129063
                                __tmp129059))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129064
                         __tmp129058
                         _%E127966%_)))
                    (if (eq? 'splice _%$e127985%_)
                        (let* ((_%body128021128028%_ _%body127982%_)
                               (_%E128023128032%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128021128028%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128024128083%_
                                (lambda (_%tl128035%_ _%hd128036%_)
                                  (let* ((_%rlen128038%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen127873%_
                                             _%tl128035%_)))
                                         (_%$target128040%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128042%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128044%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128046%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128048%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128050%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128052%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128054%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars127874%_
                                             _%hd128036%_)))
                                         (_%lvars128056%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128054%_)))
                                         (_%tlvars128058%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128054%_)))
                                         (_%linit128062%_
                                          (map (lambda (_%var128060%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128056%_)))
                                    (letrec ((_%make-loop128065%_
                                              (lambda (_%vars128069%_)
                                                (let ((__tmp129067
                                                       (cons (cons (cons _%$lp128046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129083
                                        (cons _%$hd128042%_ _%lvars128056%_))
                                       (__tmp129068
                                        (let ((__tmp129082
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128042%_)))
                                              (__tmp129073
                                               (let ((__tmp129081
                                                      (cons (cons (cons _%$lp-e128048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127679%_
                                   _%$hd128042%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129074
                                                      (let ((__tmp129080
                                                             (cons (cons (cons _%$lp-hd128050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128048%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128052%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128048%_))
                                             '()))
                                 '())))
                    (__tmp129075
                     (let ((__tmp129076
                            (lambda (_%hdvars128071%_)
                              (let ((__tmp129077
                                     (let ((__tmp129078
                                            (map (lambda (_%svar128073%_
                                                          _%lvar128074%_)
                                                   (let ((__tmp129079
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128073%_
                                                             _%hdvars128071%_
                                                             _%BUG127871%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129079
                                                      _%lvar128074%_)))
                                                 _%svars128054%_
                                                 _%lvars128056%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128052%_ __tmp129078))))
                                (declare (not safe))
                                (cons _%$lp128046%_ __tmp129077)))))
                       (declare (not safe))
                       (_%recur127872%_
                        _%hd128036%_
                        '()
                        _%$lp-hd128050%_
                        _%E127966%_
                        __tmp129076))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129080 __tmp129075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129081
                                                  __tmp129074)))
                                              (__tmp129069
                                               (let ((__tmp129072
                                                      (map (lambda (_%lvar128076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128077%_)
                     (cons (cons _%tlvar128077%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128076%_))
                                 '())))
                   _%lvars128056%_
                   _%tlvars128058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129070
                                                      (_%k127967%_
                                                       (let ((__tmp129071
                                                              (lambda (_%svar128079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128080%_
                               _%r128081%_)
                        (cons (cons _%svar128079%_ _%tlvar128080%_)
                              _%r128081%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129071
                  _%vars128069%_
                  _%svars128054%_
                  _%tlvars128058%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129072
                                                  __tmp129070))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129082
                                           __tmp129073
                                           __tmp129069))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129083
                                    __tmp129068))
                                 '()))
                     '()))
              (__tmp129065
               (let ((__tmp129066
                      (let ()
                        (declare (not safe))
                        (cons _%$target128040%_ _%linit128062%_))))
                 (declare (not safe))
                 (cons _%$lp128046%_ __tmp129066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129067
                                                   __tmp129065)))))
                                      (let ((_%body128067%_
                                             (let ((__tmp129085
                                                    (cons (cons (cons _%$target128040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128044%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target127965%_
                                 _%rlen128038%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129084
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur127872%_
                                                       _%tl128035%_
                                                       _%vars127964%_
                                                       _%$tl128044%_
                                                       _%E127966%_
                                                       _%make-loop128065%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129085
                                                __tmp129084))))
                                        (let ((__tmp129089
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target127965%_)))
                                              (__tmp129086
                                               (if (zero? _%rlen128038%_)
                                                   _%body128067%_
                                                   (let ((__tmp129087
                                                          (let ((__tmp129088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target127965%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129088 _%rlen128038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129087
                                                      _%body128067%_
                                                      _%E127966%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129089
                                           __tmp129086
                                           _%E127966%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128021128028%_))
                              (let ((_%hd128025128086%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128021128028%_)))
                                    (_%tl128026128088%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128021128028%_))))
                                (let* ((_%hd128091%_ _%hd128025128086%_)
                                       (_%tl128093%_ _%tl128026128088%_))
                                  (declare (not safe))
                                  (_%K128024128083%_
                                   _%tl128093%_
                                   _%hd128091%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128023128032%_))))
                        (if (eq? 'null _%$e127985%_)
                            (let ((__tmp129091
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target127965%_)))
                                  (__tmp129090 (_%k127967%_ _%vars127964%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129091
                               __tmp129090
                               _%E127966%_))
                            (if (eq? 'vector _%$e127985%_)
                                (let ((_%$e128095%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129096
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target127965%_)))
                                        (__tmp129092
                                         (let ((__tmp129094
                                                (cons (cons (cons _%$e128095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129095
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127679%_
                                    _%target127965%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129095))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129093
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur127872%_
                                                   _%body127982%_
                                                   _%vars127964%_
                                                   _%$e128095%_
                                                   _%E127966%_
                                                   _%k127967%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129094
                                            __tmp129093))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129096
                                     __tmp129092
                                     _%E127966%_)))
                                (if (eq? 'box _%$e127985%_)
                                    (let ((_%$e128097%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129101
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target127965%_)))
                                            (__tmp129097
                                             (let ((__tmp129099
                                                    (cons (cons (cons _%$e128097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129100
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127679%_
                                        _%target127965%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129100))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129098
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur127872%_
                                                       _%body127982%_
                                                       _%vars127964%_
                                                       _%$e128097%_
                                                       _%E127966%_
                                                       _%k127967%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129099
                                                __tmp129098))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129101
                                         __tmp129097
                                         _%E127966%_)))
                                    (if (eq? 'datum _%$e127985%_)
                                        (let ((_%$e128099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129107
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target127965%_)))
                                                (__tmp129102
                                                 (let ((__tmp129106
                                                        (cons (cons (cons _%$e128099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target127965%_))
                                  '()))
                      '()))
               (__tmp129103
                (let ((__tmp129105
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128099%_ _%body127982%_)))
                      (__tmp129104 (_%k127967%_ _%vars127964%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129105 __tmp129104 _%E127966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129106
                                                    __tmp129103))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129107
                                             __tmp129102
                                             _%E127966%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG127871%_
                                           _%e127963%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e127968127975%_))
                                      (let ((_%hd127972128104%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e127968127975%_)))
                                            (_%tl127973128106%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e127968127975%_))))
                                        (let* ((_%tag128109%_
                                                _%hd127972128104%_)
                                               (_%body128111%_
                                                _%tl127973128106%_))
                                          (declare (not safe))
                                          (_%K127971128101%_
                                           _%body128111%_
                                           _%tag128109%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E127970127979%_))))))
                             (_%splice-rlen127873%_
                              (lambda (_%e127925%_)
                                (let _%lp127927%_ ((_%e127929%_ _%e127925%_)
                                                   (_%n127930%_ '0))
                                  (let* ((_%e127931127938%_ _%e127929%_)
                                         (_%E127933127942%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127931127938%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127934127951%_
                                          (lambda (_%body127945%_
                                                   _%tag127946%_)
                                            (let ((_%$e127948%_ _%tag127946%_))
                                              (if (eq? 'splice _%$e127948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127677%_
                                                     _%where127864%_))
                                                  (if (eq? 'cons _%$e127948%_)
                                                      (let ((__tmp129109
                                                             (cdr _%body127945%_))
                                                            (__tmp129108
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n127930%_ '1))))
                (declare (not safe))
                (_%lp127927%_ __tmp129109 __tmp129108))
              _%n127930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127931127938%_))
                                        (let ((_%hd127935127954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127931127938%_)))
                                              (_%tl127936127956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127931127938%_))))
                                          (let* ((_%tag127959%_
                                                  _%hd127935127954%_)
                                                 (_%body127961%_
                                                  _%tl127936127956%_))
                                            (declare (not safe))
                                            (_%K127934127951%_
                                             _%body127961%_
                                             _%tag127959%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127933127942%_)))))))
                             (_%splice-vars127874%_
                              (lambda (_%e127881%_)
                                (let _%recur127883%_ ((_%e127885%_ _%e127881%_)
                                                      (_%vars127886%_ '()))
                                  (let* ((_%e127887127894%_ _%e127885%_)
                                         (_%E127889127898%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127887127894%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127890127913%_
                                          (lambda (_%body127901%_
                                                   _%tag127902%_)
                                            (let ((_%$e127904%_ _%tag127902%_))
                                              (if (eq? 'var _%$e127904%_)
                                                  (cons _%body127901%_
                                                        _%vars127886%_)
                                                  (if (or (eq? 'cons
                                                               _%$e127904%_)
                                                          (eq? 'splice
                                                               _%$e127904%_))
                                                      (let ((__tmp129112
                                                             (cdr _%body127901%_))
                                                            (__tmp129110
                                                             (let ((__tmp129111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body127901%_)))
                       (declare (not safe))
                       (_%recur127883%_ __tmp129111 _%vars127886%_))))
                (declare (not safe))
                (_%recur127883%_ __tmp129112 __tmp129110))
              (if (or (eq? 'vector _%$e127904%_) (eq? 'box _%$e127904%_))
                  (let ()
                    (declare (not safe))
                    (_%recur127883%_ _%body127901%_ _%vars127886%_))
                  _%vars127886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127887127894%_))
                                        (let ((_%hd127891127916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127887127894%_)))
                                              (_%tl127892127918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127887127894%_))))
                                          (let* ((_%tag127921%_
                                                  _%hd127891127916%_)
                                                 (_%body127923%_
                                                  _%tl127892127918%_))
                                            (declare (not safe))
                                            (_%K127890127913%_
                                             _%body127923%_
                                             _%tag127921%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127889127898%_)))))))
                             (_%make-body127875%_
                              (lambda (_%vars127877%_)
                                (cons _%K127868%_
                                      (map (lambda (_%mvar127879%_)
                                             (let ((__tmp129113
                                                    (car _%mvar127879%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129113
                                                _%vars127877%_
                                                _%BUG127871%_)))
                                           _%mvars127867%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur127872%_
                         _%hd127866%_
                         '()
                         _%target127865%_
                         _%E127869%_
                         _%make-body127875%_)))))
                 (_%parse-clause127686%_
                  (lambda (_%hd127758%_ _%ids127759%_)
                    (let _%recur127761%_ ((_%e127763%_ _%hd127758%_)
                                          (_%vars127764%_ '())
                                          (_%depth127765%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127763%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e127763%_))
                                (let () (values '(any) _%vars127764%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e127763%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Misplaced ellipsis"
                                         _%stx127677%_
                                         _%hd127758%_)))
                                    (if (let ((__tmp129114
                                               (lambda (_%id127770%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e127763%_
                                                    _%id127770%_)))))
                                          (declare (not safe))
                                          (__find __tmp129114 _%ids127759%_))
                                        (let ()
                                          (values (cons 'id _%e127763%_)
                                                  _%vars127764%_))
                                        (if (let ((__tmp129115
                                                   (lambda (_%var127773%_)
                                                     (let ((__tmp129116
                                                            (car _%var127773%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e127763%_
                                                        __tmp129116)))))
                                              (declare (not safe))
                                              (__find __tmp129115
                                                      _%vars127764%_))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Duplicate pattern variable"
                                                 _%stx127677%_
                                                 _%e127763%_)))
                                            (let ()
                                              (values (cons 'var _%e127763%_)
                                                      (cons (cons _%e127763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth127765%_)
                    _%vars127764%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127763%_))
                              (let ()
                                (let* ((_%e127777127784%_ _%e127763%_)
                                       (_%E127779127788%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e127777127784%_))))
                                       (_%E127778127849%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e127777127784%_))
                                              (let ((_%e127780127792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127777127784%_))))
                                                (let ((_%hd127781127795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e127780127792%_)))
                                                      (_%tl127782127797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e127780127792%_))))
                                                  (let* ((_%hd127800%_
                                                          _%hd127781127795%_)
                                                         (_%rest127802%_
                                                          _%tl127782127797%_))
                                                    (if '#t
                                                        (let* ((_%make-pair127817%_
                                                                (lambda (_%tag127804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd127805%_
                                 _%tl127806%_)
                          (let* ((_%hd-depth127808%_
                                  (if (eq? _%tag127804%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth127765%_ '1))
                                      _%depth127765%_))
                                 (_g129117_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur127761%_
                                     _%hd127805%_
                                     _%vars127764%_
                                     _%hd-depth127808%_))))
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
                              (let ((_%hd127810%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129117_ 0)))
                                    (_%vars127811%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129117_ 1))))
                                (let ((_g129119_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur127761%_
                                          _%tl127806%_
                                          _%vars127811%_
                                          _%depth127765%_))))
                                  (begin
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
                                    (let ((_%tl127813%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129119_ 0)))
                                          (_%vars127814%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129119_ 1))))
                                      (let ()
                                        (values (let ((__tmp129121
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd127810%_
                                                               _%tl127813%_))))
                                                  (declare (not safe))
                                                  (cons _%tag127804%_
                                                        __tmp129121))
                                                _%vars127814%_))))))))))
                       (_%e127818127825%_ _%rest127802%_)
                       (_%E127820127829%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair127817%_
                             'cons
                             _%hd127800%_
                             _%rest127802%_))))
                       (_%E127819127845%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127818127825%_))
                              (let ((_%e127821127833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e127818127825%_))))
                                (let ((_%hd127822127836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127821127833%_)))
                                      (_%tl127823127838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127821127833%_))))
                                  (let* ((_%rest-hd127841%_ _%hd127822127836%_)
                                         (_%rest-tl127843%_
                                          _%tl127823127838%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd127841%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127817%_
                                               'splice
                                               _%hd127800%_
                                               _%rest-tl127843%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127817%_
                                               'cons
                                               _%hd127800%_
                                               _%rest127802%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127820127829%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E127820127829%_))))))
                  (let () (declare (not safe)) (_%E127819127845%_)))
                (let () (declare (not safe)) (_%E127779127788%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E127779127788%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E127778127849%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127763%_))
                                  (let () (values '(null) _%vars127764%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127763%_))
                                      (let ()
                                        (let ((_g129122_
                                               (let ((__tmp129124
                                                      (vector->list
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e127763%_)))))
                                                 (declare (not safe))
                                                 (_%recur127761%_
                                                  __tmp129124
                                                  _%vars127764%_
                                                  _%depth127765%_))))
                                          (begin
                                            (let ((_g129123_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129122_)
                                                         (##vector-length
                                                          _g129122_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129123_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129123_)))
                                            (let ((_%e127855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129122_
                                                      0)))
                                                  (_%vars127856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129122_
                                                      1))))
                                              (values (cons 'vector
                                                            _%e127855%_)
                                                      _%vars127856%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127763%_))
                                          (let ()
                                            (let ((_g129125_
                                                   (let ((__tmp129127
                                                          (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#syntax-e _%e127763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%recur127761%_
                                                      __tmp129127
                                                      _%vars127764%_
                                                      _%depth127765%_))))
                                              (begin
                                                (let ((_g129126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g129125_)
                                                             (##vector-length
                                                              _g129125_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g129126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g129126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%e127859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129125_
                                                          0)))
                                                      (_%vars127860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129125_
                                                          1))))
                                                  (values (cons 'box
                                                                _%e127859%_)
                                                          _%vars127860%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127763%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e127763%_)))
                _%vars127764%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad pattern"
                                                   _%stx127677%_
                                                   _%e127763%_)))))))))))))
          (let* ((_%e127687127700%_ _%stx127677%_)
                 (_%E127689127704%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127687127700%_))))
                 (_%E127688127754%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127687127700%_))
                        (let ((_%e127690127708%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127687127700%_))))
                          (let ((_%hd127691127711%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127690127708%_)))
                                (_%tl127692127713%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127690127708%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127692127713%_))
                                (let ((_%e127693127716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127692127713%_))))
                                  (let ((_%hd127694127719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127693127716%_)))
                                        (_%tl127695127721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127693127716%_))))
                                    (let ((_%expr127724%_ _%hd127694127719%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127695127721%_))
                                          (let ((_%e127696127726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127695127721%_))))
                                            (let ((_%hd127697127729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127696127726%_)))
                                                  (_%tl127698127731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127696127726%_))))
                                              (let* ((_%ids127734%_
                                                      _%hd127697127729%_)
                                                     (_%clauses127736%_
                                                      _%tl127698127731%_))
                                                (if '#t
                                                    (if (let ((__tmp129128
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids127734%_))))
                  (declare (not safe))
                  (not __tmp129128))
                (let ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad template identifier list"
                     _%stx127677%_
                     _%ids127734%_)))
                (if (let ((__tmp129129
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses127736%_))))
                      (declare (not safe))
                      (not __tmp129129))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; clauses expected"
                         _%stx127677%_)))
                    (let ()
                      (let* ((_%ids127741%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids127734%_)))
                             (_%clauses127743%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses127736%_)))
                             (_%clause-ids127745%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses127743%_)))
                             (_%E127747%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target127749%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first127751%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses127743%_))
                                  _%E127747%_
                                  (car _%clause-ids127745%_))))
                        (let ((__tmp129131
                               (let ((__tmp129132
                                      (let ((__tmp129134
                                             (let ((__tmp129138
                                                    (cons (cons (cons _%E127747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129140 (cons _%target127749%_ '()))
                                    (__tmp129139
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target127749%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129140
                                 __tmp129139))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129135
                                                    (let ((__tmp129137
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings127682%_
                                                              _%target127749%_
                                                              _%ids127741%_
                                                              _%clauses127743%_
                                                              _%clause-ids127745%_
                                                              _%E127747%_)))
                                                          (__tmp129136
                                                           (cons _%first127751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr127724%_ '()))))
              (declare (not safe))
              (_%generate-body127683%_ __tmp129137 __tmp129136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129138
                                                __tmp129135)))
                                            (__tmp129133
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx127677%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129134
                                         __tmp129133))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129132)))
                              (__tmp129130
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx127677%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129131 __tmp129130))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E127689127704%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E127689127704%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E127689127704%_)))))
                        (let () (declare (not safe)) (_%E127689127704%_))))))
            (let () (declare (not safe)) (_%E127688127754%_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128402%_)
        (let* ((_%identifier=?128404%_ 'free-identifier=?)
               (_%unwrap-e128406%_ 'syntax-e)
               (_%wrap-e128408%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128402%_
           _%identifier=?128404%_
           _%unwrap-e128406%_
           _%wrap-e128408%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128410%_ _%identifier=?128411%_)
        (let* ((_%unwrap-e128413%_ 'syntax-e) (_%wrap-e128415%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128410%_
           _%identifier=?128411%_
           _%unwrap-e128413%_
           _%wrap-e128415%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128417%_ _%identifier=?128418%_ _%unwrap-e128419%_)
        (let ((_%wrap-e128421%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128417%_
           _%identifier=?128418%_
           _%unwrap-e128419%_
           _%wrap-e128421%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129142_
        (let ((_g129141_ (let () (declare (not safe)) (##length _g129142_))))
          (cond ((let () (declare (not safe)) (##fx= _g129141_ 1))
                 (apply (lambda (_%stx128402%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx128402%_)))
                        _g129142_))
                ((let () (declare (not safe)) (##fx= _g129141_ 2))
                 (apply (lambda (_%stx128410%_ _%identifier=?128411%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx128410%_
                             _%identifier=?128411%_)))
                        _g129142_))
                ((let () (declare (not safe)) (##fx= _g129141_ 3))
                 (apply (lambda (_%stx128417%_
                                 _%identifier=?128418%_
                                 _%unwrap-e128419%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx128417%_
                             _%identifier=?128418%_
                             _%unwrap-e128419%_)))
                        _g129142_))
                ((let () (declare (not safe)) (##fx= _g129141_ 4))
                 (apply (lambda (_%stx128423%_
                                 _%identifier=?128424%_
                                 _%unwrap-e128425%_
                                 _%wrap-e128426%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx128423%_
                             _%identifier=?128424%_
                             _%unwrap-e128425%_
                             _%wrap-e128426%_)))
                        _g129142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129142_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127674%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127674%_))
            (let ((__tmp129143
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127674%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129143 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127632%_ . _%rest127633%_)
        (let ((_%len127635%_ (length _%hd127632%_)))
          (let _%lp127637%_ ((_%rest127639%_ _%rest127633%_))
            (let* ((_%rest127640127648%_ _%rest127639%_)
                   (_%else127642127656%_ (lambda () '#!void))
                   (_%K127644127662%_
                    (lambda (_%rest127659%_ _%hd127660%_)
                      (if (let ((__tmp129144 (length _%hd127660%_)))
                            (declare (not safe))
                            (##fx= _%len127635%_ __tmp129144))
                          (let ()
                            (declare (not safe))
                            (_%lp127637%_ _%rest127659%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127660%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127640127648%_))
                  (let ((_%hd127645127665%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127640127648%_)))
                        (_%tl127646127667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127640127648%_))))
                    (let* ((_%hd127670%_ _%hd127645127665%_)
                           (_%rest127672%_ _%tl127646127667%_))
                      (declare (not safe))
                      (_%K127644127662%_ _%rest127672%_ _%hd127670%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127587%_ _%n127588%_)
        (let _%lp127590%_ ((_%rest127592%_ _%stx127587%_) (_%r127593%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127592%_))
              (let* ((_%g127594127601%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127592%_)))
                     (_%E127596127605%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127594127601%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127597127611%_
                      (lambda (_%rest127608%_ _%hd127609%_)
                        (let ((__tmp129145 (cons _%hd127609%_ _%r127593%_)))
                          (declare (not safe))
                          (_%lp127590%_ _%rest127608%_ __tmp129145)))))
                (if (let () (declare (not safe)) (##pair? _%g127594127601%_))
                    (let ((_%hd127598127614%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127594127601%_)))
                          (_%tl127599127616%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127594127601%_))))
                      (let* ((_%hd127619%_ _%hd127598127614%_)
                             (_%rest127621%_ _%tl127599127616%_))
                        (declare (not safe))
                        (_%K127597127611%_ _%rest127621%_ _%hd127619%_)))
                    (let () (declare (not safe)) (_%E127596127605%_))))
              (let _%lp127623%_ ((_%n127625%_ _%n127588%_)
                                 (_%l127626%_ _%r127593%_)
                                 (_%r127627%_ _%rest127592%_))
                (if (let () (declare (not safe)) (null? _%l127626%_))
                    (let () (values _%l127626%_ _%r127627%_))
                    (if (fxpositive? _%n127625%_)
                        (let ()
                          (let ((__tmp129148
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%n127625%_ '1)))
                                (__tmp129147 (cdr _%l127626%_))
                                (__tmp129146
                                 (cons (car _%l127626%_) _%r127627%_)))
                            (declare (not safe))
                            (_%lp127623%_
                             __tmp129148
                             __tmp129147
                             __tmp129146)))
                        (let ()
                          (values (reverse _%l127626%_) _%r127627%_)))))))))))
