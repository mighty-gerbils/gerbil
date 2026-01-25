(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1769382895)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp145286 (list gx#expander::t))
            (__tmp145285 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp145286
         '(id depth)
         __tmp145285
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args145282%_
        (apply make-instance gx#syntax-pattern::t _%$args145282%_)))
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
      (lambda (_%self145268%_ _%stx145269%_)
        (let ((_%self145272%_ _%self145268%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx145269%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx144735%_)
        (letrec ((_%generate144737%_
                  (lambda (_%e144977%_)
                    (letrec ((_%BUG144979%_
                              (lambda (_%q145144%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx144735%_
                                         _%e144977%_
                                         _%q145144%_))))
                             (_%local-pattern-e144980%_
                              (lambda (_%pat145142%_)
                                (let ((__tmp145287
                                       (##structure-ref
                                        _%pat145142%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp145287))))
                             (_%getvar144981%_
                              (lambda (_%q145139%_ _%vars145140%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q145139%_
                                   _%vars145140%_
                                   _%BUG144979%_))))
                             (_%getarg144982%_
                              (lambda (_%arg145105%_ _%vars145106%_)
                                (let* ((_%arg145107145114%_ _%arg145105%_)
                                       (_%E145109145118%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg145107145114%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K145110145127%_
                                        (lambda (_%e145121%_ _%tag145122%_)
                                          (let ((_%$e145124%_ _%tag145122%_))
                                            (if (eq? 'ref _%$e145124%_)
                                                (_%getvar144981%_
                                                 _%e145121%_
                                                 _%vars145106%_)
                                                (if (eq? 'pattern _%$e145124%_)
                                                    (_%local-pattern-e144980%_
                                                     _%e145121%_)
                                                    (_%BUG144979%_
                                                     _%arg145105%_)))))))
                                  (if (pair? _%arg145107145114%_)
                                      (let ((_%hd145111145130%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg145107145114%_)))
                                            (_%tl145112145132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg145107145114%_))))
                                        (let* ((_%tag145135%_
                                                _%hd145111145130%_)
                                               (_%e145137%_
                                                _%tl145112145132%_))
                                          (_%K145110145127%_
                                           _%e145137%_
                                           _%tag145135%_)))
                                      (_%E145109145118%_))))))
                      (let _%recur144984%_ ((_%e144986%_ _%e144977%_)
                                            (_%vars144987%_ '()))
                        (let* ((_%e144988144995%_ _%e144986%_)
                               (_%E144990144999%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e144988144995%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K144991145093%_
                                (lambda (_%body145002%_ _%tag145003%_)
                                  (let ((_%$e145005%_ _%tag145003%_))
                                    (if (eq? 'datum _%$e145005%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body145002%_))
                                        (if (eq? 'term _%$e145005%_)
                                            (let ((_%id145008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body145002%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id145008%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks145011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id145008%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks145011%_)
                                                        (let ((__tmp145288
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body145002%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp145288))
                (let ((__tmp145290
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body145002%_)))
                      (__tmp145289
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body145002%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp145290
                   __tmp145289
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id145008%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body145002%_))
                                                      (_%BUG144979%_
                                                       _%e144986%_))))
                                            (if (eq? 'pattern _%$e145005%_)
                                                (_%local-pattern-e144980%_
                                                 _%body145002%_)
                                                (if (eq? 'ref _%$e145005%_)
                                                    (_%getvar144981%_
                                                     _%body145002%_
                                                     _%vars144987%_)
                                                    (if (eq? 'cons
                                                             _%$e145005%_)
                                                        (let ((__tmp145292
                                                               (_%recur144984%_
                                                                (car _%body145002%_)
                                                                _%vars144987%_))
                                                              (__tmp145291
                                                               (_%recur144984%_
                                                                (cdr _%body145002%_)
                                                                _%vars144987%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp145292
                                                           __tmp145291))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e145005%_)
                    (let ((__tmp145293
                           (_%recur144984%_ _%body145002%_ _%vars144987%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp145293))
                    (if (eq? 'box _%$e145005%_)
                        (let ((__tmp145294
                               (_%recur144984%_
                                _%body145002%_
                                _%vars144987%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp145294))
                        (if (eq? 'splice _%$e145005%_)
                            (let* ((_%body145014145025%_ _%body145002%_)
                                   (_%E145016145029%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body145014145025%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K145017145067%_
                                    (lambda (_%args145032%_
                                             _%iv145033%_
                                             _%hd145034%_
                                             _%depth145035%_)
                                      (let* ((_%targets145041%_
                                              (map (lambda (_%g145036145038%_)
                                                     (_%getarg144982%_
                                                      _%g145036145038%_
                                                      _%vars144987%_))
                                                   _%args145032%_))
                                             (_%fold-in145043%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args145032%_)))
                                             (_%fold-out145045%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args145047%_
                                              (let ((__tmp145295
                                                     (cons _%fold-out145045%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp145295
                                                 _%fold-in145043%_)))
                                             (_%lambda-body145064%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth145035%_ '1))
                                                  (let ((_%r-args145055%_
                                                         (map (lambda (_%arg145049%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg145049%_)))
                      _%args145032%_))
                (_%r-vars145056%_
                 (let ((__tmp145296
                        (lambda (_%arg145051%_ _%var145052%_ _%r145053%_)
                          (cons (cons (cdr _%arg145051%_) _%var145052%_)
                                _%r145053%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp145296
                    _%vars144987%_
                    _%args145032%_
                    _%fold-in145043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur144984%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth145035%_ '1))
                         (cons _%hd145034%_
                               (cons (cons 'var _%fold-out145045%_)
                                     _%r-args145055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars145056%_))
                                                  (let* ((_%hd-vars145062%_
                                                          (let ((__tmp145297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg145058%_ _%var145059%_ _%r145060%_)
                           (cons (cons (cdr _%arg145058%_) _%var145059%_)
                                 _%r145060%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp145297
                     _%vars144987%_
                     _%args145032%_
                     _%fold-in145043%_)))
                 (__tmp145298
                  (_%recur144984%_ _%hd145034%_ _%hd-vars145062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp145298
                                                     _%fold-out145045%_)))))
                                        (let ((__tmp145302
                                               (if (let ((__tmp145303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets145041%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp145303 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets145041%_))
                                                   '#!void))
                                              (__tmp145299
                                               (let ((__tmp145301
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args145047%_
                                                         _%lambda-body145064%_)))
                                                     (__tmp145300
                                                      (_%recur144984%_
                                                       _%iv145033%_
                                                       _%vars144987%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp145301
                                                  __tmp145300
                                                  _%targets145041%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp145302
                                           __tmp145299))))))
                              (if (pair? _%body145014145025%_)
                                  (let ((_%hd145018145070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body145014145025%_)))
                                        (_%tl145019145072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body145014145025%_))))
                                    (let ((_%depth145075%_ _%hd145018145070%_))
                                      (if (pair? _%tl145019145072%_)
                                          (let ((_%hd145020145077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl145019145072%_)))
                                                (_%tl145021145079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl145019145072%_))))
                                            (let ((_%hd145082%_
                                                   _%hd145020145077%_))
                                              (if (pair? _%tl145021145079%_)
                                                  (let ((_%hd145022145084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145021145079%_)))
                                                        (_%tl145023145086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145021145079%_))))
                                                    (let* ((_%iv145089%_
                                                            _%hd145022145084%_)
                                                           (_%args145091%_
                                                            _%tl145023145086%_))
                                                      (_%K145017145067%_
                                                       _%args145091%_
                                                       _%iv145089%_
                                                       _%hd145082%_
                                                       _%depth145075%_)))
                                                  (_%E145016145029%_))))
                                          (_%E145016145029%_))))
                                  (_%E145016145029%_)))
                            (if (eq? 'var _%$e145005%_)
                                _%body145002%_
                                (_%BUG144979%_ _%e144986%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e144988144995%_)
                              (let ((_%hd144992145096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144988144995%_)))
                                    (_%tl144993145098%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144988144995%_))))
                                (let* ((_%tag145101%_ _%hd144992145096%_)
                                       (_%body145103%_ _%tl144993145098%_))
                                  (_%K144991145093%_
                                   _%body145103%_
                                   _%tag145101%_)))
                              (_%E144990144999%_)))))))
                 (_%parse144738%_
                  (lambda (_%e144779%_)
                    (letrec ((_%make-cons144781%_
                              (lambda (_%hd144969%_ _%tl144970%_)
                                (let ((_g145304_ _%hd144969%_)
                                      (_g145306_ _%tl144970%_))
                                  (begin
                                    (let ((_g145305_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145304_)
                                                 (##values-length _g145304_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145305_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145305_)))
                                    (let ((_g145307_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145306_)
                                                 (##values-length _g145306_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145307_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145307_)))
                                    (let ((_%hd-e144972%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145304_ 0)))
                                          (_%hd-vars144973%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145304_ 1))))
                                      (let ((_%tl-e144974%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145306_ 0)))
                                            (_%tl-vars144975%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145306_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e144972%_
                                                            _%tl-e144974%_))
                                                (append _%hd-vars144973%_
                                                        _%tl-vars144975%_))))))))
                             (_%make-splice144782%_
                              (lambda (_%where144905%_
                                       _%depth144906%_
                                       _%hd144907%_
                                       _%tl144908%_)
                                (let ((_g145308_ _%hd144907%_)
                                      (_g145310_ _%tl144908%_))
                                  (begin
                                    (let ((_g145309_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145308_)
                                                 (##values-length _g145308_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145309_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145309_)))
                                    (let ((_g145311_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145310_)
                                                 (##values-length _g145310_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145311_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145311_)))
                                    (let ((_%hd-e144910%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145308_ 0)))
                                          (_%hd-vars144911%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145308_ 1))))
                                      (let ((_%tl-e144912%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145310_ 0)))
                                            (_%tl-vars144913%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145310_ 1))))
                                        (let _%lp144915%_ ((_%rest144917%_
                                                            _%hd-vars144911%_)
                                                           (_%targets144918%_
                                                            '())
                                                           (_%vars144919%_
                                                            _%tl-vars144913%_))
                                          (let* ((_%rest144920144930%_
                                                  _%rest144917%_)
                                                 (_%else144922144938%_
                                                  (lambda ()
                                                    (if (null? _%targets144918%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx144735%_
                                                           _%where144905%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth144906%_
                                    (cons _%hd-e144910%_
                                          (cons _%tl-e144912%_
                                                _%targets144918%_))))
                        _%vars144919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K144924144950%_
                                                  (lambda (_%rest144941%_
                                                           _%hd-pat144942%_
                                                           _%hd-depth*144943%_)
                                                    (let ((_%hd-depth144945%_
                                                           (fx- _%hd-depth*144943%_
                                                                _%depth144906%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth144945%_))
                                                          (_%lp144915%_
                                                           _%rest144941%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat144942%_)
                         _%targets144918%_)
                   (cons (cons _%hd-depth144945%_ _%hd-pat144942%_)
                         _%vars144919%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth144945%_))
                      (_%lp144915%_
                       _%rest144941%_
                       (cons (cons 'pattern _%hd-pat144942%_)
                             _%targets144918%_)
                       _%vars144919%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx144735%_
                         _%where144905%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest144920144930%_)
                                                (let ((_%hd144925144953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest144920144930%_)))
                                                      (_%tl144926144955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest144920144930%_))))
                                                  (if (pair? _%hd144925144953%_)
                                                      (let ((_%hd144927144958%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd144925144953%_)))
                    (_%tl144928144960%_
                     (let () (declare (not safe)) (##cdr _%hd144925144953%_))))
                (let* ((_%hd-depth*144963%_ _%hd144927144958%_)
                       (_%hd-pat144965%_ _%tl144928144960%_)
                       (_%rest144967%_ _%tl144926144955%_))
                  (_%K144924144950%_
                   _%rest144967%_
                   _%hd-pat144965%_
                   _%hd-depth*144963%_)))
              (_%else144922144938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144922144938%_))))))))))
                             (_%recur144783%_
                              (lambda (_%e144788%_ _%is-e?144789%_)
                                (if (_%is-e?144789%_ _%e144788%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx144735%_))
                                    (if (gx#syntax-local-pattern? _%e144788%_)
                                        (let* ((_%pat144793%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e144788%_)))
                                               (_%depth144795%_
                                                (##structure-ref
                                                 _%pat144793%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth144795%_)
                                              (values (cons 'ref _%pat144793%_)
                                                      (cons (cons _%depth144795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat144793%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat144793%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e144788%_))
                                            (values (cons 'term _%e144788%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e144788%_))
                                                (let* ((_%e144799144806%_
                                                        _%e144788%_)
                                                       (_%E144801144810%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e144799144806%_))))
                                                       (_%E144800144892%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e144799144806%_))
                      (let ((_%e144802144814%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144799144806%_))))
                        (let ((_%hd144803144817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144802144814%_)))
                              (_%tl144804144819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144802144814%_))))
                          (let* ((_%hd144822%_ _%hd144803144817%_)
                                 (_%rest144824%_ _%tl144804144819%_))
                            (if (_%is-e?144789%_ _%hd144822%_)
                                (let* ((_%e144825144832%_ _%rest144824%_)
                                       (_%E144827144836%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx144735%_
                                             _%e144788%_))))
                                       (_%E144826144850%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e144825144832%_))
                                              (let ((_%e144828144840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e144825144832%_))))
                                                (let ((_%hd144829144843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144828144840%_)))
                                                      (_%tl144830144845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144828144840%_))))
                                                  (let ((_%rest144848%_
                                                         _%hd144829144843%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144830144845%_))
                                                        (_%recur144783%_
                                                         _%rest144848%_
                                                         false)
                                                        (_%E144827144836%_)))))
                                              (_%E144827144836%_)))))
                                  (_%E144826144850%_))
                                (let _%lp144854%_ ((_%rest144856%_
                                                    _%rest144824%_)
                                                   (_%depth144857%_ '0))
                                  (let* ((_%e144858144865%_ _%rest144856%_)
                                         (_%E144860144869%_
                                          (lambda ()
                                            (if (fxpositive? _%depth144857%_)
                                                (_%make-splice144782%_
                                                 _%e144788%_
                                                 _%depth144857%_
                                                 (_%recur144783%_
                                                  _%hd144822%_
                                                  _%is-e?144789%_)
                                                 (_%recur144783%_
                                                  _%rest144856%_
                                                  _%is-e?144789%_))
                                                (_%make-cons144781%_
                                                 (_%recur144783%_
                                                  _%hd144822%_
                                                  _%is-e?144789%_)
                                                 (_%recur144783%_
                                                  _%rest144856%_
                                                  _%is-e?144789%_)))))
                                         (_%E144859144888%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e144858144865%_))
                                                (let ((_%e144861144873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e144858144865%_))))
                                                  (let ((_%hd144862144876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144861144873%_)))
                                                        (_%tl144863144878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144861144873%_))))
                                                    (let* ((_%rest-hd144881%_
                                                            _%hd144862144876%_)
                                                           (_%rest-tl144883%_
                                                            _%tl144863144878%_))
                                                      (if (_%is-e?144789%_
                                                           _%rest-hd144881%_)
                                                          (_%lp144854%_
                                                           _%rest-tl144883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth144857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth144857%_)
                      (_%make-splice144782%_
                       _%e144788%_
                       _%depth144857%_
                       (_%recur144783%_ _%hd144822%_ _%is-e?144789%_)
                       (_%recur144783%_ _%rest144856%_ _%is-e?144789%_))
                      (_%make-cons144781%_
                       (_%recur144783%_ _%hd144822%_ _%is-e?144789%_)
                       (_%recur144783%_ _%rest144856%_ _%is-e?144789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E144860144869%_)))))
                                    (_%E144859144888%_)))))))
                      (_%E144801144810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144800144892%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e144788%_))
                                                    (let ((_g145312_
                                                           (_%recur144783%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e144788%_)))
                    _%is-e?144789%_)))
              (begin
                (let ((_g145313_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g145312_)
                             (##values-length _g145312_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g145313_ 2)))
                      (error "Context expects 2 values" _g145313_)))
                (let ((_%e144897%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145312_ 0)))
                      (_%vars144898%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145312_ 1))))
                  (values (cons 'vector _%e144897%_) _%vars144898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e144788%_))
                                                        (let ((_g145314_
                                                               (_%recur144783%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e144788%_)))
                        _%is-e?144789%_)))
                  (begin
                    (let ((_g145315_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g145314_)
                                 (##values-length _g145314_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g145315_ 2)))
                          (error "Context expects 2 values" _g145315_)))
                    (let ((_%e144901%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g145314_ 0)))
                          (_%vars144902%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g145314_ 1))))
                      (values (cons 'box _%e144901%_) _%vars144902%_))))
                (values (cons 'datum _%e144788%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g145316_
                             (_%recur144783%_ _%e144779%_ gx#ellipsis?)))
                        (begin
                          (let ((_g145317_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g145316_)
                                       (##values-length _g145316_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g145317_ 2)))
                                (error "Context expects 2 values" _g145317_)))
                          (let ((_%tree144785%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g145316_ 0)))
                                (_%vars144786%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g145316_ 1))))
                            (if (null? _%vars144786%_)
                                _%tree144785%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx144735%_
                                   _%vars144786%_))))))))))
          (let* ((_%e144739144749%_ _%stx144735%_)
                 (_%E144741144753%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx144735%_))))
                 (_%E144740144775%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144739144749%_))
                        (let ((_%e144742144757%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144739144749%_))))
                          (let ((_%hd144743144760%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144742144757%_)))
                                (_%tl144744144762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144742144757%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144744144762%_))
                                (let ((_%e144745144765%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144744144762%_))))
                                  (let ((_%hd144746144768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144745144765%_)))
                                        (_%tl144747144770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144745144765%_))))
                                    (let ((_%form144773%_ _%hd144746144768%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144747144770%_))
                                          (let ((__tmp145319
                                                 (_%generate144737%_
                                                  (_%parse144738%_
                                                   _%form144773%_)))
                                                (__tmp145318
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx144735%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp145319
                                             __tmp145318))
                                          (_%E144741144753%_)))))
                                (_%E144741144753%_))))
                        (_%E144741144753%_)))))
            (_%E144740144775%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx143984%_
               _%identifier=?143985%_
               _%unwrap-e143986%_
               _%wrap-e143987%_)
        (letrec ((_%generate-bindings143989%_
                  (lambda (_%target144599%_
                           _%ids144600%_
                           _%clauses144601%_
                           _%clause-ids144602%_
                           _%E144603%_)
                    (letrec ((_%generate1144605%_
                              (lambda (_%clause144702%_
                                       _%clause-id144703%_
                                       _%E144704%_)
                                (cons (cons _%clause-id144703%_ '())
                                      (cons (let ((__tmp145321
                                                   (cons _%target144599%_ '()))
                                                  (__tmp145320
                                                   (_%generate-clause143991%_
                                                    _%target144599%_
                                                    _%ids144600%_
                                                    _%clause144702%_
                                                    _%E144704%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp145321
                                               __tmp145320))
                                            '())))))
                      (let _%lp144607%_ ((_%rest144609%_ _%clauses144601%_)
                                         (_%rest-ids144610%_
                                          _%clause-ids144602%_)
                                         (_%bindings144611%_ '()))
                        (let* ((_%rest144612144620%_ _%rest144609%_)
                               (_%else144614144628%_
                                (lambda () _%bindings144611%_))
                               (_%K144616144690%_
                                (lambda (_%rest144631%_ _%clause144632%_)
                                  (let* ((_%rest-ids144633144640%_
                                          _%rest-ids144610%_)
                                         (_%E144635144644%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids144633144640%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K144636144678%_
                                          (lambda (_%rest-ids144647%_
                                                   _%clause-id144648%_)
                                            (let* ((_%rest-ids144649144657%_
                                                    _%rest-ids144647%_)
                                                   (_%else144651144665%_
                                                    (lambda ()
                                                      (cons (_%generate1144605%_
                                                             _%clause144632%_
                                                             _%clause-id144648%_
                                                             _%E144603%_)
                                                            _%bindings144611%_)))
                                                   (_%K144653144670%_
                                                    (lambda (_%next-clause-id144668%_)
                                                      (_%lp144607%_
                                                       _%rest144631%_
                                                       _%rest-ids144647%_
                                                       (cons (_%generate1144605%_
                                                              _%clause144632%_
                                                              _%clause-id144648%_
                                                              _%next-clause-id144668%_)
                                                             _%bindings144611%_)))))
                                              (if (pair? _%rest-ids144649144657%_)
                                                  (let* ((_%hd144654144673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids144649144657%_)))
                                                         (_%next-clause-id144676%_
                                                          _%hd144654144673%_))
                                                    (_%K144653144670%_
                                                     _%next-clause-id144676%_))
                                                  (_%else144651144665%_))))))
                                    (if (pair? _%rest-ids144633144640%_)
                                        (let ((_%hd144637144681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids144633144640%_)))
                                              (_%tl144638144683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids144633144640%_))))
                                          (let* ((_%clause-id144686%_
                                                  _%hd144637144681%_)
                                                 (_%rest-ids144688%_
                                                  _%tl144638144683%_))
                                            (_%K144636144678%_
                                             _%rest-ids144688%_
                                             _%clause-id144686%_)))
                                        (_%E144635144644%_))))))
                          (if (pair? _%rest144612144620%_)
                              (let ((_%hd144617144693%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest144612144620%_)))
                                    (_%tl144618144695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest144612144620%_))))
                                (let* ((_%clause144698%_ _%hd144617144693%_)
                                       (_%rest144700%_ _%tl144618144695%_))
                                  (_%K144616144690%_
                                   _%rest144700%_
                                   _%clause144698%_)))
                              (_%else144614144628%_)))))))
                 (_%generate-body143990%_
                  (lambda (_%bindings144559%_ _%body144560%_)
                    (let _%recur144562%_ ((_%rest144564%_ _%bindings144559%_))
                      (let* ((_%rest144565144573%_ _%rest144564%_)
                             (_%else144567144581%_ (lambda () _%body144560%_))
                             (_%K144569144587%_
                              (lambda (_%rest144584%_ _%hd144585%_)
                                (let ((__tmp145323 (cons _%hd144585%_ '()))
                                      (__tmp145322
                                       (_%recur144562%_ _%rest144584%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp145323
                                   __tmp145322)))))
                        (if (pair? _%rest144565144573%_)
                            (let ((_%hd144570144590%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144565144573%_)))
                                  (_%tl144571144592%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144565144573%_))))
                              (let* ((_%hd144595%_ _%hd144570144590%_)
                                     (_%rest144597%_ _%tl144571144592%_))
                                (_%K144569144587%_
                                 _%rest144597%_
                                 _%hd144595%_)))
                            (_%else144567144581%_))))))
                 (_%generate-clause143991%_
                  (lambda (_%target144422%_
                           _%ids144423%_
                           _%clause144424%_
                           _%E144425%_)
                    (letrec ((_%generate1144427%_
                              (lambda (_%hd144514%_
                                       _%fender144515%_
                                       _%body144516%_)
                                (let ((_g145324_
                                       (_%parse-clause143993%_
                                        _%hd144514%_
                                        _%ids144423%_)))
                                  (begin
                                    (let ((_g145325_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145324_)
                                                 (##values-length _g145324_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145325_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145325_)))
                                    (let ((_%e144518%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145324_ 0)))
                                          (_%mvars144519%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145324_ 1))))
                                      (let* ((_%pvars144521%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars144519%_))))
                                             (_%E144523%_
                                              (cons _%E144425%_
                                                    (cons _%target144422%_
                                                          '())))
                                             (_%K144556%_
                                              (let ((__tmp145326
                                                     (let ((__tmp145328
                                                            (map (lambda (_%mvar144525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar144526%_)
                           (let* ((_%mvar144527144534%_ _%mvar144525%_)
                                  (_%E144529144538%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar144527144534%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K144530144544%_
                                   (lambda (_%depth144541%_ _%id144542%_)
                                     (cons _%id144542%_
                                           (cons (let ((__tmp145330
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id144542%_)))
                                                       (__tmp145329
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar144526%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp145330
                                                    __tmp145329
                                                    _%depth144541%_))
                                                 '())))))
                             (if (pair? _%mvar144527144534%_)
                                 (let ((_%hd144531144547%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar144527144534%_)))
                                       (_%tl144532144549%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar144527144534%_))))
                                   (let* ((_%id144552%_ _%hd144531144547%_)
                                          (_%depth144554%_ _%tl144532144549%_))
                                     (_%K144530144544%_
                                      _%depth144554%_
                                      _%id144552%_)))
                                 (_%E144529144538%_))))
                         _%mvars144519%_
                         _%pvars144521%_))
                   (__tmp145327
                    (if (eq? _%fender144515%_ '#t)
                        _%body144516%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender144515%_
                           _%body144516%_
                           _%E144523%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp145328 __tmp145327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars144521%_
                                                 __tmp145326))))
                                        (_%generate-match143992%_
                                         _%hd144514%_
                                         _%target144422%_
                                         _%e144518%_
                                         _%mvars144519%_
                                         _%K144556%_
                                         _%E144523%_))))))))
                      (let* ((_%e144428144448%_ _%clause144424%_)
                             (_%E144437144452%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e144428144448%_))))
                             (_%E144430144486%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144428144448%_))
                                    (let ((_%e144438144456%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144428144448%_))))
                                      (let ((_%hd144439144459%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144438144456%_)))
                                            (_%tl144440144461%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144438144456%_))))
                                        (let ((_%hd144464%_
                                               _%hd144439144459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144440144461%_))
                                              (let ((_%e144441144466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144440144461%_))))
                                                (let ((_%hd144442144469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144441144466%_)))
                                                      (_%tl144443144471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144441144466%_))))
                                                  (let ((_%fender144474%_
                                                         _%hd144442144469%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144443144471%_))
                                                        (let ((_%e144444144476%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl144443144471%_))))
                  (let ((_%hd144445144479%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144444144476%_)))
                        (_%tl144446144481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144444144476%_))))
                    (let ((_%body144484%_ _%hd144445144479%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144446144481%_))
                          (_%generate1144427%_
                           _%hd144464%_
                           _%fender144474%_
                           _%body144484%_)
                          (_%E144437144452%_)))))
                (_%E144437144452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E144437144452%_)))))
                                    (_%E144437144452%_))))
                             (_%E144429144510%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144428144448%_))
                                    (let ((_%e144431144490%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144428144448%_))))
                                      (let ((_%hd144432144493%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144431144490%_)))
                                            (_%tl144433144495%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144431144490%_))))
                                        (let ((_%hd144498%_
                                               _%hd144432144493%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144433144495%_))
                                              (let ((_%e144434144500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144433144495%_))))
                                                (let ((_%hd144435144503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144434144500%_)))
                                                      (_%tl144436144505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144434144500%_))))
                                                  (let ((_%body144508%_
                                                         _%hd144435144503%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144436144505%_))
                                                        (_%generate1144427%_
                                                         _%hd144498%_
                                                         '#t
                                                         _%body144508%_)
                                                        (_%E144430144486%_)))))
                                              (_%E144430144486%_)))))
                                    (_%E144430144486%_)))))
                        (_%E144429144510%_)))))
                 (_%generate-match143992%_
                  (lambda (_%where144171%_
                           _%target144172%_
                           _%hd144173%_
                           _%mvars144174%_
                           _%K144175%_
                           _%E144176%_)
                    (letrec ((_%BUG144178%_
                              (lambda (_%q144420%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx143984%_
                                         _%hd144173%_
                                         _%q144420%_))))
                             (_%recur144179%_
                              (lambda (_%e144270%_
                                       _%vars144271%_
                                       _%target144272%_
                                       _%E144273%_
                                       _%k144274%_)
                                (let* ((_%e144275144282%_ _%e144270%_)
                                       (_%E144277144286%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e144275144282%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K144278144408%_
                                        (lambda (_%body144289%_ _%tag144290%_)
                                          (let ((_%$e144292%_ _%tag144290%_))
                                            (if (eq? 'any _%$e144292%_)
                                                (_%k144274%_ _%vars144271%_)
                                                (if (eq? 'id _%$e144292%_)
                                                    (let ((__tmp145335
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target144272%_)))
                                                          (__tmp145331
                                                           (let ((__tmp145333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp145334
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e143987%_
                                    _%body144289%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?143985%_
                             __tmp145334
                             _%target144272%_)))
                         (__tmp145332 (_%k144274%_ _%vars144271%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp145333 __tmp145332 _%E144273%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp145335 __tmp145331 _%E144273%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e144292%_)
                                                        (_%k144274%_
                                                         (cons (cons _%body144289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target144272%_)
                       _%vars144271%_))
                (if (eq? 'cons _%$e144292%_)
                    (let ((_%$e144295%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd144296%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl144297%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp145341
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target144272%_)))
                            (__tmp145336
                             (let ((__tmp145340
                                    (cons (cons (cons _%$e144295%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e143986%_
                                                         _%target144272%_))
                                                      '()))
                                          '()))
                                   (__tmp145337
                                    (let ((__tmp145339
                                           (cons (cons (cons _%$hd144296%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e144295%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl144297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e144295%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp145338
                                           (let* ((_%body144298144305%_
                                                   _%body144289%_)
                                                  (_%E144300144309%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body144298144305%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K144301144317%_
                                                   (lambda (_%tl144312%_
                                                            _%hd144313%_)
                                                     (_%recur144179%_
                                                      _%hd144313%_
                                                      _%vars144271%_
                                                      _%$hd144296%_
                                                      _%E144273%_
                                                      (lambda (_%vars144315%_)
                                                        (_%recur144179%_
                                                         _%tl144312%_
                                                         _%vars144315%_
                                                         _%$tl144297%_
                                                         _%E144273%_
                                                         _%k144274%_))))))
                                             (if (pair? _%body144298144305%_)
                                                 (let ((_%hd144302144320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body144298144305%_)))
                                                       (_%tl144303144322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body144298144305%_))))
                                                   (let* ((_%hd144325%_
                                                           _%hd144302144320%_)
                                                          (_%tl144327%_
                                                           _%tl144303144322%_))
                                                     (_%K144301144317%_
                                                      _%tl144327%_
                                                      _%hd144325%_)))
                                                 (_%E144300144309%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp145339
                                       __tmp145338))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp145340
                                __tmp145337))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp145341
                         __tmp145336
                         _%E144273%_)))
                    (if (eq? 'splice _%$e144292%_)
                        (let* ((_%body144328144335%_ _%body144289%_)
                               (_%E144330144339%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body144328144335%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K144331144390%_
                                (lambda (_%tl144342%_ _%hd144343%_)
                                  (let* ((_%rlen144345%_
                                          (_%splice-rlen144180%_ _%tl144342%_))
                                         (_%$target144347%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd144349%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl144351%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp144353%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e144355%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd144357%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl144359%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars144361%_
                                          (_%splice-vars144181%_ _%hd144343%_))
                                         (_%lvars144363%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars144361%_)))
                                         (_%tlvars144365%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars144361%_)))
                                         (_%linit144369%_
                                          (map (lambda (_%var144367%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars144363%_)))
                                    (letrec ((_%make-loop144372%_
                                              (lambda (_%vars144376%_)
                                                (let ((__tmp145343
                                                       (cons (cons (cons _%$lp144353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp145356
                                        (cons _%$hd144349%_ _%lvars144363%_))
                                       (__tmp145344
                                        (let ((__tmp145355
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd144349%_)))
                                              (__tmp145349
                                               (let ((__tmp145354
                                                      (cons (cons (cons _%$lp-e144355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e143986%_
                                   _%$hd144349%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145350
                                                      (let ((__tmp145353
                                                             (cons (cons (cons _%$lp-hd144357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e144355%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl144359%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e144355%_))
                                             '()))
                                 '())))
                    (__tmp145351
                     (_%recur144179%_
                      _%hd144343%_
                      '()
                      _%$lp-hd144357%_
                      _%E144273%_
                      (lambda (_%hdvars144378%_)
                        (cons _%$lp144353%_
                              (cons _%$lp-tl144359%_
                                    (map (lambda (_%svar144380%_
                                                  _%lvar144381%_)
                                           (let ((__tmp145352
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar144380%_
                                                     _%hdvars144378%_
                                                     _%BUG144178%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp145352
                                              _%lvar144381%_)))
                                         _%svars144361%_
                                         _%lvars144363%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp145353 __tmp145351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp145354
                                                  __tmp145350)))
                                              (__tmp145345
                                               (let ((__tmp145348
                                                      (map (lambda (_%lvar144383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar144384%_)
                     (cons (cons _%tlvar144384%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar144383%_))
                                 '())))
                   _%lvars144363%_
                   _%tlvars144365%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145346
                                                      (_%k144274%_
                                                       (let ((__tmp145347
                                                              (lambda (_%svar144386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar144387%_
                               _%r144388%_)
                        (cons (cons _%svar144386%_ _%tlvar144387%_)
                              _%r144388%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp145347
                  _%vars144376%_
                  _%svars144361%_
                  _%tlvars144365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp145348
                                                  __tmp145346))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp145355
                                           __tmp145349
                                           __tmp145345))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp145356
                                    __tmp145344))
                                 '()))
                     '()))
              (__tmp145342
               (cons _%$lp144353%_ (cons _%$target144347%_ _%linit144369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp145343
                                                   __tmp145342)))))
                                      (let ((_%body144374%_
                                             (let ((__tmp145358
                                                    (cons (cons (cons _%$target144347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl144351%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target144272%_
                                 _%rlen144345%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp145357
                                                    (_%recur144179%_
                                                     _%tl144342%_
                                                     _%vars144271%_
                                                     _%$tl144351%_
                                                     _%E144273%_
                                                     _%make-loop144372%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp145358
                                                __tmp145357))))
                                        (let ((__tmp145362
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target144272%_)))
                                              (__tmp145359
                                               (if (zero? _%rlen144345%_)
                                                   _%body144374%_
                                                   (let ((__tmp145360
                                                          (let ((__tmp145361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target144272%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp145361 _%rlen144345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp145360
                                                      _%body144374%_
                                                      _%E144273%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp145362
                                           __tmp145359
                                           _%E144273%_))))))))
                          (if (pair? _%body144328144335%_)
                              (let ((_%hd144332144393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body144328144335%_)))
                                    (_%tl144333144395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body144328144335%_))))
                                (let* ((_%hd144398%_ _%hd144332144393%_)
                                       (_%tl144400%_ _%tl144333144395%_))
                                  (_%K144331144390%_
                                   _%tl144400%_
                                   _%hd144398%_)))
                              (_%E144330144339%_)))
                        (if (eq? 'null _%$e144292%_)
                            (let ((__tmp145364
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target144272%_)))
                                  (__tmp145363 (_%k144274%_ _%vars144271%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp145364
                               __tmp145363
                               _%E144273%_))
                            (if (eq? 'vector _%$e144292%_)
                                (let ((_%$e144402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp145369
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target144272%_)))
                                        (__tmp145365
                                         (let ((__tmp145367
                                                (cons (cons (cons _%$e144402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp145368
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e143986%_
                                    _%target144272%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp145368))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp145366
                                                (_%recur144179%_
                                                 _%body144289%_
                                                 _%vars144271%_
                                                 _%$e144402%_
                                                 _%E144273%_
                                                 _%k144274%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp145367
                                            __tmp145366))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp145369
                                     __tmp145365
                                     _%E144273%_)))
                                (if (eq? 'box _%$e144292%_)
                                    (let ((_%$e144404%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp145374
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target144272%_)))
                                            (__tmp145370
                                             (let ((__tmp145372
                                                    (cons (cons (cons _%$e144404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp145373
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e143986%_
                                        _%target144272%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp145373))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp145371
                                                    (_%recur144179%_
                                                     _%body144289%_
                                                     _%vars144271%_
                                                     _%$e144404%_
                                                     _%E144273%_
                                                     _%k144274%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp145372
                                                __tmp145371))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp145374
                                         __tmp145370
                                         _%E144273%_)))
                                    (if (eq? 'datum _%$e144292%_)
                                        (let ((_%$e144406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp145380
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target144272%_)))
                                                (__tmp145375
                                                 (let ((__tmp145379
                                                        (cons (cons (cons _%$e144406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target144272%_))
                                  '()))
                      '()))
               (__tmp145376
                (let ((__tmp145378
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e144406%_ _%body144289%_)))
                      (__tmp145377 (_%k144274%_ _%vars144271%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp145378 __tmp145377 _%E144273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp145379
                                                    __tmp145376))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp145380
                                             __tmp145375
                                             _%E144273%_)))
                                        (_%BUG144178%_
                                         _%e144270%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e144275144282%_)
                                      (let ((_%hd144279144411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144275144282%_)))
                                            (_%tl144280144413%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144275144282%_))))
                                        (let* ((_%tag144416%_
                                                _%hd144279144411%_)
                                               (_%body144418%_
                                                _%tl144280144413%_))
                                          (_%K144278144408%_
                                           _%body144418%_
                                           _%tag144416%_)))
                                      (_%E144277144286%_)))))
                             (_%splice-rlen144180%_
                              (lambda (_%e144232%_)
                                (let _%lp144234%_ ((_%e144236%_ _%e144232%_)
                                                   (_%n144237%_ '0))
                                  (let* ((_%e144238144245%_ _%e144236%_)
                                         (_%E144240144249%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e144238144245%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K144241144258%_
                                          (lambda (_%body144252%_
                                                   _%tag144253%_)
                                            (let ((_%$e144255%_ _%tag144253%_))
                                              (if (eq? 'splice _%$e144255%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx143984%_
                                                     _%where144171%_))
                                                  (if (eq? 'cons _%$e144255%_)
                                                      (_%lp144234%_
                                                       (cdr _%body144252%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n144237%_
                                                                '1)))
                                                      _%n144237%_))))))
                                    (if (pair? _%e144238144245%_)
                                        (let ((_%hd144242144261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144238144245%_)))
                                              (_%tl144243144263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144238144245%_))))
                                          (let* ((_%tag144266%_
                                                  _%hd144242144261%_)
                                                 (_%body144268%_
                                                  _%tl144243144263%_))
                                            (_%K144241144258%_
                                             _%body144268%_
                                             _%tag144266%_)))
                                        (_%E144240144249%_))))))
                             (_%splice-vars144181%_
                              (lambda (_%e144188%_)
                                (let _%recur144190%_ ((_%e144192%_ _%e144188%_)
                                                      (_%vars144193%_ '()))
                                  (let* ((_%e144194144201%_ _%e144192%_)
                                         (_%E144196144205%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e144194144201%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K144197144220%_
                                          (lambda (_%body144208%_
                                                   _%tag144209%_)
                                            (let ((_%$e144211%_ _%tag144209%_))
                                              (if (eq? 'var _%$e144211%_)
                                                  (cons _%body144208%_
                                                        _%vars144193%_)
                                                  (if (or (eq? 'cons
                                                               _%$e144211%_)
                                                          (eq? 'splice
                                                               _%$e144211%_))
                                                      (_%recur144190%_
                                                       (cdr _%body144208%_)
                                                       (_%recur144190%_
                                                        (car _%body144208%_)
                                                        _%vars144193%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e144211%_)
                      (eq? 'box _%$e144211%_))
                  (_%recur144190%_ _%body144208%_ _%vars144193%_)
                  _%vars144193%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e144194144201%_)
                                        (let ((_%hd144198144223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144194144201%_)))
                                              (_%tl144199144225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144194144201%_))))
                                          (let* ((_%tag144228%_
                                                  _%hd144198144223%_)
                                                 (_%body144230%_
                                                  _%tl144199144225%_))
                                            (_%K144197144220%_
                                             _%body144230%_
                                             _%tag144228%_)))
                                        (_%E144196144205%_))))))
                             (_%make-body144182%_
                              (lambda (_%vars144184%_)
                                (cons _%K144175%_
                                      (map (lambda (_%mvar144186%_)
                                             (let ((__tmp145381
                                                    (car _%mvar144186%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp145381
                                                _%vars144184%_
                                                _%BUG144178%_)))
                                           _%mvars144174%_)))))
                      (_%recur144179%_
                       _%hd144173%_
                       '()
                       _%target144172%_
                       _%E144176%_
                       _%make-body144182%_))))
                 (_%parse-clause143993%_
                  (lambda (_%hd144065%_ _%ids144066%_)
                    (let _%recur144068%_ ((_%e144070%_ _%hd144065%_)
                                          (_%vars144071%_ '())
                                          (_%depth144072%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e144070%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e144070%_))
                              (values '(any) _%vars144071%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e144070%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx143984%_
                                     _%hd144065%_))
                                  (if (let ((__tmp145382
                                             (lambda (_%id144077%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e144070%_
                                                  _%id144077%_)))))
                                        (declare (not safe))
                                        (__find __tmp145382 _%ids144066%_))
                                      (values (cons 'id _%e144070%_)
                                              _%vars144071%_)
                                      (if (let ((__tmp145383
                                                 (lambda (_%var144080%_)
                                                   (let ((__tmp145384
                                                          (car _%var144080%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e144070%_
                                                      __tmp145384)))))
                                            (declare (not safe))
                                            (__find __tmp145383
                                                    _%vars144071%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx143984%_
                                             _%e144070%_))
                                          (values (cons 'var _%e144070%_)
                                                  (cons (cons _%e144070%_
                                                              _%depth144072%_)
                                                        _%vars144071%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e144070%_))
                              (let* ((_%e144084144091%_ _%e144070%_)
                                     (_%E144086144095%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e144084144091%_))))
                                     (_%E144085144156%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e144084144091%_))
                                            (let ((_%e144087144099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e144084144091%_))))
                                              (let ((_%hd144088144102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144087144099%_)))
                                                    (_%tl144089144104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144087144099%_))))
                                                (let* ((_%hd144107%_
                                                        _%hd144088144102%_)
                                                       (_%rest144109%_
                                                        _%tl144089144104%_)
                                                       (_%make-pair144124%_
                                                        (lambda (_%tag144111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd144112%_
                         _%tl144113%_)
                  (let* ((_%hd-depth144115%_
                          (if (eq? _%tag144111%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth144072%_ '1))
                              _%depth144072%_))
                         (_g145385_
                          (_%recur144068%_
                           _%hd144112%_
                           _%vars144071%_
                           _%hd-depth144115%_)))
                    (begin
                      (let ((_g145386_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g145385_)
                                   (##values-length _g145385_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g145386_ 2)))
                            (error "Context expects 2 values" _g145386_)))
                      (let ((_%hd144117%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g145385_ 0)))
                            (_%vars144118%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g145385_ 1))))
                        (let ((_g145387_
                               (_%recur144068%_
                                _%tl144113%_
                                _%vars144118%_
                                _%depth144072%_)))
                          (begin
                            (let ((_g145388_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g145387_)
                                         (##values-length _g145387_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g145388_ 2)))
                                  (error "Context expects 2 values"
                                         _g145388_)))
                            (let ((_%tl144120%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g145387_ 0)))
                                  (_%vars144121%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g145387_ 1))))
                              (values (cons _%tag144111%_
                                            (cons _%hd144117%_ _%tl144120%_))
                                      _%vars144121%_)))))))))
               (_%e144125144132%_ _%rest144109%_)
               (_%E144127144136%_
                (lambda ()
                  (_%make-pair144124%_ 'cons _%hd144107%_ _%rest144109%_)))
               (_%E144126144152%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e144125144132%_))
                      (let ((_%e144128144140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144125144132%_))))
                        (let ((_%hd144129144143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144128144140%_)))
                              (_%tl144130144145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144128144140%_))))
                          (let* ((_%rest-hd144148%_ _%hd144129144143%_)
                                 (_%rest-tl144150%_ _%tl144130144145%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd144148%_))
                                (_%make-pair144124%_
                                 'splice
                                 _%hd144107%_
                                 _%rest-tl144150%_)
                                (_%make-pair144124%_
                                 'cons
                                 _%hd144107%_
                                 _%rest144109%_)))))
                      (_%E144127144136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144126144152%_))))
                                            (_%E144086144095%_)))))
                                (_%E144085144156%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e144070%_))
                                  (values '(null) _%vars144071%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e144070%_))
                                      (let ((_g145389_
                                             (_%recur144068%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e144070%_)))
                                              _%vars144071%_
                                              _%depth144072%_)))
                                        (begin
                                          (let ((_g145390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145389_)
                                                       (##values-length
                                                        _g145389_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145390_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145390_)))
                                          (let ((_%e144162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145389_ 0)))
                                                (_%vars144163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145389_
                                                    1))))
                                            (values (cons 'vector _%e144162%_)
                                                    _%vars144163%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e144070%_))
                                          (let ((_g145391_
                                                 (_%recur144068%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e144070%_)))
                                                  _%vars144071%_
                                                  _%depth144072%_)))
                                            (begin
                                              (let ((_g145392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g145391_)
                                                           (##values-length
                                                            _g145391_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g145392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g145392_)))
                                              (let ((_%e144166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145391_
                                                        0)))
                                                    (_%vars144167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145391_
                                                        1))))
                                                (values (cons 'box _%e144166%_)
                                                        _%vars144167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e144070%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e144070%_)))
                                                      _%vars144071%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx143984%_
                                                 _%e144070%_))))))))))))
          (let* ((_%e143994144007%_ _%stx143984%_)
                 (_%E143996144011%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e143994144007%_))))
                 (_%E143995144061%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e143994144007%_))
                        (let ((_%e143997144015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e143994144007%_))))
                          (let ((_%hd143998144018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143997144015%_)))
                                (_%tl143999144020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143997144015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143999144020%_))
                                (let ((_%e144000144023%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl143999144020%_))))
                                  (let ((_%hd144001144026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144000144023%_)))
                                        (_%tl144002144028%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144000144023%_))))
                                    (let ((_%expr144031%_ _%hd144001144026%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144002144028%_))
                                          (let ((_%e144003144033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl144002144028%_))))
                                            (let ((_%hd144004144036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144003144033%_)))
                                                  (_%tl144005144038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144003144033%_))))
                                              (let* ((_%ids144041%_
                                                      _%hd144004144036%_)
                                                     (_%clauses144043%_
                                                      _%tl144005144038%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids144041%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses144043%_))
                                                        (let* ((_%ids144048%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids144041%_)))
                       (_%clauses144050%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses144043%_)))
                       (_%clause-ids144052%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses144050%_)))
                       (_%E144054%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target144056%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first144058%_
                        (if (null? _%clauses144050%_)
                            _%E144054%_
                            (car _%clause-ids144052%_))))
                  (let ((__tmp145394
                         (let ((__tmp145395
                                (let ((__tmp145397
                                       (let ((__tmp145399
                                              (cons (cons (cons _%E144054%_
                                                                '())
                                                          (cons (let ((__tmp145401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target144056%_ '()))
                              (__tmp145400
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target144056%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp145401 __tmp145400))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp145398
                                              (_%generate-body143990%_
                                               (_%generate-bindings143989%_
                                                _%target144056%_
                                                _%ids144048%_
                                                _%clauses144050%_
                                                _%clause-ids144052%_
                                                _%E144054%_)
                                               (cons _%first144058%_
                                                     (cons _%expr144031%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp145399
                                          __tmp145398)))
                                      (__tmp145396
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx143984%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp145397
                                   __tmp145396))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp145395)))
                        (__tmp145393
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx143984%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp145394 __tmp145393)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx143984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx143984%_
                                                       _%ids144041%_))))))
                                          (_%E143996144011%_)))))
                                (_%E143996144011%_))))
                        (_%E143996144011%_)))))
            (_%E143995144061%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx144709%_)
        (let* ((_%identifier=?144711%_ 'free-identifier=?)
               (_%unwrap-e144713%_ 'syntax-e)
               (_%wrap-e144715%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144709%_
           _%identifier=?144711%_
           _%unwrap-e144713%_
           _%wrap-e144715%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx144717%_ _%identifier=?144718%_)
        (let* ((_%unwrap-e144720%_ 'syntax-e) (_%wrap-e144722%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144717%_
           _%identifier=?144718%_
           _%unwrap-e144720%_
           _%wrap-e144722%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx144724%_ _%identifier=?144725%_ _%unwrap-e144726%_)
        (let ((_%wrap-e144728%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144724%_
           _%identifier=?144725%_
           _%unwrap-e144726%_
           _%wrap-e144728%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g145402_
        (let ((_g145403_ (let () (declare (not safe)) (##length _g145402_))))
          (cond ((let () (declare (not safe)) (##fx= _g145403_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g145402_))
                ((let () (declare (not safe)) (##fx= _g145403_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g145402_))
                ((let () (declare (not safe)) (##fx= _g145403_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g145402_))
                ((let () (declare (not safe)) (##fx= _g145403_ 4))
                 (apply gx#macro-expand-syntax-case__% _g145402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g145402_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx143981%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx143981%_))
            (let ((__tmp145404
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx143981%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp145404 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd143939%_ . _%rest143940%_)
        (let ((_%len143942%_ (length _%hd143939%_)))
          (let _%lp143944%_ ((_%rest143946%_ _%rest143940%_))
            (let* ((_%rest143947143955%_ _%rest143946%_)
                   (_%else143949143963%_ (lambda () '#!void))
                   (_%K143951143969%_
                    (lambda (_%rest143966%_ _%hd143967%_)
                      (if (let ((__tmp145405 (length _%hd143967%_)))
                            (declare (not safe))
                            (##fx= _%len143942%_ __tmp145405))
                          (_%lp143944%_ _%rest143966%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd143967%_))))))
              (if (pair? _%rest143947143955%_)
                  (let ((_%hd143952143972%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143947143955%_)))
                        (_%tl143953143974%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143947143955%_))))
                    (let* ((_%hd143977%_ _%hd143952143972%_)
                           (_%rest143979%_ _%tl143953143974%_))
                      (_%K143951143969%_ _%rest143979%_ _%hd143977%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx143889%_ _%n143890%_)
        (let _%lp143892%_ ((_%rest143895%_ _%stx143889%_) (_%r143897%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143895%_))
              (let* ((_%g143899143906%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143895%_)))
                     (_%E143901143910%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143899143906%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143902143917%_
                      (lambda (_%rest143913%_ _%hd143914%_)
                        (_%lp143892%_
                         _%rest143913%_
                         (cons _%hd143914%_ _%r143897%_)))))
                (if (pair? _%g143899143906%_)
                    (let ((_%hd143903143920%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143899143906%_)))
                          (_%tl143904143922%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143899143906%_))))
                      (let* ((_%hd143925%_ _%hd143903143920%_)
                             (_%rest143927%_ _%tl143904143922%_))
                        (_%K143902143917%_ _%rest143927%_ _%hd143925%_)))
                    (_%E143901143910%_)))
              (let _%lp143929%_ ((_%n143931%_ _%n143890%_)
                                 (_%l143932%_ _%r143897%_)
                                 (_%r143934%_ _%rest143895%_))
                (if (null? _%l143932%_)
                    (values _%l143932%_ _%r143934%_)
                    (if (fxpositive? _%n143931%_)
                        (_%lp143929%_
                         (let () (declare (not safe)) (##fx- _%n143931%_ '1))
                         (cdr _%l143932%_)
                         (cons (car _%l143932%_) _%r143934%_))
                        (values (reverse! _%l143932%_) _%r143934%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx143839%_ _%n143840%_)
        (let _%lp143842%_ ((_%rest143845%_ _%stx143839%_) (_%r143847%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143845%_))
              (let* ((_%g143849143856%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143845%_)))
                     (_%E143851143860%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143849143856%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143852143867%_
                      (lambda (_%rest143863%_ _%hd143864%_)
                        (_%lp143842%_
                         _%rest143863%_
                         (cons _%hd143864%_ _%r143847%_)))))
                (if (pair? _%g143849143856%_)
                    (let ((_%hd143853143870%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143849143856%_)))
                          (_%tl143854143872%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143849143856%_))))
                      (let* ((_%hd143875%_ _%hd143853143870%_)
                             (_%rest143877%_ _%tl143854143872%_))
                        (_%K143852143867%_ _%rest143877%_ _%hd143875%_)))
                    (_%E143851143860%_)))
              (let _%lp143879%_ ((_%n143881%_ _%n143840%_)
                                 (_%l143882%_ _%r143847%_)
                                 (_%r143884%_ _%rest143845%_))
                (if (null? _%l143882%_)
                    (vector _%l143882%_ _%r143884%_)
                    (if (fxpositive? _%n143881%_)
                        (_%lp143879%_
                         (let () (declare (not safe)) (##fx- _%n143881%_ '1))
                         (cdr _%l143882%_)
                         (cons (car _%l143882%_) _%r143884%_))
                        (vector (reverse! _%l143882%_) _%r143884%_))))))))))
