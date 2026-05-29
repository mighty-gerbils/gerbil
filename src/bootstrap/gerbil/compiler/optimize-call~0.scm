(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1779967250)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp257977 (list gxc#::basic-xform::t))
            (__tmp257976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp257977
         '()
         __tmp257976
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args257074%_
        (apply make-instance gxc#::optimize-call::t _%$args257074%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp257978
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp257978)))
    (define gxc#apply-optimize-call
      (lambda (_%stx257066%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self257069%_
                (let ((__obj257968
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj257968))
               (__tmp257979
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257069%_ _%stx257066%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257979
           gxc#current-compile-method
           _%self257069%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp257981 (list gxc#::void::t))
            (__tmp257980 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp257981
         '()
         __tmp257980
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args257063%_
        (apply make-instance gxc#::check-return-type::t _%$args257063%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp257982
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp257982)))
    (define gxc#apply-check-return-type
      (lambda (_%stx257055%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self257058%_
                (let ((__obj257970
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj257970))
               (__tmp257983
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257058%_ _%stx257055%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257983
           gxc#current-compile-method
           _%self257058%_))))
    (define gxc#optimize-call%
      (lambda (_%self256203%_ _%stx256204%_)
        (let* ((_%__stx257215257216%_ _%stx256204%_)
               (_%g256208256290%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257215257216%_)))))
          (let ((_%__kont257217257218%_
                 (lambda (_%g256210256851%_ _%g256211256852%_)
                   (let* ((_%rator-id256872%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g256211256852%_)))
                          (_%rator-type256874%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id256872%_))))
                     (if (or (not _%rator-type256874%_)
                             (eq? (##structure-ref
                                   _%rator-type256874%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self256203%_ _%stx256204%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type256874%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp257984
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type256874%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id256872%_
                                  '" => "
                                  _%rator-type256874%_
                                  '" "
                                  __tmp257984))
                               (let* ((_%optimized256889%_
                                       (let ((__method257971
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type256874%_
                                                 'optimize-call))))
                                         (if __method257971
                                             (let ((__tmp257985
                                                    (let ((__tmp257986
                                                           (lambda (_%g256881256884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g256882256886%_)
                     (cons _%g256881256884%_ _%g256882256886%_))))
              (declare (not safe))
              (foldr__0 __tmp257986 '() _%g256210256851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method257971
                                                _%rator-type256874%_
                                                _%self256203%_
                                                _%stx256204%_
                                                __tmp257985))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type256874%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx257163257164%_
                                       _%optimized256889%_)
                                      (_%g256892256921%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx257163257164%_)))))
                                 (let ((_%__kont257165257166%_
                                        (lambda (_%g256894256987%_
                                                 _%g256895256988%_)
                                          (let* ((_%optimized-rator-id257015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g256895256988%_)))
                                                 (_%rator-type257020%_
                                                  (let ((_%$e257017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id257015%_))))
                                                    (if _%$e257017%_
                                                        _%$e257017%_
                                                        _%rator-type256874%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type257020%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id257015%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type257020%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type257020%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized256889%_
                                                (let ((__tmp257987
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g256895256988%_ '()))
                           (let ((__tmp257988
                                  (lambda (_%g257028257031%_ _%g257029257033%_)
                                    (cons _%g257028257031%_
                                          _%g257029257033%_))))
                             (declare (not safe))
                             (foldr__0 __tmp257988 '() _%g256894256987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257987
                                                   _%stx256204%_))))))
                                       (_%__kont257169257170%_
                                        (lambda () _%optimized256889%_)))
                                   (let ((_%__match257212257213%_
                                          (lambda (_%e256896256933%_
                                                   _%hd256897256936%_
                                                   _%tl256898256938%_
                                                   _%e256899256941%_
                                                   _%hd256900256944%_
                                                   _%tl256901256946%_
                                                   _%e256902256949%_
                                                   _%hd256903256952%_
                                                   _%tl256904256954%_
                                                   _%e256905256957%_
                                                   _%hd256906256960%_
                                                   _%tl256907256962%_
                                                   _%__splice257167257168%_
                                                   _%target256908256965%_
                                                   _%tl256910256967%_)
                                            (letrec ((_%loop256911256970%_
                                                      (lambda (_%hd256909256973%_
                                                               _%arg256915256975%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd256909256973%_))
                                                            (let ((_%e256912256977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd256909256973%_))))
                      (let ((_%lp-tl256914256982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256912256977%_)))
                            (_%lp-hd256913256980%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256912256977%_))))
                        (_%loop256911256970%_
                         _%lp-tl256914256982%_
                         (cons _%lp-hd256913256980%_ _%arg256915256975%_))))
                    (let ((_%arg256916256985%_ (reverse _%arg256915256975%_)))
                      (_%__kont257165257166%_
                       _%arg256916256985%_
                       _%hd256906256960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop256911256970%_
                                               _%target256908256965%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx257163257164%_))
                                         (let ((_%e256896256933%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx257163257164%_))))
                                           (let ((_%tl256898256938%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256896256933%_)))
                                                 (_%hd256897256936%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256896256933%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd256897256936%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd256897256936%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl256898256938%_))
                                                         (let ((_%e256899256941%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl256898256938%_))))
                   (let ((_%tl256901256946%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e256899256941%_)))
                         (_%hd256900256944%_
                          (let ()
                            (declare (not safe))
                            (##car _%e256899256941%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd256900256944%_))
                         (let ((_%e256902256949%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd256900256944%_))))
                           (let ((_%tl256904256954%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256902256949%_)))
                                 (_%hd256903256952%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256902256949%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd256903256952%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd256903256952%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl256904256954%_))
                                         (let ((_%e256905256957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl256904256954%_))))
                                           (let ((_%tl256907256962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256905256957%_)))
                                                 (_%hd256906256960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256905256957%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl256907256962%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl256901256946%_))
                                                     (let ((_%__splice257167257168%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl256901256946%_
                                                               '0))))
                                                       (let ((_%tl256910256967%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice257167257168%_ '1)))
                     (_%target256908256965%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice257167257168%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl256910256967%_))
                     (_%__match257212257213%_
                      _%e256896256933%_
                      _%hd256897256936%_
                      _%tl256898256938%_
                      _%e256899256941%_
                      _%hd256900256944%_
                      _%tl256901256946%_
                      _%e256902256949%_
                      _%hd256903256952%_
                      _%tl256904256954%_
                      _%e256905256957%_
                      _%hd256906256960%_
                      _%tl256907256962%_
                      _%__splice257167257168%_
                      _%target256908256965%_
                      _%tl256910256967%_)
                     (_%__kont257169257170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont257169257170%_))
                                                 (_%__kont257169257170%_))))
                                         (_%__kont257169257170%_))
                                     (_%__kont257169257170%_))
                                 (_%__kont257169257170%_))))
                         (_%__kont257169257170%_))))
                 (_%__kont257169257170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont257169257170%_))
                                                 (_%__kont257169257170%_))))
                                         (_%__kont257169257170%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type256874%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type256874%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp257989
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g256211256852%_
                                                                '()))
                                                    (map (lambda (_%g257039257041%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self256203%_
                                                              _%g257039257041%_)))
                                                         (let ((__tmp257990
                                                                (lambda (_%g257043257046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g257044257048%_)
                          (cons _%g257043257046%_ _%g257044257048%_))))
                   (declare (not safe))
                   (foldr__0 __tmp257990 '() _%g256210256851%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp257989
                                    _%stx256204%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx256204%_
                                    _%rator-type256874%_))))))))
                (_%__kont257221257222%_
                 (lambda (_%g256233256459%_
                          _%g256234256460%_
                          _%g256235256461%_)
                   (let _%loop256579%_ ((_%rest-arg256581%_
                                         (let ((__tmp257997
                                                (lambda (_%g256777256780%_
                                                         _%g256778256782%_)
                                                  (cons _%g256777256780%_
                                                        _%g256778256782%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257997
                                            '()
                                            _%g256235256461%_)))
                                        (_%rest-rand256582%_
                                         (let ((__tmp257998
                                                (lambda (_%g256784256787%_
                                                         _%g256785256789%_)
                                                  (cons _%g256784256787%_
                                                        _%g256785256789%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257998
                                            '()
                                            _%g256233256459%_)))
                                        (_%bind256583%_ '())
                                        (_%subst256584%_ '()))
                     (let* ((_%rest-arg256585256593%_ _%rest-arg256581%_)
                            (_%else256587256606%_
                             (lambda ()
                               (let* ((_%body256601%_
                                       (if (null? _%subst256584%_)
                                           _%g256234256460%_
                                           (let ((__tmp257991
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst256584%_
                                                     _%g256234256460%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp257991
                                              _%stx256204%_))))
                                      (_%expr256603%_
                                       (let ((__tmp257992
                                              (cons '%#let-values
                                                    (cons _%bind256583%_
                                                          (cons _%body256601%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257992
                                          _%stx256204%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr256603%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self256203%_
                                    _%expr256603%_)))))
                            (_%K256589256766%_
                             (lambda (_%rest-arg256609%_ _%arg-id256610%_)
                               (let* ((_%rest-rand256611256619%_
                                       _%rest-rand256582%_)
                                      (_%else256613256641%_
                                       (lambda ()
                                         (let ((__tmp257995
                                                (let ((__tmp257996
                                                       (lambda (_%g256626256629%_
                                                                _%g256627256631%_)
                                                         (cons _%g256626256629%_
                                                               _%g256627256631%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257996
                                                   '()
                                                   _%g256235256461%_)))
                                               (__tmp257993
                                                (let ((__tmp257994
                                                       (lambda (_%g256633256636%_
                                                                _%g256634256638%_)
                                                         (cons _%g256633256636%_
                                                               _%g256634256638%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257994
                                                   '()
                                                   _%g256233256459%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx256204%_
                                            __tmp257995
                                            __tmp257993))))
                                      (_%K256615256754%_
                                       (lambda (_%rest-rand256644%_
                                                _%rand256645%_)
                                         (let* ((_%__stx257117257118%_
                                                 _%rand256645%_)
                                                (_%g256649256669%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx257117257118%_)))))
                                           (let ((_%__kont257119257120%_
                                                  (lambda (_%g256651256740%_)
                                                    (_%loop256579%_
                                                     _%rest-arg256609%_
                                                     _%rest-rand256644%_
                                                     _%bind256583%_
                                                     (cons (cons _%arg-id256610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256645%_)
                   _%subst256584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257121257122%_
                                                  (lambda (_%g256658256697%_)
                                                    (_%loop256579%_
                                                     _%rest-arg256609%_
                                                     _%rest-rand256644%_
                                                     _%bind256583%_
                                                     (cons (cons _%arg-id256610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256645%_)
                   _%subst256584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257123257124%_
                                                  (lambda ()
                                                    (_%loop256579%_
                                                     _%rest-arg256609%_
                                                     _%rest-rand256644%_
                                                     (cons (cons (cons _%arg-id256610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand256645%_ '()))
                   _%bind256583%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst256584%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx257117257118%_))
                                                 (let ((_%e256652256724%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx257117257118%_))))
                                                   (let ((_%tl256654256729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e256652256724%_)))
                                                         (_%hd256653256727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e256652256724%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd256653256727%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%hd256653256727%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl256654256729%_))
                         (let ((_%e256655256732%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl256654256729%_))))
                           (let ((_%tl256657256737%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256655256732%_)))
                                 (_%hd256656256735%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256655256732%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl256657256737%_))
                                 (_%__kont257119257120%_ _%hd256656256735%_)
                                 (_%__kont257123257124%_))))
                         (_%__kont257123257124%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%hd256653256727%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl256654256729%_))
                             (let ((_%e256662256689%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl256654256729%_))))
                               (let ((_%tl256664256694%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e256662256689%_)))
                                     (_%hd256663256692%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e256662256689%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl256664256694%_))
                                     (_%__kont257121257122%_
                                      _%hd256663256692%_)
                                     (_%__kont257123257124%_))))
                             (_%__kont257123257124%_))
                         (_%__kont257123257124%_)))
                 (_%__kont257123257124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257123257124%_)))))))
                                 (if (pair? _%rest-rand256611256619%_)
                                     (let ((_%hd256616256757%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest-rand256611256619%_)))
                                           (_%tl256617256759%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest-rand256611256619%_))))
                                       (let* ((_%rand256762%_
                                               _%hd256616256757%_)
                                              (_%rest-rand256764%_
                                               _%tl256617256759%_))
                                         (_%K256615256754%_
                                          _%rest-rand256764%_
                                          _%rand256762%_)))
                                     (_%else256613256641%_))))))
                       (if (pair? _%rest-arg256585256593%_)
                           (let ((_%hd256590256769%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest-arg256585256593%_)))
                                 (_%tl256591256771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest-arg256585256593%_))))
                             (let* ((_%arg-id256774%_ _%hd256590256769%_)
                                    (_%rest-arg256776%_ _%tl256591256771%_))
                               (_%K256589256766%_
                                _%rest-arg256776%_
                                _%arg-id256774%_)))
                           (_%else256587256606%_))))))
                (_%__kont257227257228%_
                 (lambda (_%g256269256333%_ _%g256270256334%_)
                   (let ((_%rator-type256351%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g256270256334%_))))
                     (if (and _%rator-type256351%_
                              (eq? (##structure-ref
                                    _%rator-type256351%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type256351%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type256351%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type256351%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp257999
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self256203%_
                                               _%g256270256334%_))
                                            (map (lambda (_%g256353256355%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self256203%_
                                                      _%g256353256355%_)))
                                                 (let ((__tmp258000
                                                        (lambda (_%g256357256360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g256358256362%_)
                  (cons _%g256357256360%_ _%g256358256362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp258000
                                                    '()
                                                    _%g256269256333%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp257999 _%stx256204%_))
                         (if (or (not _%rator-type256351%_)
                                 (let ((__tmp258001
                                        (##structure-ref
                                         _%rator-type256351%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp258001 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self256203%_ _%stx256204%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx256204%_
                                _%rator-type256351%_))))))))
            (let* ((_%__match257324257325%_
                    (lambda (_%e256271256295%_
                             _%hd256272256298%_
                             _%tl256273256300%_
                             _%e256274256303%_
                             _%hd256275256306%_
                             _%tl256276256308%_
                             _%__splice257229257230%_
                             _%target256277256311%_
                             _%tl256279256313%_)
                      (letrec ((_%loop256280256316%_
                                (lambda (_%hd256278256319%_
                                         _%rand256284256321%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd256278256319%_))
                                      (let ((_%e256281256323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd256278256319%_))))
                                        (let ((_%lp-tl256283256328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256281256323%_)))
                                              (_%lp-hd256282256326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256281256323%_))))
                                          (_%loop256280256316%_
                                           _%lp-tl256283256328%_
                                           (cons _%lp-hd256282256326%_
                                                 _%rand256284256321%_))))
                                      (let ((_%rand256285256331%_
                                             (reverse _%rand256284256321%_)))
                                        (_%__kont257227257228%_
                                         _%rand256285256331%_
                                         _%hd256275256306%_))))))
                        (_%loop256280256316%_ _%target256277256311%_ '()))))
                   (_%__match257316257317%_
                    (lambda (_%e256271256295%_
                             _%hd256272256298%_
                             _%tl256273256300%_
                             _%e256274256303%_
                             _%hd256275256306%_
                             _%tl256276256308%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl256276256308%_))
                          (let ((_%__splice257229257230%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl256276256308%_
                                    '0))))
                            (let ((_%tl256279256313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257229257230%_
                                      '1)))
                                  (_%target256277256311%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257229257230%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl256279256313%_))
                                  (_%__match257324257325%_
                                   _%e256271256295%_
                                   _%hd256272256298%_
                                   _%tl256273256300%_
                                   _%e256274256303%_
                                   _%hd256275256306%_
                                   _%tl256276256308%_
                                   _%__splice257229257230%_
                                   _%target256277256311%_
                                   _%tl256279256313%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g256208256290%_)))))
                          (let () (declare (not safe)) (_%g256208256290%_)))))
                   (_%__match257304257305%_
                    (lambda (_%e256236256375%_
                             _%hd256237256378%_
                             _%tl256238256380%_
                             _%e256239256383%_
                             _%hd256240256386%_
                             _%tl256241256388%_
                             _%e256242256391%_
                             _%hd256243256394%_
                             _%tl256244256396%_
                             _%e256245256399%_
                             _%hd256246256402%_
                             _%tl256247256404%_
                             _%__splice257223257224%_
                             _%target256248256407%_
                             _%tl256250256409%_)
                      (letrec ((_%loop256251256412%_
                                (lambda (_%hd256249256415%_
                                         _%arg256255256417%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd256249256415%_))
                                      (let ((_%e256252256419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd256249256415%_))))
                                        (let ((_%lp-tl256254256424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256252256419%_)))
                                              (_%lp-hd256253256422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256252256419%_))))
                                          (_%loop256251256412%_
                                           _%lp-tl256254256424%_
                                           (cons _%lp-hd256253256422%_
                                                 _%arg256255256417%_))))
                                      (let ((_%arg256256256427%_
                                             (reverse _%arg256255256417%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256247256404%_))
                                            (let ((_%e256257256429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256247256404%_))))
                                              (let ((_%tl256259256434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256257256429%_)))
                                                    (_%hd256258256432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256257256429%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256259256434%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl256241256388%_))
                                                        (let ((_%__splice257225257226%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl256241256388%_
                          '0))))
                  (let ((_%tl256262256439%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice257225257226%_ '1)))
                        (_%target256260256437%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice257225257226%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl256262256439%_))
                        (letrec ((_%loop256263256442%_
                                  (lambda (_%hd256261256445%_
                                           _%rand256267256447%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd256261256445%_))
                                        (let ((_%e256264256449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd256261256445%_))))
                                          (let ((_%lp-tl256266256454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e256264256449%_)))
                                                (_%lp-hd256265256452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e256264256449%_))))
                                            (_%loop256263256442%_
                                             _%lp-tl256266256454%_
                                             (cons _%lp-hd256265256452%_
                                                   _%rand256267256447%_))))
                                        (let ((_%rand256268256457%_
                                               (reverse _%rand256267256447%_)))
                                          (let ((_%g256233256459%_
                                                 _%rand256268256457%_)
                                                (_%g256234256460%_
                                                 _%hd256258256432%_)
                                                (_%g256235256461%_
                                                 _%arg256256256427%_))
                                            (if (and (= (length (let ((__tmp258002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g256487256490%_ _%g256488256492%_)
                                 (cons _%g256487256490%_ _%g256488256492%_))))
                          (declare (not safe))
                          (foldr__0 __tmp258002 '() _%g256235256461%_)))
                (length (let ((__tmp258003
                               (lambda (_%g256494256497%_ _%g256495256499%_)
                                 (cons _%g256494256497%_ _%g256495256499%_))))
                          (declare (not safe))
                          (foldr__0 __tmp258003 '() _%g256233256459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp258006
                                                            (lambda (_%id256502%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id256502%_)))))
                   (__tmp258004
                    (let ((__tmp258005
                           (lambda (_%g256503256506%_ _%g256504256508%_)
                             (cons _%g256503256506%_ _%g256504256508%_))))
                      (declare (not safe))
                      (foldr__0 __tmp258005 '() _%g256235256461%_))))
               (declare (not safe))
               (andmap__0 __tmp258006 __tmp258004))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp258009
                                                            (lambda (_%rand256511%_)
                                                              (let* ((_%__stx257091257092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand256511%_)
                             (_%g256514256527%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx257091257092%_)))))
                        (let ((_%__kont257093257094%_
                               (lambda (_%g256516256555%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%g256516256555%_)))))
                              (_%__kont257095257096%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx257091257092%_))
                              (let ((_%e256517256539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx257091257092%_))))
                                (let ((_%tl256519256544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256517256539%_)))
                                      (_%hd256518256542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256517256539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd256518256542%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd256518256542%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl256519256544%_))
                                              (let ((_%e256520256547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl256519256544%_))))
                                                (let ((_%tl256522256552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e256520256547%_)))
                                                      (_%hd256521256550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e256520256547%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256522256552%_))
                                                      (_%__kont257093257094%_
                                                       _%hd256521256550%_)
                                                      (_%__kont257095257096%_))))
                                              (_%__kont257095257096%_))
                                          (_%__kont257095257096%_))
                                      (_%__kont257095257096%_))))
                              (_%__kont257095257096%_))))))
                   (__tmp258007
                    (let ((__tmp258008
                           (lambda (_%g256571256574%_ _%g256572256576%_)
                             (cons _%g256571256574%_ _%g256572256576%_))))
                      (declare (not safe))
                      (foldr__0 __tmp258008 '() _%g256233256459%_))))
               (declare (not safe))
               (andmap__0 __tmp258009 __tmp258007)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont257221257222%_
                                                 _%g256233256459%_
                                                 _%g256234256460%_
                                                 _%g256235256461%_)
                                                (_%__match257324257325%_
                                                 _%e256236256375%_
                                                 _%hd256237256378%_
                                                 _%tl256238256380%_
                                                 _%e256239256383%_
                                                 _%hd256240256386%_
                                                 _%tl256241256388%_
                                                 _%__splice257225257226%_
                                                 _%target256260256437%_
                                                 _%tl256262256439%_))))))))
                          (_%loop256263256442%_ _%target256260256437%_ '()))
                        (let () (declare (not safe)) (_%g256208256290%_)))))
                (let () (declare (not safe)) (_%g256208256290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match257316257317%_
                                                     _%e256236256375%_
                                                     _%hd256237256378%_
                                                     _%tl256238256380%_
                                                     _%e256239256383%_
                                                     _%hd256240256386%_
                                                     _%tl256241256388%_))))
                                            (_%__match257316257317%_
                                             _%e256236256375%_
                                             _%hd256237256378%_
                                             _%tl256238256380%_
                                             _%e256239256383%_
                                             _%hd256240256386%_
                                             _%tl256241256388%_)))))))
                        (_%loop256251256412%_ _%target256248256407%_ '()))))
                   (_%__match257268257269%_
                    (lambda (_%e256212256797%_
                             _%hd256213256800%_
                             _%tl256214256802%_
                             _%e256215256805%_
                             _%hd256216256808%_
                             _%tl256217256810%_
                             _%e256218256813%_
                             _%hd256219256816%_
                             _%tl256220256818%_
                             _%e256221256821%_
                             _%hd256222256824%_
                             _%tl256223256826%_
                             _%__splice257219257220%_
                             _%target256224256829%_
                             _%tl256226256831%_)
                      (letrec ((_%loop256227256834%_
                                (lambda (_%hd256225256837%_
                                         _%rand256231256839%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd256225256837%_))
                                      (let ((_%e256228256841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd256225256837%_))))
                                        (let ((_%lp-tl256230256846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256228256841%_)))
                                              (_%lp-hd256229256844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256228256841%_))))
                                          (_%loop256227256834%_
                                           _%lp-tl256230256846%_
                                           (cons _%lp-hd256229256844%_
                                                 _%rand256231256839%_))))
                                      (let ((_%rand256232256849%_
                                             (reverse _%rand256231256839%_)))
                                        (_%__kont257217257218%_
                                         _%rand256232256849%_
                                         _%hd256222256824%_))))))
                        (_%loop256227256834%_ _%target256224256829%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257215257216%_))
                  (let ((_%e256212256797%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257215257216%_))))
                    (let ((_%tl256214256802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256212256797%_)))
                          (_%hd256213256800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256212256797%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl256214256802%_))
                          (let ((_%e256215256805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl256214256802%_))))
                            (let ((_%tl256217256810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256215256805%_)))
                                  (_%hd256216256808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256215256805%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd256216256808%_))
                                  (let ((_%e256218256813%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd256216256808%_))))
                                    (let ((_%tl256220256818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256218256813%_)))
                                          (_%hd256219256816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256218256813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd256219256816%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd256219256816%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256220256818%_))
                                                  (let ((_%e256221256821%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256220256818%_))))
                                                    (let ((_%tl256223256826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256221256821%_)))
                                                          (_%hd256222256824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256221256821%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl256223256826%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl256217256810%_))
                      (let ((_%__splice257219257220%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl256217256810%_
                                '0))))
                        (let ((_%tl256226256831%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257219257220%_ '1)))
                              (_%target256224256829%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257219257220%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl256226256831%_))
                              (_%__match257268257269%_
                               _%e256212256797%_
                               _%hd256213256800%_
                               _%tl256214256802%_
                               _%e256215256805%_
                               _%hd256216256808%_
                               _%tl256217256810%_
                               _%e256218256813%_
                               _%hd256219256816%_
                               _%tl256220256818%_
                               _%e256221256821%_
                               _%hd256222256824%_
                               _%tl256223256826%_
                               _%__splice257219257220%_
                               _%target256224256829%_
                               _%tl256226256831%_)
                              (let ()
                                (declare (not safe))
                                (_%g256208256290%_)))))
                      (let () (declare (not safe)) (_%g256208256290%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl256217256810%_))
                      (let ((_%__splice257229257230%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl256217256810%_
                                '0))))
                        (let ((_%tl256279256313%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257229257230%_ '1)))
                              (_%target256277256311%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257229257230%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl256279256313%_))
                              (_%__match257324257325%_
                               _%e256212256797%_
                               _%hd256213256800%_
                               _%tl256214256802%_
                               _%e256215256805%_
                               _%hd256216256808%_
                               _%tl256217256810%_
                               _%__splice257229257230%_
                               _%target256277256311%_
                               _%tl256279256313%_)
                              (let ()
                                (declare (not safe))
                                (_%g256208256290%_)))))
                      (let () (declare (not safe)) (_%g256208256290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl256217256810%_))
                                                      (let ((_%__splice257229257230%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl256217256810%_
                        '0))))
                (let ((_%tl256279256313%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257229257230%_ '1)))
                      (_%target256277256311%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257229257230%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl256279256313%_))
                      (_%__match257324257325%_
                       _%e256212256797%_
                       _%hd256213256800%_
                       _%tl256214256802%_
                       _%e256215256805%_
                       _%hd256216256808%_
                       _%tl256217256810%_
                       _%__splice257229257230%_
                       _%target256277256311%_
                       _%tl256279256313%_)
                      (let () (declare (not safe)) (_%g256208256290%_)))))
              (let () (declare (not safe)) (_%g256208256290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%hd256219256816%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl256220256818%_))
                                                      (let ((_%e256245256399%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl256220256818%_))))
                (let ((_%tl256247256404%_
                       (let () (declare (not safe)) (##cdr _%e256245256399%_)))
                      (_%hd256246256402%_
                       (let ()
                         (declare (not safe))
                         (##car _%e256245256399%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%hd256246256402%_))
                      (let ((_%__splice257223257224%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%hd256246256402%_
                                '0))))
                        (let ((_%tl256250256409%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257223257224%_ '1)))
                              (_%target256248256407%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257223257224%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl256250256409%_))
                              (_%__match257304257305%_
                               _%e256212256797%_
                               _%hd256213256800%_
                               _%tl256214256802%_
                               _%e256215256805%_
                               _%hd256216256808%_
                               _%tl256217256810%_
                               _%e256218256813%_
                               _%hd256219256816%_
                               _%tl256220256818%_
                               _%e256245256399%_
                               _%hd256246256402%_
                               _%tl256247256404%_
                               _%__splice257223257224%_
                               _%target256248256407%_
                               _%tl256250256409%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%tl256217256810%_))
                                  (let ((_%__splice257229257230%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%tl256217256810%_
                                            '0))))
                                    (let ((_%tl256279256313%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice257229257230%_
                                              '1)))
                                          (_%target256277256311%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice257229257230%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl256279256313%_))
                                          (_%__match257324257325%_
                                           _%e256212256797%_
                                           _%hd256213256800%_
                                           _%tl256214256802%_
                                           _%e256215256805%_
                                           _%hd256216256808%_
                                           _%tl256217256810%_
                                           _%__splice257229257230%_
                                           _%target256277256311%_
                                           _%tl256279256313%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g256208256290%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g256208256290%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl256217256810%_))
                          (let ((_%__splice257229257230%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl256217256810%_
                                    '0))))
                            (let ((_%tl256279256313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257229257230%_
                                      '1)))
                                  (_%target256277256311%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257229257230%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl256279256313%_))
                                  (_%__match257324257325%_
                                   _%e256212256797%_
                                   _%hd256213256800%_
                                   _%tl256214256802%_
                                   _%e256215256805%_
                                   _%hd256216256808%_
                                   _%tl256217256810%_
                                   _%__splice257229257230%_
                                   _%target256277256311%_
                                   _%tl256279256313%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g256208256290%_)))))
                          (let () (declare (not safe)) (_%g256208256290%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl256217256810%_))
                  (let ((_%__splice257229257230%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl256217256810%_
                            '0))))
                    (let ((_%tl256279256313%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice257229257230%_ '1)))
                          (_%target256277256311%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice257229257230%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl256279256313%_))
                          (_%__match257324257325%_
                           _%e256212256797%_
                           _%hd256213256800%_
                           _%tl256214256802%_
                           _%e256215256805%_
                           _%hd256216256808%_
                           _%tl256217256810%_
                           _%__splice257229257230%_
                           _%target256277256311%_
                           _%tl256279256313%_)
                          (let () (declare (not safe)) (_%g256208256290%_)))))
                  (let () (declare (not safe)) (_%g256208256290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl256217256810%_))
                                                      (let ((_%__splice257229257230%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl256217256810%_
                        '0))))
                (let ((_%tl256279256313%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257229257230%_ '1)))
                      (_%target256277256311%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257229257230%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl256279256313%_))
                      (_%__match257324257325%_
                       _%e256212256797%_
                       _%hd256213256800%_
                       _%tl256214256802%_
                       _%e256215256805%_
                       _%hd256216256808%_
                       _%tl256217256810%_
                       _%__splice257229257230%_
                       _%target256277256311%_
                       _%tl256279256313%_)
                      (let () (declare (not safe)) (_%g256208256290%_)))))
              (let () (declare (not safe)) (_%g256208256290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl256217256810%_))
                                              (let ((_%__splice257229257230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl256217256810%_
                                                        '0))))
                                                (let ((_%tl256279256313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice257229257230%_
                                                          '1)))
                                                      (_%target256277256311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice257229257230%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256279256313%_))
                                                      (_%__match257324257325%_
                                                       _%e256212256797%_
                                                       _%hd256213256800%_
                                                       _%tl256214256802%_
                                                       _%e256215256805%_
                                                       _%hd256216256808%_
                                                       _%tl256217256810%_
                                                       _%__splice257229257230%_
                                                       _%target256277256311%_
                                                       _%tl256279256313%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g256208256290%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g256208256290%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl256217256810%_))
                                      (let ((_%__splice257229257230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl256217256810%_
                                                '0))))
                                        (let ((_%tl256279256313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257229257230%_
                                                  '1)))
                                              (_%target256277256311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257229257230%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256279256313%_))
                                              (_%__match257324257325%_
                                               _%e256212256797%_
                                               _%hd256213256800%_
                                               _%tl256214256802%_
                                               _%e256215256805%_
                                               _%hd256216256808%_
                                               _%tl256217256810%_
                                               _%__splice257229257230%_
                                               _%target256277256311%_
                                               _%tl256279256313%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g256208256290%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g256208256290%_))))))
                          (let () (declare (not safe)) (_%g256208256290%_)))))
                  (let () (declare (not safe)) (_%g256208256290%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self256165%_ _%ctx256166%_ _%stx256167%_ _%args256168%_)
        (let ((_%self256171%_ _%self256165%_))
          (if (let ((__method257972
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self256171%_ 'check-arguments))))
                (if __method257972
                    (let ()
                      (declare (not safe))
                      (__method257972
                       _%self256171%_
                       _%ctx256166%_
                       _%stx256167%_
                       _%args256168%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self256171%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature256181%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256171%_ '2 '#f '#f)))
                     (_%signature256183%_ _%signature256181%_)
                     (_%$e256193%_
                      (if _%signature256183%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature256183%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e256193%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e256193%_))
                        (let ((__tmp258010
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e256193%_ '()))
                                           (map (lambda (_%g256197256199%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx256166%_
                                                     _%g256197256199%_)))
                                                _%args256168%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp258010
                           _%stx256167%_
                           _%ctx256166%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx256166%_ _%stx256167%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx256166%_ _%stx256167%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx256166%_ _%stx256167%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass257076 __method-table257077)
        (let ((__check-arguments257078
               (let ((__tmp258011
                      (lambda ()
                        (let ((__method257079
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257077
                                  'check-arguments
                                  '#f))))
                          (if __method257079
                              __method257079
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258011))))
          (lambda (_%self256165%_ _%ctx256166%_ _%stx256167%_ _%args256168%_)
            (let ((_%self256171%_ _%self256165%_))
              (if ((force __check-arguments257078)
                   _%self256171%_
                   _%ctx256166%_
                   _%stx256167%_
                   _%args256168%_)
                  (let* ((_%signature256181%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self256171%_
                             '2
                             '#f
                             '#f)))
                         (_%signature256183%_ _%signature256181%_)
                         (_%$e256193%_
                          (if _%signature256183%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature256183%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e256193%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e256193%_))
                            (let ((__tmp258012
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e256193%_ '()))
                                               (map (lambda (_%g256197256199%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx256166%_
                                                         _%g256197256199%_)))
                                                    _%args256168%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp258012
                               _%stx256167%_
                               _%ctx256166%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx256166%_ _%stx256167%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx256166%_ _%stx256167%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx256166%_ _%stx256167%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self255918%_ _%ctx255919%_ _%stx255920%_ _%args255921%_)
        (let* ((_%self255924%_ _%self255918%_)
               (_%signature255933255935%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255924%_ '2 '#f '#f))))
          (if _%signature255933255935%_
              (let* ((_%signature255937%_ _%signature255933255935%_)
                     (_%argument-types255938255940%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature255937%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types255938255940%_
                    (let* ((_%argument-types255942%_
                            _%argument-types255938255940%_)
                           (_%argument-types255947%_
                            (let ((__tmp258013
                                   (lambda (_%t255945%_)
                                     (if _%t255945%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx255920%_
                                            _%t255945%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp258013
                               _%argument-types255942%_))))
                      (let _%loop255949%_ ((_%rest-args255951%_ _%args255921%_)
                                           (_%rest-types255952%_
                                            _%argument-types255947%_)
                                           (_%result255953%_ '#t))
                        (let* ((_%rest-args255954255962%_ _%rest-args255951%_)
                               (_%else255956255970%_
                                (lambda () _%result255953%_))
                               (_%K255958256031%_
                                (lambda (_%rest-args255973%_ _%arg255974%_)
                                  (let* ((_%rest-types255975255986%_
                                          _%rest-types255952%_)
                                         (_%E255979255990%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types255975255986%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K255982256019%_
                                           (lambda (_%rest-types256016%_
                                                    _%type256017%_)
                                             (_%loop255949%_
                                              _%rest-args255973%_
                                              _%rest-types256016%_
                                              (if (gxc#check-expression-type!
                                                   _%stx255920%_
                                                   _%arg255974%_
                                                   _%type256017%_)
                                                  _%result255953%_
                                                  '#f))))
                                          (_%K255981256010%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx255920%_
                                                _%argument-types255947%_))))
                                          (_%K255980256000%_
                                           (lambda (_%tail-type255994%_)
                                             (if (let ((__tmp258014
                                                        (lambda (_%g255995255997%_)
                                                          (gxc#check-expression-type!
                                                           _%stx255920%_
                                                           _%g255995255997%_
                                                           _%tail-type255994%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp258014
                                                    _%rest-args255973%_))
                                                 _%result255953%_
                                                 '#f))))
                                      (let ((_%try-match255977256013%_
                                             (lambda ()
                                               (if (null? _%rest-types255975255986%_)
                                                   (_%K255981256010%_)
                                                   (let ((_%tail-type256003%_
                                                          _%rest-types255975255986%_))
                                                     (_%K255980256000%_
                                                      _%tail-type256003%_))))))
                                        (if (pair? _%rest-types255975255986%_)
                                            (let ((_%tl255984256024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types255975255986%_)))
                                                  (_%hd255983256022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types255975255986%_))))
                                              (let ((_%type256027%_
                                                     _%hd255983256022%_)
                                                    (_%rest-types256029%_
                                                     _%tl255984256024%_))
                                                (_%K255982256019%_
                                                 _%rest-types256029%_
                                                 _%type256027%_)))
                                            (_%try-match255977256013%_))))))))
                          (if (pair? _%rest-args255954255962%_)
                              (let ((_%hd255959256034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args255954255962%_)))
                                    (_%tl255960256036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args255954255962%_))))
                                (let* ((_%arg256039%_ _%hd255959256034%_)
                                       (_%rest-args256041%_
                                        _%tl255960256036%_))
                                  (_%K255958256031%_
                                   _%rest-args256041%_
                                   _%arg256039%_)))
                              (_%else255956255970%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self255721%_ _%ctx255722%_ _%stx255723%_ _%args255724%_)
        (let* ((_%self255727%_ _%self255721%_)
               (_%g255737255747%_
                (lambda (_%g255738255744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255738255744%_))))
               (_%g255736255793%_
                (lambda (_%g255738255750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255738255750%_))
                      (let ((_%e255740255752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255738255750%_))))
                        (let ((_%hd255741255755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255740255752%_)))
                              (_%tl255742255757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255740255752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255742255757%_))
                              (let* ((_%klass255772%_
                                      (let ((__tmp258015
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255727%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255723%_
                                         __tmp258015)))
                                     (_%object255774%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255722%_
                                         _%hd255741255755%_)))
                                     (_%instance?255779%_
                                      (let ((_%$e255776%_
                                             (gxc#expression-type?
                                              _%object255774%_
                                              _%klass255772%_)))
                                        (if _%$e255776%_
                                            _%$e255776%_
                                            (gxc#expression-type?
                                             _%hd255741255755%_
                                             _%klass255772%_))))
                                     (_%incompatible?255784%_
                                      (let ((_%$e255781%_
                                             (gxc#incompatible-type?
                                              _%object255774%_
                                              _%klass255772%_)))
                                        (if _%$e255781%_
                                            _%$e255781%_
                                            (gxc#incompatible-type?
                                             _%hd255741255755%_
                                             _%klass255772%_)))))
                                (if _%instance?255779%_
                                    (let ((__tmp258016
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255774%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd255741255755%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255774%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258016
                                       _%stx255723%_))
                                    (if _%incompatible?255784%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx255722%_
                                           _%stx255723%_)))))
                              (_%g255737255747%_ _%g255738255750%_))))
                      (_%g255737255747%_ _%g255738255750%_)))))
          (_%g255736255793%_ _%args255724%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self255510%_ _%ctx255511%_ _%stx255512%_ _%args255513%_)
        (let* ((_%self255516%_ _%self255510%_)
               (_%g255526255536%_
                (lambda (_%g255527255533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255527255533%_))))
               (_%g255525255596%_
                (lambda (_%g255527255539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255527255539%_))
                      (let ((_%e255529255541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255527255539%_))))
                        (let ((_%hd255530255544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255529255541%_)))
                              (_%tl255531255546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255529255541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255531255546%_))
                              (let* ((_%klass255561%_
                                      (let ((__tmp258017
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255516%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255512%_
                                         __tmp258017)))
                                     (_%object255563%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255511%_
                                         _%hd255530255544%_)))
                                     (_%instance?255568%_
                                      (let ((_%$e255565%_
                                             (gxc#expression-type?
                                              _%object255563%_
                                              _%klass255561%_)))
                                        (if _%$e255565%_
                                            _%$e255565%_
                                            (gxc#expression-type?
                                             _%hd255530255544%_
                                             _%klass255561%_))))
                                     (_%incompatible?255573%_
                                      (let ((_%$e255570%_
                                             (gxc#incompatible-type?
                                              _%object255563%_
                                              _%klass255561%_)))
                                        (if _%$e255570%_
                                            _%$e255570%_
                                            (gxc#incompatible-type?
                                             _%hd255530255544%_
                                             _%klass255561%_))))
                                     (_%klass255576%_ _%klass255561%_))
                                (if _%instance?255568%_
                                    (let ((__tmp258018
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255563%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd255530255544%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255563%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258018
                                       _%stx255512%_))
                                    (if _%incompatible?255573%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass255576%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp258019
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass255576%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object255563%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258019
                                               _%stx255512%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass255576%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258020
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass255576%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object255563%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258020
                                                   _%stx255512%_))
                                                (let ((__tmp258021
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255516%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object255563%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258021
                                                   _%stx255512%_)))))))
                              (_%g255526255536%_ _%g255527255539%_))))
                      (_%g255526255536%_ _%g255527255539%_)))))
          (_%g255525255596%_ _%args255513%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx255178%_)
        (let* ((_%__stx257334257335%_ _%stx255178%_)
               (_%g255183255224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257334257335%_)))))
          (let ((_%__kont257336257337%_ (lambda () '#t))
                (_%__kont257338257339%_ (lambda () '#t))
                (_%__kont257340257341%_
                 (lambda (_%g255197255290%_ _%g255198255291%_)
                   (let ((_%rator-type255312255314%_
                          (let ((__tmp258022
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g255198255291%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp258022))))
                     (if _%rator-type255312255314%_
                         (let* ((_%rator-type255316%_
                                 _%rator-type255312255314%_)
                                (_%rator-signature255317255319%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type255316%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type255316%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature255317255319%_
                               (let* ((_%rator-signature255321%_
                                       _%rator-signature255317255319%_)
                                      (_%rator-effect255322255324%_
                                       (if _%rator-signature255321%_
                                           (##direct-structure-ref
                                            _%rator-signature255321%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect255322255324%_
                                     (let ((_%rator-effect255326%_
                                            _%rator-effect255322255324%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect255326%_)
                                               (equal? '(alloc)
                                                       _%rator-effect255326%_))
                                           (let ((__tmp258023
                                                  (let ((__tmp258024
                                                         (lambda (_%g255331255334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g255332255336%_)
                   (cons _%g255331255334%_ _%g255332255336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp258024
                                                     '()
                                                     _%g255197255290%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp258023))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont257344257345%_ (lambda () '#f)))
            (let ((_%__match257423257424%_
                   (lambda (_%e255199255236%_
                            _%hd255200255239%_
                            _%tl255201255241%_
                            _%e255202255244%_
                            _%hd255203255247%_
                            _%tl255204255249%_
                            _%e255205255252%_
                            _%hd255206255255%_
                            _%tl255207255257%_
                            _%e255208255260%_
                            _%hd255209255263%_
                            _%tl255210255265%_
                            _%__splice257342257343%_
                            _%target255211255268%_
                            _%tl255213255270%_)
                     (letrec ((_%loop255214255273%_
                               (lambda (_%hd255212255276%_
                                        _%rand255218255278%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd255212255276%_))
                                     (let ((_%e255215255280%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd255212255276%_))))
                                       (let ((_%lp-tl255217255285%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e255215255280%_)))
                                             (_%lp-hd255216255283%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e255215255280%_))))
                                         (_%loop255214255273%_
                                          _%lp-tl255217255285%_
                                          (cons _%lp-hd255216255283%_
                                                _%rand255218255278%_))))
                                     (let ((_%rand255219255288%_
                                            (reverse _%rand255218255278%_)))
                                       (_%__kont257340257341%_
                                        _%rand255219255288%_
                                        _%hd255209255263%_))))))
                       (_%loop255214255273%_ _%target255211255268%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257334257335%_))
                  (let ((_%e255185255367%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257334257335%_))))
                    (let ((_%tl255187255372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255185255367%_)))
                          (_%hd255186255370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255185255367%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd255186255370%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd255186255370%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl255187255372%_))
                                  (let ((_%e255188255375%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl255187255372%_))))
                                    (let ((_%tl255190255380%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255188255375%_)))
                                          (_%hd255189255378%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255188255375%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl255190255380%_))
                                          (_%__kont257336257337%_)
                                          (_%__kont257344257345%_))))
                                  (_%__kont257344257345%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd255186255370%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl255187255372%_))
                                      (let ((_%e255194255352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl255187255372%_))))
                                        (let ((_%tl255196255357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255194255352%_)))
                                              (_%hd255195255355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255194255352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl255196255357%_))
                                              (_%__kont257338257339%_)
                                              (_%__kont257344257345%_))))
                                      (_%__kont257344257345%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd255186255370%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl255187255372%_))
                                          (let ((_%e255202255244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl255187255372%_))))
                                            (let ((_%tl255204255249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e255202255244%_)))
                                                  (_%hd255203255247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e255202255244%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd255203255247%_))
                                                  (let ((_%e255205255252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd255203255247%_))))
                                                    (let ((_%tl255207255257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e255205255252%_)))
                                                          (_%hd255206255255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e255205255252%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd255206255255%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd255206255255%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255207255257%_))
                          (let ((_%e255208255260%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl255207255257%_))))
                            (let ((_%tl255210255265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255208255260%_)))
                                  (_%hd255209255263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255208255260%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255210255265%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl255204255249%_))
                                      (let ((_%__splice257342257343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl255204255249%_
                                                '0))))
                                        (let ((_%tl255213255270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257342257343%_
                                                  '1)))
                                              (_%target255211255268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257342257343%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl255213255270%_))
                                              (_%__match257423257424%_
                                               _%e255185255367%_
                                               _%hd255186255370%_
                                               _%tl255187255372%_
                                               _%e255202255244%_
                                               _%hd255203255247%_
                                               _%tl255204255249%_
                                               _%e255205255252%_
                                               _%hd255206255255%_
                                               _%tl255207255257%_
                                               _%e255208255260%_
                                               _%hd255209255263%_
                                               _%tl255210255265%_
                                               _%__splice257342257343%_
                                               _%target255211255268%_
                                               _%tl255213255270%_)
                                              (_%__kont257344257345%_))))
                                      (_%__kont257344257345%_))
                                  (_%__kont257344257345%_))))
                          (_%__kont257344257345%_))
                      (_%__kont257344257345%_))
                  (_%__kont257344257345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257344257345%_))))
                                          (_%__kont257344257345%_))
                                      (_%__kont257344257345%_))))
                          (_%__kont257344257345%_))))
                  (_%__kont257344257345%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx255173%_ _%klass255174%_)
        (let ((_%expr-type255176%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx255173%_))))
          (if _%expr-type255176%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type255176%_ _%klass255174%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr255157%_ _%type255158%_)
        (if (not _%type255158%_)
            '#f
            (if (eq? (##structure-ref _%type255158%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type255158%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type255164%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr255157%_))))
                      (if (not _%expr-type255164%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type255164%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type255164%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type255164%_
                                         _%type255158%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type255158%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type255158%_
                                                 _%expr-type255164%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx255135%_ _%expr255136%_ _%type255137%_)
        (if (not _%type255137%_)
            '#f
            (let ((_%$e255140%_
                   (eq? (##structure-ref _%type255137%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e255140%_
                  _%$e255140%_
                  (let ((_%expr-type255144%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr255136%_))))
                    (if (not _%expr-type255144%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type255144%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e255148%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type255144%_
                                      'gxc#!abort::t))))
                              (if _%$e255148%_
                                  _%$e255148%_
                                  (let ((_%$e255151%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type255144%_
                                            _%type255137%_))))
                                    (if _%$e255151%_
                                        _%$e255151%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type255137%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type255137%_
                                                   _%expr-type255144%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx255135%_
                                                   _%expr255136%_
                                                   _%expr-type255144%_
                                                   _%type255137%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self254949%_ _%ctx254950%_ _%stx254951%_ _%args254952%_)
        (let* ((_%self254955%_ _%self254949%_)
               (_%klass254965%_
                (let ((__tmp258025
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254955%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx254951%_ __tmp258025)))
               (_%fields254967%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254965%_
                           '5
                           '#f
                           '#f))))
               (_%args254973%_
                (map (lambda (_%g254968254970%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx254950%_ _%g254968254970%_)))
                     _%args254952%_))
               (_%inline-make-object254975%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self254955%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self254955%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields254967%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass254978%_ _%klass254965%_)
               (_%$e254992%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass254978%_ '6 '#f '#f))))
          (if _%$e254992%_
              (let ((_%$obj254997%_
                     (let ((__tmp258026
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp258026)))
                    (_%ctor-impl254998%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass254978%_
                        _%$e254992%_))))
                (let ((__tmp258027
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254997%_ '())
                                               (cons _%inline-make-object254975%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl254998%_
                                                         (let ((__tmp258028
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl254998%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj254997%_ '()))
                                          _%args254973%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp258028
                    _%stx254951%_
                    _%ctx254950%_))
                 (let ((_%$ctor255000%_
                        (let ((__tmp258029
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp258029))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor255000%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254955%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj254997%_ '()))
                                 (cons (cons '%#quote (cons _%$e254992%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor255000%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor255000%_ '()))
                           (cons (cons '%#ref (cons _%$obj254997%_ '()))
                                 _%args254973%_)))
               (cons (cons '%#call
                           (cons (cons '%#ref (cons 'error '()))
                                 (cons (cons '%#quote
                                             (cons '"missing constructor method implementation"
                                                   '()))
                                       (cons (cons '%#quote (cons 'class: '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self254955%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e254992%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj254997%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp258027 _%stx254951%_)))
              (let ((_%$e255002%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass254978%_
                        '10
                        '#f
                        '#f))))
                (if _%$e255002%_
                    (let* ((_%$obj255007%_
                            (let ((__tmp258030
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp258030)))
                           (_%metakons255009%_
                            (let ((__tmp258031
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx254951%_
                                      _%$e255002%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp258031
                               'instance-init!)))
                           (__tmp258032
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj255007%_ '())
                                                    (cons _%inline-make-object254975%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons255009%_
                                                              (let ((__tmp258033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons255009%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254955%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj255007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args254973%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp258033
                         _%stx254951%_
                         _%ctx254950%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254955%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj255007%_
                                                                '()))
                                                    _%args254973%_))))))
                  (cons (cons '%#ref (cons _%$obj255007%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp258032 _%stx254951%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254978%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp258034
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args254973%_))))
                              (declare (not safe))
                              (##fx= __tmp258034 _%fields254967%_))
                            (let ((__tmp258035
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254955%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254955%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args254973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp258035
                               _%stx254951%_))
                            (let ((__tmp258037
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254955%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp258036
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass254978%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx254951%_
                               __tmp258037
                               __tmp258036)))
                        (let ((_%$obj255014%_
                               (let ((__tmp258038
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp258038))))
                          (let _%lp255016%_ ((_%rest255018%_ _%args254973%_)
                                             (_%initializers255019%_ '()))
                            (let* ((_%__stx257426257427%_ _%rest255018%_)
                                   (_%g255023255044%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx257426257427%_)))))
                              (let ((_%__kont257428257429%_
                                     (lambda (_%g255025255098%_
                                              _%g255026255099%_
                                              _%g255027255100%_)
                                       (let* ((_%slot255127%_
                                               (let ((__tmp258039
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g255027255100%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp258039)))
                                              (_%off255129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass254978%_
                                                  _%slot255127%_))))
                                         (if _%off255129%_
                                             (_%lp255016%_
                                              _%g255025255098%_
                                              (cons (cons _%off255129%_
                                                          _%g255026255099%_)
                                                    _%initializers255019%_))
                                             (let ((__tmp258040
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254955%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx254951%_
                                                __tmp258040
                                                _%slot255127%_))))))
                                    (_%__kont257430257431%_
                                     (lambda ()
                                       (let ((__tmp258041
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj255014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254975%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp258044
                                     (cons (cons '%#ref
                                                 (cons _%$obj255014%_ '()))
                                           '()))
                                    (__tmp258042
                                     (let ((__tmp258043
                                            (lambda (_%i255058%_ _%r255059%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254955%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i255058%_) '()))
                              (cons (cons '%#ref (cons _%$obj255014%_ '()))
                                    (cons (cdr _%i255058%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r255059%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp258043
                                        '()
                                        _%initializers255019%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp258044 __tmp258042)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp258041
                                          _%stx254951%_))))
                                    (_%__kont257432257433%_
                                     (lambda ()
                                       (let ((__tmp258045
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj255014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254975%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj255014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args254973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj255014%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp258045
                                          _%stx254951%_)))))
                                (let* ((_%g255021255061%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx257426257427%_))
                                              (_%__kont257430257431%_)
                                              (_%__kont257432257433%_))))
                                       (_%__match257463257464%_
                                        (lambda (_%e255028255066%_
                                                 _%hd255029255069%_
                                                 _%tl255030255071%_
                                                 _%e255031255074%_
                                                 _%hd255032255077%_
                                                 _%tl255033255079%_
                                                 _%e255034255082%_
                                                 _%hd255035255085%_
                                                 _%tl255036255087%_
                                                 _%e255037255090%_
                                                 _%hd255038255093%_
                                                 _%tl255039255095%_)
                                          (let ((_%g255025255098%_
                                                 _%tl255039255095%_)
                                                (_%g255026255099%_
                                                 _%hd255038255093%_)
                                                (_%g255027255100%_
                                                 _%hd255035255085%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g255027255100%_))
                                                (_%__kont257428257429%_
                                                 _%g255025255098%_
                                                 _%g255026255099%_
                                                 _%g255027255100%_)
                                                (_%__kont257432257433%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257426257427%_))
                                      (let ((_%e255028255066%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257426257427%_))))
                                        (let ((_%tl255030255071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255028255066%_)))
                                              (_%hd255029255069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255028255066%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd255029255069%_))
                                              (let ((_%e255031255074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd255029255069%_))))
                                                (let ((_%tl255033255079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e255031255074%_)))
                                                      (_%hd255032255077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e255031255074%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd255032255077%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd255032255077%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl255033255079%_))
                      (let ((_%e255034255082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl255033255079%_))))
                        (let ((_%tl255036255087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255034255082%_)))
                              (_%hd255035255085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255034255082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255036255087%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl255030255071%_))
                                  (let ((_%e255037255090%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl255030255071%_))))
                                    (let ((_%tl255039255095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255037255090%_)))
                                          (_%hd255038255093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255037255090%_))))
                                      (_%__match257463257464%_
                                       _%e255028255066%_
                                       _%hd255029255069%_
                                       _%tl255030255071%_
                                       _%e255031255074%_
                                       _%hd255032255077%_
                                       _%tl255033255079%_
                                       _%e255034255082%_
                                       _%hd255035255085%_
                                       _%tl255036255087%_
                                       _%e255037255090%_
                                       _%hd255038255093%_
                                       _%tl255039255095%_)))
                                  (_%__kont257432257433%_))
                              (_%__kont257432257433%_))))
                      (_%__kont257432257433%_))
                  (_%__kont257432257433%_))
              (_%__kont257432257433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257432257433%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g255021255061%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self254811%_ _%ctx254812%_ _%stx254813%_ _%args254814%_)
        (let ((_%self254817%_ _%self254811%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self254817%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self254817%_
               _%ctx254812%_
               _%stx254813%_
               _%args254814%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self254594%_ _%ctx254595%_ _%stx254596%_ _%args254597%_)
        (let* ((_%self254600%_ _%self254594%_)
               (_%arguments-ok?254610%_
                (let ((__method257973
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254600%_ 'check-arguments))))
                  (if __method257973
                      (let ()
                        (declare (not safe))
                        (__method257973
                         _%self254600%_
                         _%ctx254595%_
                         _%stx254596%_
                         _%args254597%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254600%_
                                 'check-arguments))
                        '#!void))))
               (_%g254612254622%_
                (lambda (_%g254613254619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254613254619%_))))
               (_%g254611254686%_
                (lambda (_%g254613254625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254613254625%_))
                      (let ((_%e254615254627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254613254625%_))))
                        (let ((_%hd254616254630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254615254627%_)))
                              (_%tl254617254632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254615254627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254617254632%_))
                              (let* ((_%klass254648%_
                                      (let ((__tmp258046
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254600%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254596%_
                                         __tmp258046)))
                                     (_%field254650%_
                                      (let ((__tmp258047
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254600%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass254648%_
                                         __tmp258047)))
                                     (_%object254652%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254595%_
                                         _%hd254616254630%_)))
                                     (_%klass254655%_ _%klass254648%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass254655%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp258048
                                           (cons (if (or _%arguments-ok?254610%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254600%_
                         '4
                         '#f
                         '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-unchecked-ref
                                                     '%#struct-direct-ref)
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254600%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field254650%_ '()))
                     (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258048
                                       _%stx254596%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254655%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp258049
                                               (cons (if (or _%arguments-ok?254610%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254600%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254600%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254650%_ '()))
                         (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp258049
                                           _%stx254596%_))
                                        (let ((_%$e254674%_
                                               (let ((__tmp258050
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254600%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass254655%_
                                                  __tmp258050))))
                                          (if _%$e254674%_
                                              (let ((__tmp258051
                                                     (cons (if (or _%arguments-ok?254610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self254600%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self254600%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field254650%_ '()))
                               (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp258051
                                                 _%stx254596%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self254600%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp258052
                                                         (let ((_%$obj254683%_
                                                                (let ((__tmp258053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp258053))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj254683%_ '())
                                           (cons _%object254652%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass254655%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj254683%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254600%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254650%_ '()))
                                 (cons (cons '%#ref (cons _%$obj254683%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?254610%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254683%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254600%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self254600%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj254683%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254600%_
                              '3
                              '#f
                              '#f))
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp258052
                                                     _%stx254596%_))
                                                  (let ((__tmp258054
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object254652%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254600%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp258054
                                                     _%stx254596%_))))))))
                              (_%g254612254622%_ _%g254613254625%_))))
                      (_%g254612254622%_ _%g254613254625%_)))))
          (_%g254611254686%_ _%args254597%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass257080 __method-table257081)
        (let ((__check-arguments257082
               (let ((__tmp258055
                      (lambda ()
                        (let ((__method257083
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257081
                                  'check-arguments
                                  '#f))))
                          (if __method257083
                              __method257083
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258055)))
              (__slot257084
               (let ((__slot257085
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass257080 'slot))))
                 (if __slot257085
                     __slot257085
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self254594%_ _%ctx254595%_ _%stx254596%_ _%args254597%_)
            (let* ((_%self254600%_ _%self254594%_)
                   (_%arguments-ok?254610%_
                    ((force __check-arguments257082)
                     _%self254600%_
                     _%ctx254595%_
                     _%stx254596%_
                     _%args254597%_))
                   (_%g254612254622%_
                    (lambda (_%g254613254619%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g254613254619%_))))
                   (_%g254611254686%_
                    (lambda (_%g254613254625%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g254613254625%_))
                          (let ((_%e254615254627%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g254613254625%_))))
                            (let ((_%hd254616254630%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254615254627%_)))
                                  (_%tl254617254632%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254615254627%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254617254632%_))
                                  (let* ((_%klass254648%_
                                          (let ((__tmp258056
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254600%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx254596%_
                                             __tmp258056)))
                                         (_%field254650%_
                                          (let ((__tmp258057
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254600%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass254648%_
                                             __tmp258057)))
                                         (_%object254652%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx254595%_
                                             _%hd254616254630%_)))
                                         (_%klass254655%_ _%klass254648%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254655%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp258058
                                               (cons (if (or _%arguments-ok?254610%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254600%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254600%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254650%_ '()))
                         (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp258058
                                           _%stx254596%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254655%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp258059
                                                   (cons (if (or _%arguments-ok?254610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254600%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254600%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254650%_ '()))
                             (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258059
                                               _%stx254596%_))
                                            (let ((_%$e254674%_
                                                   (let ((__tmp258060
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self254600%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass254655%_
                                                      __tmp258060))))
                                              (if _%$e254674%_
                                                  (let ((__tmp258061
                                                         (cons (if (or _%arguments-ok?254610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254600%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self254600%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field254650%_ '()))
                                   (cons _%object254652%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp258061
                                                     _%stx254596%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254600%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp258062
                                                             (let ((_%$obj254683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp258063
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp258063))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254683%_ '())
                                               (cons _%object254652%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass254655%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj254683%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254600%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254650%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254683%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?254610%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254683%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254600%_
                            __slot257084
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'class-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254600%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254600%_
                                  '3
                                  '#f
                                  '#f))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp258062 _%stx254596%_))
              (let ((__tmp258064
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object254652%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254600%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp258064 _%stx254596%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g254612254622%_ _%g254613254625%_))))
                          (_%g254612254622%_ _%g254613254625%_)))))
              (_%g254611254686%_ _%args254597%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self254358%_ _%ctx254359%_ _%stx254360%_ _%args254361%_)
        (let* ((_%self254364%_ _%self254358%_)
               (_%arguments-ok?254374%_
                (let ((__method257974
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254364%_ 'check-arguments))))
                  (if __method257974
                      (let ()
                        (declare (not safe))
                        (__method257974
                         _%self254364%_
                         _%ctx254359%_
                         _%stx254360%_
                         _%args254361%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254364%_
                                 'check-arguments))
                        '#!void))))
               (_%g254376254390%_
                (lambda (_%g254377254387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254377254387%_))))
               (_%g254375254469%_
                (lambda (_%g254377254393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254377254393%_))
                      (let ((_%e254380254395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254377254393%_))))
                        (let ((_%hd254381254398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254380254395%_)))
                              (_%tl254382254400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254380254395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl254382254400%_))
                              (let ((_%e254383254403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl254382254400%_))))
                                (let ((_%hd254384254406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254383254403%_)))
                                      (_%tl254385254408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254383254403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl254385254408%_))
                                      (let* ((_%klass254428%_
                                              (let ((__tmp258065
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254364%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx254360%_
                                                 __tmp258065)))
                                             (_%field254430%_
                                              (let ((__tmp258066
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254364%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass254428%_
                                                 __tmp258066)))
                                             (_%object254432%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx254359%_
                                                 _%hd254381254398%_)))
                                             (_%value254434%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx254359%_
                                                 _%hd254384254406%_)))
                                             (_%klass254437%_ _%klass254428%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254437%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp258067
                                                   (cons (if (or _%arguments-ok?254374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254364%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254364%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254430%_ '()))
                             (cons _%object254432%_
                                   (cons _%value254434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258067
                                               _%stx254360%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass254437%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258068
                                                       (cons (if (or _%arguments-ok?254374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self254364%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254364%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254430%_ '()))
                                 (cons _%object254432%_
                                       (cons _%value254434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258068
                                                   _%stx254360%_))
                                                (let ((_%$e254457%_
                                                       (let ((__tmp258069
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254364%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass254437%_ __tmp258069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e254457%_
                                                      (let ((__tmp258070
                                                             (cons (if (or _%arguments-ok?254374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self254364%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254364%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field254430%_ '()))
                                       (cons _%object254432%_
                                             (cons _%value254434%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp258070 _%stx254360%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self254364%_ '4 '#f '#f))
                  (let ((__tmp258071
                         (let ((_%$obj254466%_
                                (let ((__tmp258072
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp258072))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj254466%_ '())
                                                   (cons _%object254432%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass254437%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj254466%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self254364%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field254430%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254466%_ '()))
                                               (cons _%value254434%_ '())))))
                       (cons (if _%arguments-ok?254374%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj254466%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self254364%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value254434%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self254364%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj254466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254364%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value254434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258071 _%stx254360%_))
                  (let ((__tmp258073
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object254432%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254364%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value254434%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258073 _%stx254360%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g254376254390%_ _%g254377254393%_))))
                              (_%g254376254390%_ _%g254377254393%_))))
                      (_%g254376254390%_ _%g254377254393%_)))))
          (_%g254375254469%_ _%args254361%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass257086 __method-table257087)
        (let ((__check-arguments257088
               (let ((__tmp258074
                      (lambda ()
                        (let ((__method257089
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257087
                                  'check-arguments
                                  '#f))))
                          (if __method257089
                              __method257089
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258074))))
          (lambda (_%self254358%_ _%ctx254359%_ _%stx254360%_ _%args254361%_)
            (let* ((_%self254364%_ _%self254358%_)
                   (_%arguments-ok?254374%_
                    ((force __check-arguments257088)
                     _%self254364%_
                     _%ctx254359%_
                     _%stx254360%_
                     _%args254361%_))
                   (_%g254376254390%_
                    (lambda (_%g254377254387%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g254377254387%_))))
                   (_%g254375254469%_
                    (lambda (_%g254377254393%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g254377254393%_))
                          (let ((_%e254380254395%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g254377254393%_))))
                            (let ((_%hd254381254398%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254380254395%_)))
                                  (_%tl254382254400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254380254395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254382254400%_))
                                  (let ((_%e254383254403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254382254400%_))))
                                    (let ((_%hd254384254406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254383254403%_)))
                                          (_%tl254385254408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254383254403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl254385254408%_))
                                          (let* ((_%klass254428%_
                                                  (let ((__tmp258075
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254364%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx254360%_
                                                     __tmp258075)))
                                                 (_%field254430%_
                                                  (let ((__tmp258076
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254364%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass254428%_
                                                     __tmp258076)))
                                                 (_%object254432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx254359%_
                                                     _%hd254381254398%_)))
                                                 (_%value254434%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx254359%_
                                                     _%hd254384254406%_)))
                                                 (_%klass254437%_
                                                  _%klass254428%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass254437%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258077
                                                       (cons (if (or _%arguments-ok?254374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self254364%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254364%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254430%_ '()))
                                 (cons _%object254432%_
                                       (cons _%value254434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258077
                                                   _%stx254360%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass254437%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp258078
                                                           (cons (if (or _%arguments-ok?254374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self254364%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254364%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254430%_ '()))
                                     (cons _%object254432%_
                                           (cons _%value254434%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp258078 _%stx254360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e254457%_
                                                           (let ((__tmp258079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254364%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass254437%_
                      __tmp258079))))
              (if _%$e254457%_
                  (let ((__tmp258080
                         (cons (if (or _%arguments-ok?254374%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self254364%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254364%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field254430%_ '()))
                                           (cons _%object254432%_
                                                 (cons _%value254434%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258080 _%stx254360%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254364%_ '4 '#f '#f))
                      (let ((__tmp258081
                             (let ((_%$obj254466%_
                                    (let ((__tmp258082
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp258082))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj254466%_
                                                             '())
                                                       (cons _%object254432%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass254437%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj254466%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self254364%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field254430%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj254466%_
                                                               '()))
                                                   (cons _%value254434%_
                                                         '())))))
                           (cons (if _%arguments-ok?254374%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj254466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self254364%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value254434%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'class-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254364%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj254466%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254364%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value254434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp258081 _%stx254360%_))
                      (let ((__tmp258083
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object254432%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254364%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value254434%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp258083
                         _%stx254360%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g254376254390%_
                                           _%g254377254393%_))))
                                  (_%g254376254390%_ _%g254377254393%_))))
                          (_%g254376254390%_ _%g254377254393%_)))))
              (_%g254375254469%_ _%args254361%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self254174%_ _%ctx254175%_ _%stx254176%_ _%args254177%_)
        (let* ((_%self254180%_ _%self254174%_)
               (_%self254189254199%_ _%self254180%_)
               (_%E254191254202%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self254189254199%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K254192254212%_
                (lambda (_%inline254205%_ _%dispatch254206%_ _%arity254207%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self254180%_
                         _%args254177%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx254176%_
                         _%arity254207%_)))
                  (if _%inline254205%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp258084 (_%inline254205%_ _%stx254176%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp258084
                           _%stx254176%_
                           _%ctx254175%_)))
                      (if (and _%dispatch254206%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch254206%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch254206%_))
                            (let ((__tmp258085
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch254206%_
                                                           '()))
                                               _%args254177%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp258085
                               _%stx254176%_
                               _%ctx254175%_)))
                          (gxc#!procedure::optimize-call
                           _%self254180%_
                           _%ctx254175%_
                           _%stx254176%_
                           _%args254177%_)))))
               (_%e254193254215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254189254199%_ '1 '#f '#f)))
               (_%e254194254218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254189254199%_ '2 '#f '#f)))
               (_%e254195254221%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254189254199%_ '3 '#f '#f)))
               (_%arity254224%_ _%e254195254221%_)
               (_%e254196254226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254189254199%_ '4 '#f '#f)))
               (_%dispatch254229%_ _%e254196254226%_)
               (_%e254197254231%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254189254199%_ '5 '#f '#f)))
               (_%inline254234%_ _%e254197254231%_))
          (_%K254192254212%_
           _%inline254234%_
           _%dispatch254229%_
           _%arity254224%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self254026%_ _%ctx254027%_ _%stx254028%_ _%args254029%_)
        (let* ((_%self254032%_ _%self254026%_)
               (_%$e254046%_
                (let ((__tmp258087
                       (lambda (_%g254041254043%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g254041254043%_
                            _%args254029%_))))
                      (__tmp258086
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254032%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp258087 __tmp258086))))
          (if _%$e254046%_
              (let ((__method257975
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e254046%_ 'optimize-call))))
                (if __method257975
                    (let ()
                      (declare (not safe))
                      (__method257975
                       _%$e254046%_
                       _%ctx254027%_
                       _%stx254028%_
                       _%args254029%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e254046%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp258088
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254032%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx254028%_
                 __tmp258088))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self253767%_ _%ctx253768%_ _%stx253769%_ _%args253770%_)
        (let* ((_%self253773%_ _%self253767%_)
               (_%self253782253791%_ _%self253773%_)
               (_%E253784253794%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253782253791%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K253785253885%_
                (lambda (_%dispatch253797%_ _%table253798%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch253797%_))
                      (let* ((_%g253799253809%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch253797%_)))
                             (_%else253801253817%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch253797%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx253768%_
                                   _%stx253769%_))))
                             (_%K253803253866%_
                              (lambda (_%main253820%_ _%keys253821%_)
                                (let ((_g258089_
                                       (gxc#!kw-lambda-split-args
                                        _%stx253769%_
                                        _%args253770%_)))
                                  (begin
                                    (let ((_g258090_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g258089_)
                                                 (##values-length _g258089_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g258090_ 2)))
                                          (error "Context expects 2 values"
                                                 _g258090_)))
                                    (let ((_%pargs253823%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g258089_ 0)))
                                          (_%kwargs253824%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g258089_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main253820%_))
                                        (if _%table253798%_
                                            (let ((_%xargs253832%_
                                                   (map (lambda (_%key253826%_)
                                                          (let ((_%$e253828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key253826%_ _%kwargs253824%_))))
                    (if _%$e253828%_ _%$e253828%_ '(%#ref absent-value))))
                _%keys253821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw253834%_)
                                                 (if (memq (car _%kw253834%_)
                                                           _%keys253821%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx253769%_
                                                        _%keys253821%_
                                                        _%kw253834%_))))
                                               _%kwargs253824%_)
                                              (let ((__tmp258091
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main253820%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs253823%_
                                  _%xargs253832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp258091
                                                 _%stx253769%_
                                                 _%ctx253768%_)))
                                            (let* ((_%kwt253836%_
                                                    (let ((__tmp258092
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp258092)))
                                                   (_%kwvars253840%_
                                                    (map (lambda (_%_253838%_)
                                                           (let ((__tmp258093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp258093)))
                 _%kwargs253824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind253845%_
                                                    (map (lambda (_%kw253842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253843%_)
                   (cons (cons _%kwvar253843%_ '())
                         (cons (cdr _%kw253842%_) '())))
                 _%kwargs253824%_
                 _%kwvars253840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset253850%_
                                                    (map (lambda (_%kw253847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253848%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt253836%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw253847%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar253848%_
                                                             '()))
                                                 '()))))))
                 _%kwargs253824%_
                 _%kwvars253840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs253855%_
                                                    (map (lambda (_%kw253852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253853%_)
                   (cons (car _%kw253852%_)
                         (cons '%#ref (cons _%kwvar253853%_ '()))))
                 _%kwargs253824%_
                 _%kwvars253840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs253863%_
                                                    (map (lambda (_%key253857%_)
                                                           (let ((_%$e253859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key253857%_ _%xkwargs253855%_))))
                     (if _%$e253859%_ _%$e253859%_ '(%#ref absent-value))))
                 _%keys253821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp258094
                                                    (cons '%#let-values
                                                          (cons _%kwbind253845%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt253836%_ '())
                                                      (cons (let ((__tmp258095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs253824%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp258095 _%stx253769%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp258096
                                                             (cons (let ((__tmp258097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main253820%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt253836%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs253823%_
                                                       _%xargs253863%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp258097 _%stx253769%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp258096 _%kwset253850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp258094
                                               _%stx253769%_
                                               _%ctx253768%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g253799253809%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e253804253869%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253799253809%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e253805253872%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253799253809%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e253806253875%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253799253809%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys253878%_ _%e253806253875%_)
                                   (_%e253807253880%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253799253809%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main253883%_ _%e253807253880%_))
                              (_%K253803253866%_
                               _%main253883%_
                               _%keys253878%_))
                            (_%else253801253817%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx253768%_ _%stx253769%_)))))
               (_%e253786253888%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253782253791%_ '1 '#f '#f)))
               (_%e253787253891%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253782253791%_ '2 '#f '#f)))
               (_%e253788253894%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253782253791%_ '3 '#f '#f)))
               (_%table253897%_ _%e253788253894%_)
               (_%e253789253899%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253782253791%_ '4 '#f '#f)))
               (_%dispatch253902%_ _%e253789253899%_))
          (_%K253785253885%_ _%dispatch253902%_ _%table253897%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx253380%_ _%args253381%_)
        (let _%lp253383%_ ((_%rest253385%_ _%args253381%_)
                           (_%pargs253386%_ '())
                           (_%kwargs253387%_ '()))
          (let* ((_%__stx257468257469%_ _%rest253385%_)
                 (_%g253393253445%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257468257469%_)))))
            (let ((_%__kont257470257471%_
                   (lambda (_%g253395253624%_ _%g253396253625%_)
                     (_%lp253383%_
                      _%g253395253624%_
                      (cons _%g253396253625%_ _%pargs253386%_)
                      _%kwargs253387%_)))
                  (_%__kont257472257473%_
                   (lambda (_%g253410253570%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g253410253570%_
                                _%pargs253386%_))
                             (reverse _%kwargs253387%_))))
                  (_%__kont257474257475%_
                   (lambda (_%g253421253517%_
                            _%g253422253518%_
                            _%g253423253519%_)
                     (let ((_%kw253536%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g253423253519%_))))
                       (if (assq _%kw253536%_ _%kwargs253387%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx253380%_
                              _%kw253536%_))
                           (_%lp253383%_
                            _%g253421253517%_
                            _%pargs253386%_
                            (cons (cons _%kw253536%_ _%g253422253518%_)
                                  _%kwargs253387%_))))))
                  (_%__kont257476257477%_
                   (lambda (_%g253436253465%_ _%g253437253466%_)
                     (_%lp253383%_
                      _%g253436253465%_
                      (cons _%g253437253466%_ _%pargs253386%_)
                      _%kwargs253387%_)))
                  (_%__kont257478257479%_
                   (lambda ()
                     (values (reverse _%pargs253386%_)
                             (reverse _%kwargs253387%_)))))
              (let ((_%__match257575257576%_
                     (lambda (_%e253424253485%_
                              _%hd253425253488%_
                              _%tl253426253490%_
                              _%e253427253493%_
                              _%hd253428253496%_
                              _%tl253429253498%_
                              _%e253430253501%_
                              _%hd253431253504%_
                              _%tl253432253506%_
                              _%e253433253509%_
                              _%hd253434253512%_
                              _%tl253435253514%_)
                       (let ((_%g253421253517%_ _%tl253435253514%_)
                             (_%g253422253518%_ _%hd253434253512%_)
                             (_%g253423253519%_ _%hd253431253504%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g253423253519%_))
                             (_%__kont257474257475%_
                              _%g253421253517%_
                              _%g253422253518%_
                              _%g253423253519%_)
                             (_%__kont257476257477%_
                              _%tl253426253490%_
                              _%hd253425253488%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257468257469%_))
                    (let ((_%e253397253589%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257468257469%_))))
                      (let ((_%tl253399253594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253397253589%_)))
                            (_%hd253398253592%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253397253589%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd253398253592%_))
                            (let ((_%e253400253597%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd253398253592%_))))
                              (let ((_%tl253402253602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253400253597%_)))
                                    (_%hd253401253600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253400253597%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd253401253600%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd253401253600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253402253602%_))
                                            (let ((_%e253403253605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253402253602%_))))
                                              (let ((_%tl253405253610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253403253605%_)))
                                                    (_%hd253404253608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253403253605%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd253404253608%_))
                                                    (let ((_%e253406253613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd253404253608%_))))
                                                      (if (equal? _%e253406253613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253405253610%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253399253594%_))
                          (let ((_%e253407253616%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253399253594%_))))
                            (let ((_%tl253409253621%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253407253616%_)))
                                  (_%hd253408253619%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253407253616%_))))
                              (_%__kont257470257471%_
                               _%tl253409253621%_
                               _%hd253408253619%_)))
                          (_%__kont257476257477%_
                           _%tl253399253594%_
                           _%hd253398253592%_))
                      (_%__kont257476257477%_
                       _%tl253399253594%_
                       _%hd253398253592%_))
                  (if (equal? _%e253406253613%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl253405253610%_))
                          (_%__kont257472257473%_ _%tl253399253594%_)
                          (_%__kont257476257477%_
                           _%tl253399253594%_
                           _%hd253398253592%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl253405253610%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253399253594%_))
                              (let ((_%e253433253509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl253399253594%_))))
                                (let ((_%tl253435253514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253433253509%_)))
                                      (_%hd253434253512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253433253509%_))))
                                  (_%__match257575257576%_
                                   _%e253397253589%_
                                   _%hd253398253592%_
                                   _%tl253399253594%_
                                   _%e253400253597%_
                                   _%hd253401253600%_
                                   _%tl253402253602%_
                                   _%e253403253605%_
                                   _%hd253404253608%_
                                   _%tl253405253610%_
                                   _%e253433253509%_
                                   _%hd253434253512%_
                                   _%tl253435253514%_)))
                              (_%__kont257476257477%_
                               _%tl253399253594%_
                               _%hd253398253592%_))
                          (_%__kont257476257477%_
                           _%tl253399253594%_
                           _%hd253398253592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253405253610%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl253399253594%_))
                                                            (let ((_%e253433253509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253399253594%_))))
                      (let ((_%tl253435253514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253433253509%_)))
                            (_%hd253434253512%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253433253509%_))))
                        (_%__match257575257576%_
                         _%e253397253589%_
                         _%hd253398253592%_
                         _%tl253399253594%_
                         _%e253400253597%_
                         _%hd253401253600%_
                         _%tl253402253602%_
                         _%e253403253605%_
                         _%hd253404253608%_
                         _%tl253405253610%_
                         _%e253433253509%_
                         _%hd253434253512%_
                         _%tl253435253514%_)))
                    (_%__kont257476257477%_
                     _%tl253399253594%_
                     _%hd253398253592%_))
                (_%__kont257476257477%_
                 _%tl253399253594%_
                 _%hd253398253592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont257476257477%_
                                             _%tl253399253594%_
                                             _%hd253398253592%_))
                                        (_%__kont257476257477%_
                                         _%tl253399253594%_
                                         _%hd253398253592%_))
                                    (_%__kont257476257477%_
                                     _%tl253399253594%_
                                     _%hd253398253592%_))))
                            (_%__kont257476257477%_
                             _%tl253399253594%_
                             _%hd253398253592%_))))
                    (_%__kont257478257479%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self253364%_ _%ctx253365%_ _%stx253366%_ _%args253367%_)
        (let ((_%self253370%_ _%self253364%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx253365%_ _%stx253366%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self253054%_ _%stx253055%_)
        (let* ((_%__stx257584257585%_ _%stx253055%_)
               (_%g253058253098%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257584257585%_)))))
          (let ((_%__kont257586257587%_
                 (lambda (_%g253060253202%_ _%g253061253203%_)
                   (let ((_%$e253230%_
                          (member 'return:
                                  (let ((__tmp258098
                                         (lambda (_%g253222253225%_
                                                  _%g253223253227%_)
                                           (cons _%g253222253225%_
                                                 _%g253223253227%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp258098
                                     '()
                                     _%g253061253203%_))
                                  gx#stx-eq?)))
                     (if _%$e253230%_
                         (let ((_%type253235%_
                                (let ((__tmp258099
                                       (let ((__tmp258100 (cadr _%$e253230%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp258100))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx253055%_
                                   __tmp258099))))
                           (gxc#check-return-type!
                            _%stx253055%_
                            _%g253060253202%_
                            _%type253235%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self253054%_
                              _%g253060253202%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self253054%_
                            _%g253060253202%_))))))
                (_%__kont257590257591%_
                 (lambda (_%g253083253127%_ _%g253084253128%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self253054%_ _%g253083253127%_)))))
            (let ((_%__match257621257622%_
                   (lambda (_%e253062253148%_
                            _%hd253063253151%_
                            _%tl253064253153%_
                            _%e253065253156%_
                            _%hd253066253159%_
                            _%tl253067253161%_
                            _%e253068253164%_
                            _%hd253069253167%_
                            _%tl253070253169%_
                            _%__splice257588257589%_
                            _%target253071253172%_
                            _%tl253073253174%_)
                     (letrec ((_%loop253074253177%_
                               (lambda (_%hd253072253180%_
                                        _%signature253078253182%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd253072253180%_))
                                     (let ((_%e253075253184%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd253072253180%_))))
                                       (let ((_%lp-tl253077253189%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e253075253184%_)))
                                             (_%lp-hd253076253187%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e253075253184%_))))
                                         (_%loop253074253177%_
                                          _%lp-tl253077253189%_
                                          (cons _%lp-hd253076253187%_
                                                _%signature253078253182%_))))
                                     (let ((_%signature253079253192%_
                                            (reverse _%signature253078253182%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl253067253161%_))
                                           (let ((_%e253080253194%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl253067253161%_))))
                                             (let ((_%tl253082253199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e253080253194%_)))
                                                   (_%hd253081253197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e253080253194%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl253082253199%_))
                                                   (_%__kont257586257587%_
                                                    _%hd253081253197%_
                                                    _%signature253079253192%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g253058253098%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g253058253098%_))))))))
                       (_%loop253074253177%_ _%target253071253172%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257584257585%_))
                  (let ((_%e253062253148%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257584257585%_))))
                    (let ((_%tl253064253153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253062253148%_)))
                          (_%hd253063253151%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253062253148%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253064253153%_))
                          (let ((_%e253065253156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253064253153%_))))
                            (let ((_%tl253067253161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253065253156%_)))
                                  (_%hd253066253159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253065253156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253066253159%_))
                                  (let ((_%e253068253164%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253066253159%_))))
                                    (let ((_%tl253070253169%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253068253164%_)))
                                          (_%hd253069253167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253068253164%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253069253167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd253069253167%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253070253169%_))
                                                  (let ((_%__splice257588257589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253070253169%_
                                                            '0))))
                                                    (let ((_%tl253073253174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257588257589%_
                                                              '1)))
                                                          (_%target253071253172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257588257589%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253073253174%_))
                                                          (_%__match257621257622%_
                                                           _%e253062253148%_
                                                           _%hd253063253151%_
                                                           _%tl253064253153%_
                                                           _%e253065253156%_
                                                           _%hd253066253159%_
                                                           _%tl253067253161%_
                                                           _%e253068253164%_
                                                           _%hd253069253167%_
                                                           _%tl253070253169%_
                                                           _%__splice257588257589%_
                                                           _%target253071253172%_
                                                           _%tl253073253174%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253067253161%_))
                      (let ((_%e253091253119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253067253161%_))))
                        (let ((_%tl253093253124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253091253119%_)))
                              (_%hd253092253122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253091253119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253093253124%_))
                              (_%__kont257590257591%_
                               _%hd253092253122%_
                               _%hd253066253159%_)
                              (let ()
                                (declare (not safe))
                                (_%g253058253098%_)))))
                      (let () (declare (not safe)) (_%g253058253098%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl253067253161%_))
                                                      (let ((_%e253091253119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl253067253161%_))))
                (let ((_%tl253093253124%_
                       (let () (declare (not safe)) (##cdr _%e253091253119%_)))
                      (_%hd253092253122%_
                       (let ()
                         (declare (not safe))
                         (##car _%e253091253119%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253093253124%_))
                      (_%__kont257590257591%_
                       _%hd253092253122%_
                       _%hd253066253159%_)
                      (let () (declare (not safe)) (_%g253058253098%_)))))
              (let () (declare (not safe)) (_%g253058253098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253067253161%_))
                                                  (let ((_%e253091253119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253067253161%_))))
                                                    (let ((_%tl253093253124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253091253119%_)))
                                                          (_%hd253092253122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253091253119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253093253124%_))
                                                          (_%__kont257590257591%_
                                                           _%hd253092253122%_
                                                           _%hd253066253159%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253058253098%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253058253098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl253067253161%_))
                                              (let ((_%e253091253119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl253067253161%_))))
                                                (let ((_%tl253093253124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253091253119%_)))
                                                      (_%hd253092253122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253091253119%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253093253124%_))
                                                      (_%__kont257590257591%_
                                                       _%hd253092253122%_
                                                       _%hd253066253159%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253058253098%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253058253098%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253067253161%_))
                                      (let ((_%e253091253119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253067253161%_))))
                                        (let ((_%tl253093253124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253091253119%_)))
                                              (_%hd253092253122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253091253119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253093253124%_))
                                              (_%__kont257590257591%_
                                               _%hd253092253122%_
                                               _%hd253066253159%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253058253098%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253058253098%_))))))
                          (let () (declare (not safe)) (_%g253058253098%_)))))
                  (let () (declare (not safe)) (_%g253058253098%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx253029%_ _%expr253030%_ _%type253031%_)
        (let ((_%$e253033%_ (not _%type253031%_)))
          (if _%$e253033%_
              _%$e253033%_
              (let ((_%$e253036%_
                     (eq? (##structure-ref _%type253031%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e253036%_
                    _%$e253036%_
                    (let ((_%$e253039%_
                           (eq? (##structure-ref
                                 _%type253031%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e253039%_
                          _%$e253039%_
                          (let ((_%expr-type253043%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr253030%_))))
                            (if (not _%expr-type253043%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx253029%_
                                   _%type253031%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type253043%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx253029%_
                                       _%type253031%_
                                       _%expr-type253043%_))
                                    (let ((_%$e253047%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type253043%_
                                              'gxc#!abort::t))))
                                      (if _%$e253047%_
                                          _%$e253047%_
                                          (let ((_%$e253050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type253043%_
                                                    _%type253031%_))))
                                            (if _%$e253050%_
                                                _%$e253050%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx253029%_
                                                   _%type253031%_
                                                   _%expr-type253043%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self252458%_ _%stx252459%_)
        (gxc#check-contract-violation!
         _%stx252459%_
         (let* ((_%__stx257670257671%_ _%stx252459%_)
                (_%g252464252574%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx257670257671%_)))))
           (let ((_%__kont257672257673%_
                  (lambda (_%g252466253003%_
                           _%g252467253004%_
                           _%g252468253005%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%g252468253005%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self252458%_ _%g252467253004%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self252458%_
                           _%g252466253003%_)))))
                 (_%__kont257674257675%_
                  (lambda (_%g252487252832%_
                           _%g252488252833%_
                           _%g252489252834%_
                           _%g252490252835%_)
                    (let ((_%$e252867%_
                           (let ((__tmp258101
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g252490252835%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp258101))))
                      (if _%$e252867%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e252867%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e252867%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test252875%_
                                      (let ((__tmp258102
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%g252490252835%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%g252489252834%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp258102
                                         _%stx252459%_
                                         _%self252458%_)))
                                     (_%K252879%_
                                      (let ((__tmp258103
                                             (lambda ()
                                               (let ((__tmp258106
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self252458%_
                                                           _%g252488252833%_))))
                                                     (__tmp258104
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%g252489252834%_))
                          (let ((__tmp258105
                                 (##structure-ref
                                  _%$e252867%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx252459%_
                             __tmp258105)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp258106
                                                  gxc#current-compile-path-type
                                                  __tmp258104)))))
                                        (declare (not safe))
                                        (__make-promise __tmp258103)))
                                     (_%E252882%_
                                      (let ((__tmp258107
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self252458%_
                                                  _%g252487252832%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp258107)))
                                     (_%__stx257644257645%_ _%test252875%_)
                                     (_%g252886252899%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx257644257645%_)))))
                                (let ((_%__kont257646257647%_
                                       (lambda (_%g252888252927%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%g252888252927%_))
                                             (force _%K252879%_)
                                             (force _%E252882%_))))
                                      (_%__kont257648257649%_
                                       (lambda ()
                                         (let ((__tmp258108
                                                (cons '%#if
                                                      (cons _%test252875%_
                                                            (cons (force _%K252879%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E252882%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp258108
                                            _%stx252459%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257644257645%_))
                                      (let ((_%e252889252911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257644257645%_))))
                                        (let ((_%tl252891252916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252889252911%_)))
                                              (_%hd252890252914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252889252911%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd252890252914%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%hd252890252914%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl252891252916%_))
                                                      (let ((_%e252892252919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl252891252916%_))))
                (let ((_%tl252894252924%_
                       (let () (declare (not safe)) (##cdr _%e252892252919%_)))
                      (_%hd252893252922%_
                       (let ()
                         (declare (not safe))
                         (##car _%e252892252919%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252894252924%_))
                      (_%__kont257646257647%_ _%hd252893252922%_)
                      (_%__kont257648257649%_))))
              (_%__kont257648257649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257648257649%_))
                                              (_%__kont257648257649%_))))
                                      (_%__kont257648257649%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self252458%_
                                 _%stx252459%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self252458%_
                             _%stx252459%_))))))
                 (_%__kont257676257677%_
                  (lambda (_%g252524252708%_
                           _%g252525252709%_
                           _%g252526252710%_
                           _%g252527252711%_)
                    (gxc#optimize-if%
                     _%self252458%_
                     (let ((__tmp258109
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%g252526252710%_
                                        (cons _%g252524252708%_
                                              (cons _%g252525252709%_ '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp258109 _%stx252459%_)))))
                 (_%__kont257678257679%_
                  (lambda (_%g252555252611%_
                           _%g252556252612%_
                           _%g252557252613%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self252458%_ _%stx252459%_)))))
             (let ((_%__match257877257878%_
                    (lambda (_%e252528252636%_
                             _%hd252529252639%_
                             _%tl252530252641%_
                             _%e252531252644%_
                             _%hd252532252647%_
                             _%tl252533252649%_
                             _%e252534252652%_
                             _%hd252535252655%_
                             _%tl252536252657%_
                             _%e252537252660%_
                             _%hd252538252663%_
                             _%tl252539252665%_
                             _%e252540252668%_
                             _%hd252541252671%_
                             _%tl252542252673%_
                             _%e252543252676%_
                             _%hd252544252679%_
                             _%tl252545252681%_
                             _%e252546252684%_
                             _%hd252547252687%_
                             _%tl252548252689%_
                             _%e252549252692%_
                             _%hd252550252695%_
                             _%tl252551252697%_
                             _%e252552252700%_
                             _%hd252553252703%_
                             _%tl252554252705%_)
                      (let ((_%g252524252708%_ _%hd252553252703%_)
                            (_%g252525252709%_ _%hd252550252695%_)
                            (_%g252526252710%_ _%hd252547252687%_)
                            (_%g252527252711%_ _%hd252544252679%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%g252527252711%_
                               'not))
                            (_%__kont257676257677%_
                             _%g252524252708%_
                             _%g252525252709%_
                             _%g252526252710%_
                             _%g252527252711%_)
                            (_%__kont257678257679%_
                             _%hd252553252703%_
                             _%hd252550252695%_
                             _%hd252532252647%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx257670257671%_))
                   (let ((_%e252469252955%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx257670257671%_))))
                     (let ((_%tl252471252960%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252469252955%_)))
                           (_%hd252470252958%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252469252955%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252471252960%_))
                           (let ((_%e252472252963%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252471252960%_))))
                             (let ((_%tl252474252968%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252472252963%_)))
                                   (_%hd252473252966%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252472252963%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd252473252966%_))
                                   (let ((_%e252475252971%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd252473252966%_))))
                                     (let ((_%tl252477252976%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252475252971%_)))
                                           (_%hd252476252974%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252475252971%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd252476252974%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%hd252476252974%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252477252976%_))
                                                   (let ((_%e252478252979%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252477252976%_))))
                                                     (let ((_%tl252480252984%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252478252979%_)))
                                                           (_%hd252479252982%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252478252979%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252480252984%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl252474252968%_))
                       (let ((_%e252481252987%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252474252968%_))))
                         (let ((_%tl252483252992%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252481252987%_)))
                               (_%hd252482252990%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252481252987%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl252483252992%_))
                               (let ((_%e252484252995%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl252483252992%_))))
                                 (let ((_%tl252486253000%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e252484252995%_)))
                                       (_%hd252485252998%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e252484252995%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl252486253000%_))
                                       (_%__kont257672257673%_
                                        _%hd252485252998%_
                                        _%hd252482252990%_
                                        _%hd252479252982%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g252464252574%_)))))
                       (let () (declare (not safe)) (_%g252464252574%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252474252968%_))
                       (let ((_%e252564252595%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252474252968%_))))
                         (let ((_%tl252566252600%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252564252595%_)))
                               (_%hd252565252598%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252564252595%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl252566252600%_))
                               (let ((_%e252567252603%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl252566252600%_))))
                                 (let ((_%tl252569252608%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e252567252603%_)))
                                       (_%hd252568252606%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e252567252603%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl252569252608%_))
                                       (_%__kont257678257679%_
                                        _%hd252568252606%_
                                        _%hd252565252598%_
                                        _%hd252473252966%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g252464252574%_)))))
                       (let () (declare (not safe)) (_%g252464252574%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252474252968%_))
                                                       (let ((_%e252564252595%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252474252968%_))))
                 (let ((_%tl252566252600%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252564252595%_)))
                       (_%hd252565252598%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252564252595%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252566252600%_))
                       (let ((_%e252567252603%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252566252600%_))))
                         (let ((_%tl252569252608%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252567252603%_)))
                               (_%hd252568252606%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252567252603%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252569252608%_))
                               (_%__kont257678257679%_
                                _%hd252568252606%_
                                _%hd252565252598%_
                                _%hd252473252966%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g252464252574%_)))))
                       (let () (declare (not safe)) (_%g252464252574%_)))))
               (let () (declare (not safe)) (_%g252464252574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%hd252476252974%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252477252976%_))
                                                       (let ((_%e252500252768%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252477252976%_))))
                 (let ((_%tl252502252773%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252500252768%_)))
                       (_%hd252501252771%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252500252768%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd252501252771%_))
                       (let ((_%e252503252776%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%hd252501252771%_))))
                         (let ((_%tl252505252781%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252503252776%_)))
                               (_%hd252504252779%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252503252776%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd252504252779%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%hd252504252779%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl252505252781%_))
                                       (let ((_%e252506252784%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl252505252781%_))))
                                         (let ((_%tl252508252789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e252506252784%_)))
                                               (_%hd252507252787%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e252506252784%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl252508252789%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252502252773%_))
                                                   (let ((_%e252509252792%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252502252773%_))))
                                                     (let ((_%tl252511252797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252509252792%_)))
                                                           (_%hd252510252795%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252509252792%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd252510252795%_))
                                                           (let ((_%e252512252800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd252510252795%_))))
                     (let ((_%tl252514252805%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252512252800%_)))
                           (_%hd252513252803%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252512252800%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd252513252803%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%hd252513252803%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252514252805%_))
                                   (let ((_%e252515252808%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252514252805%_))))
                                     (let ((_%tl252517252813%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252515252808%_)))
                                           (_%hd252516252811%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252515252808%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252517252813%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl252511252797%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252474252968%_))
                                                   (let ((_%e252518252816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252474252968%_))))
                                                     (let ((_%tl252520252821%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252518252816%_)))
                                                           (_%hd252519252819%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252518252816%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252520252821%_))
                                                           (let ((_%e252521252824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252520252821%_))))
                     (let ((_%tl252523252829%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252521252824%_)))
                           (_%hd252522252827%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252521252824%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252523252829%_))
                           (_%__kont257674257675%_
                            _%hd252522252827%_
                            _%hd252519252819%_
                            _%hd252516252811%_
                            _%hd252507252787%_)
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252474252968%_))
                                                   (let ((_%e252564252595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252474252968%_))))
                                                     (let ((_%tl252566252600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252564252595%_)))
                                                           (_%hd252565252598%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252564252595%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252566252600%_))
                                                           (let ((_%e252567252603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252566252600%_))))
                     (let ((_%tl252569252608%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252567252603%_)))
                           (_%hd252568252606%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252567252603%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252569252608%_))
                           (_%__kont257678257679%_
                            _%hd252568252606%_
                            _%hd252565252598%_
                            _%hd252473252966%_)
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl252511252797%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252474252968%_))
                                                   (let ((_%e252549252692%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252474252968%_))))
                                                     (let ((_%tl252551252697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252549252692%_)))
                                                           (_%hd252550252695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252549252692%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252551252697%_))
                                                           (let ((_%e252552252700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252551252697%_))))
                     (let ((_%tl252554252705%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252552252700%_)))
                           (_%hd252553252703%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252552252700%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252554252705%_))
                           (_%__match257877257878%_
                            _%e252469252955%_
                            _%hd252470252958%_
                            _%tl252471252960%_
                            _%e252472252963%_
                            _%hd252473252966%_
                            _%tl252474252968%_
                            _%e252475252971%_
                            _%hd252476252974%_
                            _%tl252477252976%_
                            _%e252500252768%_
                            _%hd252501252771%_
                            _%tl252502252773%_
                            _%e252503252776%_
                            _%hd252504252779%_
                            _%tl252505252781%_
                            _%e252506252784%_
                            _%hd252507252787%_
                            _%tl252508252789%_
                            _%e252509252792%_
                            _%hd252510252795%_
                            _%tl252511252797%_
                            _%e252549252692%_
                            _%hd252550252695%_
                            _%tl252551252697%_
                            _%e252552252700%_
                            _%hd252553252703%_
                            _%tl252554252705%_)
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252474252968%_))
                                                   (let ((_%e252564252595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252474252968%_))))
                                                     (let ((_%tl252566252600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252564252595%_)))
                                                           (_%hd252565252598%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252564252595%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252566252600%_))
                                                           (let ((_%e252567252603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252566252600%_))))
                     (let ((_%tl252569252608%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252567252603%_)))
                           (_%hd252568252606%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252567252603%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252569252608%_))
                           (_%__kont257678257679%_
                            _%hd252568252606%_
                            _%hd252565252598%_
                            _%hd252473252966%_)
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl252511252797%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252474252968%_))
                                           (let ((_%e252549252692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252474252968%_))))
                                             (let ((_%tl252551252697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252549252692%_)))
                                                   (_%hd252550252695%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252549252692%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252551252697%_))
                                                   (let ((_%e252552252700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252551252697%_))))
                                                     (let ((_%tl252554252705%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252552252700%_)))
                                                           (_%hd252553252703%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252552252700%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252554252705%_))
                                                           (_%__match257877257878%_
                                                            _%e252469252955%_
                                                            _%hd252470252958%_
                                                            _%tl252471252960%_
                                                            _%e252472252963%_
                                                            _%hd252473252966%_
                                                            _%tl252474252968%_
                                                            _%e252475252971%_
                                                            _%hd252476252974%_
                                                            _%tl252477252976%_
                                                            _%e252500252768%_
                                                            _%hd252501252771%_
                                                            _%tl252502252773%_
                                                            _%e252503252776%_
                                                            _%hd252504252779%_
                                                            _%tl252505252781%_
                                                            _%e252506252784%_
                                                            _%hd252507252787%_
                                                            _%tl252508252789%_
                                                            _%e252509252792%_
                                                            _%hd252510252795%_
                                                            _%tl252511252797%_
                                                            _%e252549252692%_
                                                            _%hd252550252695%_
                                                            _%tl252551252697%_
                                                            _%e252552252700%_
                                                            _%hd252553252703%_
                                                            _%tl252554252705%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g252464252574%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252474252968%_))
                                           (let ((_%e252564252595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252474252968%_))))
                                             (let ((_%tl252566252600%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252564252595%_)))
                                                   (_%hd252565252598%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252564252595%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252566252600%_))
                                                   (let ((_%e252567252603%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252566252600%_))))
                                                     (let ((_%tl252569252608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252567252603%_)))
                                                           (_%hd252568252606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252567252603%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252569252608%_))
                                                           (_%__kont257678257679%_
                                                            _%hd252568252606%_
                                                            _%hd252565252598%_
                                                            _%hd252473252966%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g252464252574%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl252511252797%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl252474252968%_))
                                       (let ((_%e252549252692%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl252474252968%_))))
                                         (let ((_%tl252551252697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e252549252692%_)))
                                               (_%hd252550252695%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e252549252692%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252551252697%_))
                                               (let ((_%e252552252700%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252551252697%_))))
                                                 (let ((_%tl252554252705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252552252700%_)))
                                                       (_%hd252553252703%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252552252700%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252554252705%_))
                                                       (_%__match257877257878%_
                                                        _%e252469252955%_
                                                        _%hd252470252958%_
                                                        _%tl252471252960%_
                                                        _%e252472252963%_
                                                        _%hd252473252966%_
                                                        _%tl252474252968%_
                                                        _%e252475252971%_
                                                        _%hd252476252974%_
                                                        _%tl252477252976%_
                                                        _%e252500252768%_
                                                        _%hd252501252771%_
                                                        _%tl252502252773%_
                                                        _%e252503252776%_
                                                        _%hd252504252779%_
                                                        _%tl252505252781%_
                                                        _%e252506252784%_
                                                        _%hd252507252787%_
                                                        _%tl252508252789%_
                                                        _%e252509252792%_
                                                        _%hd252510252795%_
                                                        _%tl252511252797%_
                                                        _%e252549252692%_
                                                        _%hd252550252695%_
                                                        _%tl252551252697%_
                                                        _%e252552252700%_
                                                        _%hd252553252703%_
                                                        _%tl252554252705%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g252464252574%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g252464252574%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl252474252968%_))
                                       (let ((_%e252564252595%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl252474252968%_))))
                                         (let ((_%tl252566252600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e252564252595%_)))
                                               (_%hd252565252598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e252564252595%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252566252600%_))
                                               (let ((_%e252567252603%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252566252600%_))))
                                                 (let ((_%tl252569252608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252567252603%_)))
                                                       (_%hd252568252606%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252567252603%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252569252608%_))
                                                       (_%__kont257678257679%_
                                                        _%hd252568252606%_
                                                        _%hd252565252598%_
                                                        _%hd252473252966%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g252464252574%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g252464252574%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252511252797%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252474252968%_))
                                   (let ((_%e252549252692%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252474252968%_))))
                                     (let ((_%tl252551252697%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252549252692%_)))
                                           (_%hd252550252695%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252549252692%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252551252697%_))
                                           (let ((_%e252552252700%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252551252697%_))))
                                             (let ((_%tl252554252705%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252552252700%_)))
                                                   (_%hd252553252703%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252552252700%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252554252705%_))
                                                   (_%__match257877257878%_
                                                    _%e252469252955%_
                                                    _%hd252470252958%_
                                                    _%tl252471252960%_
                                                    _%e252472252963%_
                                                    _%hd252473252966%_
                                                    _%tl252474252968%_
                                                    _%e252475252971%_
                                                    _%hd252476252974%_
                                                    _%tl252477252976%_
                                                    _%e252500252768%_
                                                    _%hd252501252771%_
                                                    _%tl252502252773%_
                                                    _%e252503252776%_
                                                    _%hd252504252779%_
                                                    _%tl252505252781%_
                                                    _%e252506252784%_
                                                    _%hd252507252787%_
                                                    _%tl252508252789%_
                                                    _%e252509252792%_
                                                    _%hd252510252795%_
                                                    _%tl252511252797%_
                                                    _%e252549252692%_
                                                    _%hd252550252695%_
                                                    _%tl252551252697%_
                                                    _%e252552252700%_
                                                    _%hd252553252703%_
                                                    _%tl252554252705%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252474252968%_))
                                   (let ((_%e252564252595%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252474252968%_))))
                                     (let ((_%tl252566252600%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252564252595%_)))
                                           (_%hd252565252598%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252564252595%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252566252600%_))
                                           (let ((_%e252567252603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252566252600%_))))
                                             (let ((_%tl252569252608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252567252603%_)))
                                                   (_%hd252568252606%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252567252603%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252569252608%_))
                                                   (_%__kont257678257679%_
                                                    _%hd252568252606%_
                                                    _%hd252565252598%_
                                                    _%hd252473252966%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl252511252797%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252474252968%_))
                           (let ((_%e252549252692%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252474252968%_))))
                             (let ((_%tl252551252697%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252549252692%_)))
                                   (_%hd252550252695%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252549252692%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252551252697%_))
                                   (let ((_%e252552252700%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252551252697%_))))
                                     (let ((_%tl252554252705%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252552252700%_)))
                                           (_%hd252553252703%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252552252700%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252554252705%_))
                                           (_%__match257877257878%_
                                            _%e252469252955%_
                                            _%hd252470252958%_
                                            _%tl252471252960%_
                                            _%e252472252963%_
                                            _%hd252473252966%_
                                            _%tl252474252968%_
                                            _%e252475252971%_
                                            _%hd252476252974%_
                                            _%tl252477252976%_
                                            _%e252500252768%_
                                            _%hd252501252771%_
                                            _%tl252502252773%_
                                            _%e252503252776%_
                                            _%hd252504252779%_
                                            _%tl252505252781%_
                                            _%e252506252784%_
                                            _%hd252507252787%_
                                            _%tl252508252789%_
                                            _%e252509252792%_
                                            _%hd252510252795%_
                                            _%tl252511252797%_
                                            _%e252549252692%_
                                            _%hd252550252695%_
                                            _%tl252551252697%_
                                            _%e252552252700%_
                                            _%hd252553252703%_
                                            _%tl252554252705%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))))
                           (let () (declare (not safe)) (_%g252464252574%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252474252968%_))
                           (let ((_%e252564252595%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252474252968%_))))
                             (let ((_%tl252566252600%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252564252595%_)))
                                   (_%hd252565252598%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252564252595%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252566252600%_))
                                   (let ((_%e252567252603%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252566252600%_))))
                                     (let ((_%tl252569252608%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252567252603%_)))
                                           (_%hd252568252606%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252567252603%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252569252608%_))
                                           (_%__kont257678257679%_
                                            _%hd252568252606%_
                                            _%hd252565252598%_
                                            _%hd252473252966%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g252464252574%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252474252968%_))
                                                       (let ((_%e252564252595%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252474252968%_))))
                 (let ((_%tl252566252600%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252564252595%_)))
                       (_%hd252565252598%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252564252595%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252566252600%_))
                       (let ((_%e252567252603%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252566252600%_))))
                         (let ((_%tl252569252608%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252567252603%_)))
                               (_%hd252568252606%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252567252603%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252569252608%_))
                               (_%__kont257678257679%_
                                _%hd252568252606%_
                                _%hd252565252598%_
                                _%hd252473252966%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g252464252574%_)))))
                       (let () (declare (not safe)) (_%g252464252574%_)))))
               (let () (declare (not safe)) (_%g252464252574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252474252968%_))
                                                   (let ((_%e252564252595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252474252968%_))))
                                                     (let ((_%tl252566252600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252564252595%_)))
                                                           (_%hd252565252598%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252564252595%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252566252600%_))
                                                           (let ((_%e252567252603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252566252600%_))))
                     (let ((_%tl252569252608%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252567252603%_)))
                           (_%hd252568252606%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252567252603%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252569252608%_))
                           (_%__kont257678257679%_
                            _%hd252568252606%_
                            _%hd252565252598%_
                            _%hd252473252966%_)
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252474252968%_))
                                           (let ((_%e252564252595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252474252968%_))))
                                             (let ((_%tl252566252600%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252564252595%_)))
                                                   (_%hd252565252598%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252564252595%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252566252600%_))
                                                   (let ((_%e252567252603%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252566252600%_))))
                                                     (let ((_%tl252569252608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252567252603%_)))
                                                           (_%hd252568252606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252567252603%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252569252608%_))
                                                           (_%__kont257678257679%_
                                                            _%hd252568252606%_
                                                            _%hd252565252598%_
                                                            _%hd252473252966%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g252464252574%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl252474252968%_))
                                       (let ((_%e252564252595%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl252474252968%_))))
                                         (let ((_%tl252566252600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e252564252595%_)))
                                               (_%hd252565252598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e252564252595%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252566252600%_))
                                               (let ((_%e252567252603%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252566252600%_))))
                                                 (let ((_%tl252569252608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252567252603%_)))
                                                       (_%hd252568252606%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252567252603%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252569252608%_))
                                                       (_%__kont257678257679%_
                                                        _%hd252568252606%_
                                                        _%hd252565252598%_
                                                        _%hd252473252966%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g252464252574%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g252464252574%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252474252968%_))
                                   (let ((_%e252564252595%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252474252968%_))))
                                     (let ((_%tl252566252600%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252564252595%_)))
                                           (_%hd252565252598%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252564252595%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252566252600%_))
                                           (let ((_%e252567252603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252566252600%_))))
                                             (let ((_%tl252569252608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252567252603%_)))
                                                   (_%hd252568252606%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252567252603%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252569252608%_))
                                                   (_%__kont257678257679%_
                                                    _%hd252568252606%_
                                                    _%hd252565252598%_
                                                    _%hd252473252966%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252464252574%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252474252968%_))
                           (let ((_%e252564252595%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252474252968%_))))
                             (let ((_%tl252566252600%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252564252595%_)))
                                   (_%hd252565252598%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252564252595%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252566252600%_))
                                   (let ((_%e252567252603%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252566252600%_))))
                                     (let ((_%tl252569252608%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252567252603%_)))
                                           (_%hd252568252606%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252567252603%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252569252608%_))
                                           (_%__kont257678257679%_
                                            _%hd252568252606%_
                                            _%hd252565252598%_
                                            _%hd252473252966%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g252464252574%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g252464252574%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%tl252474252968%_))
                   (let ((_%e252564252595%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252474252968%_))))
                     (let ((_%tl252566252600%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252564252595%_)))
                           (_%hd252565252598%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252564252595%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252566252600%_))
                           (let ((_%e252567252603%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252566252600%_))))
                             (let ((_%tl252569252608%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252567252603%_)))
                                   (_%hd252568252606%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252567252603%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl252569252608%_))
                                   (_%__kont257678257679%_
                                    _%hd252568252606%_
                                    _%hd252565252598%_
                                    _%hd252473252966%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g252464252574%_)))))
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252474252968%_))
                                                       (let ((_%e252564252595%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252474252968%_))))
                 (let ((_%tl252566252600%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252564252595%_)))
                       (_%hd252565252598%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252564252595%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252566252600%_))
                       (let ((_%e252567252603%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252566252600%_))))
                         (let ((_%tl252569252608%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252567252603%_)))
                               (_%hd252568252606%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252567252603%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252569252608%_))
                               (_%__kont257678257679%_
                                _%hd252568252606%_
                                _%hd252565252598%_
                                _%hd252473252966%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g252464252574%_)))))
                       (let () (declare (not safe)) (_%g252464252574%_)))))
               (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252474252968%_))
                                               (let ((_%e252564252595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252474252968%_))))
                                                 (let ((_%tl252566252600%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252564252595%_)))
                                                       (_%hd252565252598%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252564252595%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252566252600%_))
                                                       (let ((_%e252567252603%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252566252600%_))))
                 (let ((_%tl252569252608%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252567252603%_)))
                       (_%hd252568252606%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252567252603%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl252569252608%_))
                       (_%__kont257678257679%_
                        _%hd252568252606%_
                        _%hd252565252598%_
                        _%hd252473252966%_)
                       (let () (declare (not safe)) (_%g252464252574%_)))))
               (let () (declare (not safe)) (_%g252464252574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g252464252574%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl252474252968%_))
                                       (let ((_%e252564252595%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl252474252968%_))))
                                         (let ((_%tl252566252600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e252564252595%_)))
                                               (_%hd252565252598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e252564252595%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252566252600%_))
                                               (let ((_%e252567252603%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252566252600%_))))
                                                 (let ((_%tl252569252608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252567252603%_)))
                                                       (_%hd252568252606%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252567252603%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252569252608%_))
                                                       (_%__kont257678257679%_
                                                        _%hd252568252606%_
                                                        _%hd252565252598%_
                                                        _%hd252473252966%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g252464252574%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g252464252574%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g252464252574%_))))))
                           (let () (declare (not safe)) (_%g252464252574%_)))))
                   (let () (declare (not safe)) (_%g252464252574%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx252326%_ _%expr252327%_)
        (let* ((_%__stx257906257907%_ _%expr252327%_)
               (_%g252330252360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257906257907%_)))))
          (let ((_%__kont257908257909%_
                 (lambda (_%g252332252428%_
                          _%g252333252429%_
                          _%g252334252430%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx252326%_
                      _%g252334252430%_
                      _%g252333252429%_
                      _%g252332252428%_))))
                (_%__kont257910257911%_ (lambda () _%expr252327%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257906257907%_))
                (let ((_%e252335252372%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257906257907%_))))
                  (let ((_%tl252337252377%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e252335252372%_)))
                        (_%hd252336252375%_
                         (let ()
                           (declare (not safe))
                           (##car _%e252335252372%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd252336252375%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%hd252336252375%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl252337252377%_))
                                (let ((_%e252338252380%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl252337252377%_))))
                                  (let ((_%tl252340252385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e252338252380%_)))
                                        (_%hd252339252383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e252338252380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd252339252383%_))
                                        (let ((_%e252341252388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd252339252383%_))))
                                          (let ((_%tl252343252393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e252341252388%_)))
                                                (_%hd252342252391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e252341252388%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd252342252391%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%hd252342252391%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl252343252393%_))
                                                        (let ((_%e252344252396%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl252343252393%_))))
                  (let ((_%tl252346252401%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e252344252396%_)))
                        (_%hd252345252399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e252344252396%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl252346252401%_))
                        (let ((_%e252347252404%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl252346252401%_))))
                          (let ((_%tl252349252409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e252347252404%_)))
                                (_%hd252348252407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e252347252404%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl252349252409%_))
                                (let ((_%e252350252412%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl252349252409%_))))
                                  (let ((_%tl252352252417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e252350252412%_)))
                                        (_%hd252351252415%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e252350252412%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl252352252417%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl252340252385%_))
                                            (let ((_%e252353252420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl252340252385%_))))
                                              (let ((_%tl252355252425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252353252420%_)))
                                                    (_%hd252354252423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252353252420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl252355252425%_))
                                                    (_%__kont257908257909%_
                                                     _%hd252351252415%_
                                                     _%hd252348252407%_
                                                     _%hd252345252399%_)
                                                    (_%__kont257910257911%_))))
                                            (_%__kont257910257911%_))
                                        (_%__kont257910257911%_))))
                                (_%__kont257910257911%_))))
                        (_%__kont257910257911%_))))
                (_%__kont257910257911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont257910257911%_))
                                                (_%__kont257910257911%_))))
                                        (_%__kont257910257911%_))))
                                (_%__kont257910257911%_))
                            (_%__kont257910257911%_))
                        (_%__kont257910257911%_))))
                (_%__kont257910257911%_))))))))
