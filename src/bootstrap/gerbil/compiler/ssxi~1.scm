(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g274759_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274766_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274768_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274770_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274772_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274774_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274786_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274788_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274790_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274792_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274794_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx268217%_)
        (let* ((_%$%g268221268239%_
                (lambda (_%$%g268222268235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268222268235%_))))
               (_%$%g268220268294%_
                (lambda (_%$%g268222268243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268222268243%_))
                      (let ((_%$%e268225268246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268222268243%_))))
                        (let ((_%$%hd268226268250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268225268246%_)))
                              (_%$%tl268227268253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268225268246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268227268253%_))
                              (let ((_%$%e268228268256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268227268253%_))))
                                (let ((_%$%hd268229268260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268228268256%_)))
                                      (_%$%tl268230268263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268228268256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268230268263%_))
                                      (let ((_%$%e268231268266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268230268263%_))))
                                        (let ((_%$%hd268232268270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268231268266%_)))
                                              (_%$%tl268233268273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268231268266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268233268273%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd268229268260%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd268229268260%_ '()))
                      (cons _%$%hd268232268270%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g268221268239%_
                                                   _%$%g268222268243%_))
                                              (_%$%g268221268239%_
                                               _%$%g268222268243%_))))
                                      (_%$%g268221268239%_
                                       _%$%g268222268243%_))))
                              (_%$%g268221268239%_ _%$%g268222268243%_))))
                      (_%$%g268221268239%_ _%$%g268222268243%_)))))
          (_%$%g268220268294%_ _%$stx268217%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx268298%_)
        (let* ((_%$%g268302268320%_
                (lambda (_%$%g268303268316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268303268316%_))))
               (_%$%g268301268375%_
                (lambda (_%$%g268303268324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268303268324%_))
                      (let ((_%$%e268306268327%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268303268324%_))))
                        (let ((_%$%hd268307268331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268306268327%_)))
                              (_%$%tl268308268334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268306268327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268308268334%_))
                              (let ((_%$%e268309268337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268308268334%_))))
                                (let ((_%$%hd268310268341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268309268337%_)))
                                      (_%$%tl268311268344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268309268337%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268311268344%_))
                                      (let ((_%$%e268312268347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268311268344%_))))
                                        (let ((_%$%hd268313268351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268312268347%_)))
                                              (_%$%tl268314268354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268312268347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268314268354%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd268310268341%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd268310268341%_ '()))
                      (cons _%$%hd268313268351%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g268302268320%_
                                                   _%$%g268303268324%_))
                                              (_%$%g268302268320%_
                                               _%$%g268303268324%_))))
                                      (_%$%g268302268320%_
                                       _%$%g268303268324%_))))
                              (_%$%g268302268320%_ _%$%g268303268324%_))))
                      (_%$%g268302268320%_ _%$%g268303268324%_)))))
          (_%$%g268301268375%_ _%$stx268298%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx268379%_)
        (let* ((_%$%g268383268412%_
                (lambda (_%$%g268384268408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268384268408%_))))
               (_%$%g268382268508%_
                (lambda (_%$%g268384268416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268384268416%_))
                      (let ((_%$%e268387268419%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268384268416%_))))
                        (let ((_%$%hd268388268423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268387268419%_)))
                              (_%$%tl268389268426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268387268419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl268389268426%_))
                              (let ((_g274737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl268389268426%_
                                        '0))))
                                (begin
                                  (let ((_g274738_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274737_)
                                               (##values-length _g274737_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274738_ 2)))
                                        (error "Context expects 2 values"
                                               _g274738_)))
                                  (let ((_%$%target268390268429%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274737_ 0)))
                                        (_%$%tl268392268432%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274737_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268392268432%_))
                                        (letrec ((_%$%loop268393268435%_
                                                  (lambda (_%$%hd268391268439%_
                                                           _%$%type268397268442%_
                                                           _%$%symbol268398268443%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd268391268439%_))
                                                        (let ((_%$%e268394268445%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd268391268439%_))))
                  (let ((_%$%lp-hd268395268449%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268394268445%_)))
                        (_%$%lp-tl268396268452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268394268445%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd268395268449%_))
                        (let ((_%$%e268401268455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd268395268449%_))))
                          (let ((_%$%hd268402268459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268401268455%_)))
                                (_%$%tl268403268462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268401268455%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268403268462%_))
                                (let ((_%$%e268404268465%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl268403268462%_))))
                                  (let ((_%$%hd268405268469%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268404268465%_)))
                                        (_%$%tl268406268472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268404268465%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268406268472%_))
                                        (_%$%loop268393268435%_
                                         _%$%lp-tl268396268452%_
                                         (cons _%$%hd268405268469%_
                                               _%$%type268397268442%_)
                                         (cons _%$%hd268402268459%_
                                               _%$%symbol268398268443%_))
                                        (_%$%g268383268412%_
                                         _%$%g268384268416%_))))
                                (_%$%g268383268412%_ _%$%g268384268416%_))))
                        (_%$%g268383268412%_ _%$%g268384268416%_))))
                (let ((_%$%type268399268475%_ (reverse _%$%type268397268442%_))
                      (_%$%symbol268400268477%_
                       (reverse _%$%symbol268398268443%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type268399268475%_
                             _%$%symbol268400268477%_))
                          (let ((__tmp274739
                                 (lambda (_%$%g268496268500%_
                                          _%$%g268497268503%_
                                          _%$%g268498268505%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g268497268503%_
                                                     (cons _%$%g268496268500%_
                                                           '())))
                                         _%$%g268498268505%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp274739
                             '()
                             _%$%type268399268475%_
                             _%$%symbol268400268477%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop268393268435%_
                                           _%$%target268390268429%_
                                           '()
                                           '()))
                                        (_%$%g268383268412%_
                                         _%$%g268384268416%_)))))
                              (_%$%g268383268412%_ _%$%g268384268416%_))))
                      (_%$%g268383268412%_ _%$%g268384268416%_)))))
          (_%$%g268382268508%_ _%$stx268379%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx268513%_)
        (let* ((_%__stx274048274049%_ _%$stx268513%_)
               (_%$%g268518268560%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274048274049%_)))))
          (let ((_%__kont274051274052%_
                 (lambda (_%$%g268520268688%_
                          _%$%g268521268690%_
                          _%$%g268522268691%_
                          _%$%g268523268692%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g268523268692%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g268522268691%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g268521268690%_
                                                       '()))
                                           (cons _%$%g268520268688%_ '())))))))
                (_%__kont274053274054%_
                 (lambda (_%$%g268539268607%_
                          _%$%g268540268609%_
                          _%$%g268541268610%_
                          _%$%g268542268611%_)
                   (cons _%$%g268542268611%_
                         (cons _%$%g268541268610%_
                               (cons _%$%g268540268609%_
                                     (cons _%$%g268539268607%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match274087274088%_
                   (lambda (_%$%e268524268638%_
                            _%$%hd268525268642%_
                            _%$%tl268526268645%_
                            _%$%e268527268648%_
                            _%$%hd268528268652%_
                            _%$%tl268529268655%_
                            _%$%e268530268658%_
                            _%$%hd268531268662%_
                            _%$%tl268532268665%_
                            _%$%e268533268668%_
                            _%$%hd268534268672%_
                            _%$%tl268535268675%_
                            _%$%e268536268678%_
                            _%$%hd268537268682%_
                            _%$%tl268538268685%_)
                     (let ((_%$%g268520268688%_ _%$%hd268537268682%_)
                           (_%$%g268521268690%_ _%$%hd268534268672%_)
                           (_%$%g268522268691%_ _%$%hd268531268662%_)
                           (_%$%g268523268692%_ _%$%hd268528268652%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g268523268692%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g268522268691%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g268521268690%_)))
                           (_%__kont274051274052%_
                            _%$%g268520268688%_
                            _%$%g268521268690%_
                            _%$%g268522268691%_
                            _%$%g268523268692%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g268518268560%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx274048274049%_))
                  (let ((_%$%e268524268638%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx274048274049%_))))
                    (let ((_%$%tl268526268645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268524268638%_)))
                          (_%$%hd268525268642%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268524268638%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268526268645%_))
                          (let ((_%$%e268527268648%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl268526268645%_))))
                            (let ((_%$%tl268529268655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268527268648%_)))
                                  (_%$%hd268528268652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268527268648%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl268529268655%_))
                                  (let ((_%$%e268530268658%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl268529268655%_))))
                                    (let ((_%$%tl268532268665%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e268530268658%_)))
                                          (_%$%hd268531268662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e268530268658%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl268532268665%_))
                                          (let ((_%$%e268533268668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl268532268665%_))))
                                            (let ((_%$%tl268535268675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e268533268668%_)))
                                                  (_%$%hd268534268672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e268533268668%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl268535268675%_))
                                                  (let ((_%$%e268536268678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl268535268675%_))))
                                                    (let ((_%$%tl268538268685%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268536268678%_)))
                                                          (_%$%hd268537268682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268536268678%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl268538268685%_))
                                                          (_%__match274087274088%_
                                                           _%$%e268524268638%_
                                                           _%$%hd268525268642%_
                                                           _%$%tl268526268645%_
                                                           _%$%e268527268648%_
                                                           _%$%hd268528268652%_
                                                           _%$%tl268529268655%_
                                                           _%$%e268530268658%_
                                                           _%$%hd268531268662%_
                                                           _%$%tl268532268665%_
                                                           _%$%e268533268668%_
                                                           _%$%hd268534268672%_
                                                           _%$%tl268535268675%_
                                                           _%$%e268536268678%_
                                                           _%$%hd268537268682%_
                                                           _%$%tl268538268685%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g268518268560%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268535268675%_))
                                                      (_%__kont274053274054%_
                                                       _%$%hd268534268672%_
                                                       _%$%hd268531268662%_
                                                       _%$%hd268528268652%_
                                                       _%$%hd268525268642%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g268518268560%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g268518268560%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268518268560%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268518268560%_)))))
                  (let () (declare (not safe)) (_%$%g268518268560%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx268717%_)
        (let* ((_%$%g268721268756%_
                (lambda (_%$%g268722268752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268722268752%_))))
               (_%$%g268720268869%_
                (lambda (_%$%g268722268760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268722268760%_))
                      (let ((_%$%e268726268763%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268722268760%_))))
                        (let ((_%$%hd268727268767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268726268763%_)))
                              (_%$%tl268728268770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268726268763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl268728268770%_))
                              (let ((_g274740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl268728268770%_
                                        '0))))
                                (begin
                                  (let ((_g274741_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274740_)
                                               (##values-length _g274740_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274741_ 2)))
                                        (error "Context expects 2 values"
                                               _g274741_)))
                                  (let ((_%$%target268729268773%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274740_ 0)))
                                        (_%$%tl268731268776%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274740_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268731268776%_))
                                        (letrec ((_%$%loop268732268779%_
                                                  (lambda (_%$%hd268730268783%_
                                                           _%$%symbol268736268786%_
                                                           _%$%method268737268787%_
                                                           _%$%type-t268738268788%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd268730268783%_))
                                                        (let ((_%$%e268733268790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd268730268783%_))))
                  (let ((_%$%lp-hd268734268794%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268733268790%_)))
                        (_%$%lp-tl268735268797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268733268790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd268734268794%_))
                        (let ((_%$%e268742268800%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd268734268794%_))))
                          (let ((_%$%hd268743268804%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268742268800%_)))
                                (_%$%tl268744268807%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268742268800%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268744268807%_))
                                (let ((_%$%e268745268810%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl268744268807%_))))
                                  (let ((_%$%hd268746268814%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268745268810%_)))
                                        (_%$%tl268747268817%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268745268810%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268747268817%_))
                                        (let ((_%$%e268748268820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268747268817%_))))
                                          (let ((_%$%hd268749268824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268748268820%_)))
                                                (_%$%tl268750268827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268748268820%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268750268827%_))
                                                (_%$%loop268732268779%_
                                                 _%$%lp-tl268735268797%_
                                                 (cons _%$%hd268749268824%_
                                                       _%$%symbol268736268786%_)
                                                 (cons _%$%hd268746268814%_
                                                       _%$%method268737268787%_)
                                                 (cons _%$%hd268743268804%_
                                                       _%$%type-t268738268788%_))
                                                (_%$%g268721268756%_
                                                 _%$%g268722268760%_))))
                                        (_%$%g268721268756%_
                                         _%$%g268722268760%_))))
                                (_%$%g268721268756%_ _%$%g268722268760%_))))
                        (_%$%g268721268756%_ _%$%g268722268760%_))))
                (let ((_%$%symbol268739268830%_
                       (reverse _%$%symbol268736268786%_))
                      (_%$%method268740268832%_
                       (reverse _%$%method268737268787%_))
                      (_%$%type-t268741268833%_
                       (reverse _%$%type-t268738268788%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol268739268830%_
                             _%$%method268740268832%_
                             _%$%type-t268741268833%_))
                          (let ((__tmp274742
                                 (lambda (_%$%g268854268859%_
                                          _%$%g268855268862%_
                                          _%$%g268856268864%_
                                          _%$%g268857268866%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g268856268864%_
                                                     (cons _%$%g268855268862%_
                                                           (cons _%$%g268854268859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g268857268866%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp274742
                             '()
                             _%$%symbol268739268830%_
                             _%$%method268740268832%_
                             _%$%type-t268741268833%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop268732268779%_
                                           _%$%target268729268773%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g268721268756%_
                                         _%$%g268722268760%_)))))
                              (_%$%g268721268756%_ _%$%g268722268760%_))))
                      (_%$%g268721268756%_ _%$%g268722268760%_)))))
          (_%$%g268720268869%_ _%$stx268717%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx268874%_)
        (let* ((_%$%g268878268911%_
                (lambda (_%$%g268879268907%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268879268907%_))))
               (_%$%g268877269021%_
                (lambda (_%$%g268879268915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268879268915%_))
                      (let ((_%$%e268883268918%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268879268915%_))))
                        (let ((_%$%hd268884268922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268883268918%_)))
                              (_%$%tl268885268925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268883268918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268885268925%_))
                              (let ((_%$%e268886268928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268885268925%_))))
                                (let ((_%$%hd268887268932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268886268928%_)))
                                      (_%$%tl268888268935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268886268928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268888268935%_))
                                      (let ((_g274743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl268888268935%_
                                                '0))))
                                        (begin
                                          (let ((_g274744_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274743_)
                                                       (##values-length
                                                        _g274743_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274744_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274744_)))
                                          (let ((_%$%target268889268938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274743_ 0)))
                                                (_%$%tl268891268941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274743_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268891268941%_))
                                                (letrec ((_%$%loop268892268944%_
                                                          (lambda (_%$%hd268890268948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol268896268951%_
                           _%$%method268897268952%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd268890268948%_))
                        (let ((_%$%e268893268954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd268890268948%_))))
                          (let ((_%$%lp-hd268894268958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268893268954%_)))
                                (_%$%lp-tl268895268961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268893268954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd268894268958%_))
                                (let ((_%$%e268900268964%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd268894268958%_))))
                                  (let ((_%$%hd268901268968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268900268964%_)))
                                        (_%$%tl268902268971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268900268964%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268902268971%_))
                                        (let ((_%$%e268903268974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268902268971%_))))
                                          (let ((_%$%hd268904268978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268903268974%_)))
                                                (_%$%tl268905268981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268903268974%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268905268981%_))
                                                (_%$%loop268892268944%_
                                                 _%$%lp-tl268895268961%_
                                                 (cons _%$%hd268904268978%_
                                                       _%$%symbol268896268951%_)
                                                 (cons _%$%hd268901268968%_
                                                       _%$%method268897268952%_))
                                                (_%$%g268878268911%_
                                                 _%$%g268879268915%_))))
                                        (_%$%g268878268911%_
                                         _%$%g268879268915%_))))
                                (_%$%g268878268911%_ _%$%g268879268915%_))))
                        (let ((_%$%symbol268898268984%_
                               (reverse _%$%symbol268896268951%_))
                              (_%$%method268899268986%_
                               (reverse _%$%method268897268952%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol268898268984%_
                                     _%$%method268899268986%_))
                                  (let ((__tmp274745
                                         (lambda (_%$%g269009269013%_
                                                  _%$%g269010269016%_
                                                  _%$%g269011269018%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd268887268932%_
                                                             (cons _%$%g269010269016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g269009269013%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g269011269018%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp274745
                                     '()
                                     _%$%symbol268898268984%_
                                     _%$%method268899268986%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop268892268944%_
                                                   _%$%target268889268938%_
                                                   '()
                                                   '()))
                                                (_%$%g268878268911%_
                                                 _%$%g268879268915%_)))))
                                      (_%$%g268878268911%_
                                       _%$%g268879268915%_))))
                              (_%$%g268878268911%_ _%$%g268879268915%_))))
                      (_%$%g268878268911%_ _%$%g268879268915%_)))))
          (_%$%g268877269021%_ _%$stx268874%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx269026%_)
        (let* ((_%$%g269030269044%_
                (lambda (_%$%g269031269040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269031269040%_))))
               (_%$%g269029269085%_
                (lambda (_%$%g269031269048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269031269048%_))
                      (let ((_%$%e269033269051%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269031269048%_))))
                        (let ((_%$%hd269034269055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269033269051%_)))
                              (_%$%tl269035269058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269033269051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269035269058%_))
                              (let ((_%$%e269036269061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269035269058%_))))
                                (let ((_%$%hd269037269065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269036269061%_)))
                                      (_%$%tl269038269068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269036269061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269038269068%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269037269065%_
                                                              '()))
                                                  '()))
                                      (_%$%g269030269044%_
                                       _%$%g269031269048%_))))
                              (_%$%g269030269044%_ _%$%g269031269048%_))))
                      (_%$%g269030269044%_ _%$%g269031269048%_)))))
          (_%$%g269029269085%_ _%$stx269026%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx269089%_)
        (let* ((_%$%g269093269147%_
                (lambda (_%$%g269094269143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269094269143%_))))
               (_%$%g269092269328%_
                (lambda (_%$%g269094269151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269094269151%_))
                      (let ((_%$%e269106269154%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269094269151%_))))
                        (let ((_%$%hd269107269158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269106269154%_)))
                              (_%$%tl269108269161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269106269154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269108269161%_))
                              (let ((_%$%e269109269164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269108269161%_))))
                                (let ((_%$%hd269110269168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269109269164%_)))
                                      (_%$%tl269111269171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269109269164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269111269171%_))
                                      (let ((_%$%e269112269174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269111269171%_))))
                                        (let ((_%$%hd269113269178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269112269174%_)))
                                              (_%$%tl269114269181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269112269174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269114269181%_))
                                              (let ((_%$%e269115269184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269114269181%_))))
                                                (let ((_%$%hd269116269188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269115269184%_)))
                                                      (_%$%tl269117269191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269115269184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl269117269191%_))
                                                      (let ((_%$%e269118269194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl269117269191%_))))
                (let ((_%$%hd269119269198%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e269118269194%_)))
                      (_%$%tl269120269201%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e269118269194%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269120269201%_))
                      (let ((_%$%e269121269204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269120269201%_))))
                        (let ((_%$%hd269122269208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269121269204%_)))
                              (_%$%tl269123269211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269121269204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269123269211%_))
                              (let ((_%$%e269124269214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269123269211%_))))
                                (let ((_%$%hd269125269218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269124269214%_)))
                                      (_%$%tl269126269221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269124269214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269126269221%_))
                                      (let ((_%$%e269127269224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269126269221%_))))
                                        (let ((_%$%hd269128269228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269127269224%_)))
                                              (_%$%tl269129269231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269127269224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269129269231%_))
                                              (let ((_%$%e269130269234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269129269231%_))))
                                                (let ((_%$%hd269131269238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269130269234%_)))
                                                      (_%$%tl269132269241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269130269234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl269132269241%_))
                                                      (let ((_%$%e269133269244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl269132269241%_))))
                (let ((_%$%hd269134269248%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e269133269244%_)))
                      (_%$%tl269135269251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e269133269244%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269135269251%_))
                      (let ((_%$%e269136269254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269135269251%_))))
                        (let ((_%$%hd269137269258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269136269254%_)))
                              (_%$%tl269138269261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269136269254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269138269261%_))
                              (let ((_%$%e269139269264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269138269261%_))))
                                (let ((_%$%hd269140269268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269139269264%_)))
                                      (_%$%tl269141269271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269139269264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269141269271%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269110269168%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd269113269178%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd269116269188%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd269119269198%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd269122269208%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd269125269218%_ '()))
                                        (cons _%$%hd269128269228%_
                                              (cons _%$%hd269131269238%_
                                                    (cons _%$%hd269134269248%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd269137269258%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd269140269268%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g269093269147%_
                                       _%$%g269094269151%_))))
                              (_%$%g269093269147%_ _%$%g269094269151%_))))
                      (_%$%g269093269147%_ _%$%g269094269151%_))))
              (_%$%g269093269147%_ _%$%g269094269151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269093269147%_
                                               _%$%g269094269151%_))))
                                      (_%$%g269093269147%_
                                       _%$%g269094269151%_))))
                              (_%$%g269093269147%_ _%$%g269094269151%_))))
                      (_%$%g269093269147%_ _%$%g269094269151%_))))
              (_%$%g269093269147%_ _%$%g269094269151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269093269147%_
                                               _%$%g269094269151%_))))
                                      (_%$%g269093269147%_
                                       _%$%g269094269151%_))))
                              (_%$%g269093269147%_ _%$%g269094269151%_))))
                      (_%$%g269093269147%_ _%$%g269094269151%_)))))
          (_%$%g269092269328%_ _%$stx269089%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx269332%_)
        (let* ((_%$%g269336269350%_
                (lambda (_%$%g269337269346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269337269346%_))))
               (_%$%g269335269391%_
                (lambda (_%$%g269337269354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269337269354%_))
                      (let ((_%$%e269339269357%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269337269354%_))))
                        (let ((_%$%hd269340269361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269339269357%_)))
                              (_%$%tl269341269364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269339269357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269341269364%_))
                              (let ((_%$%e269342269367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269341269364%_))))
                                (let ((_%$%hd269343269371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269342269367%_)))
                                      (_%$%tl269344269374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269342269367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269344269374%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269343269371%_
                                                              '()))
                                                  '()))
                                      (_%$%g269336269350%_
                                       _%$%g269337269354%_))))
                              (_%$%g269336269350%_ _%$%g269337269354%_))))
                      (_%$%g269336269350%_ _%$%g269337269354%_)))))
          (_%$%g269335269391%_ _%$stx269332%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx269395%_)
        (let* ((_%$%g269399269413%_
                (lambda (_%$%g269400269409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269400269409%_))))
               (_%$%g269398269454%_
                (lambda (_%$%g269400269417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269400269417%_))
                      (let ((_%$%e269402269420%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269400269417%_))))
                        (let ((_%$%hd269403269424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269402269420%_)))
                              (_%$%tl269404269427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269402269420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269404269427%_))
                              (let ((_%$%e269405269430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269404269427%_))))
                                (let ((_%$%hd269406269434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269405269430%_)))
                                      (_%$%tl269407269437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269405269430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269407269437%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269406269434%_
                                                              '()))
                                                  '()))
                                      (_%$%g269399269413%_
                                       _%$%g269400269417%_))))
                              (_%$%g269399269413%_ _%$%g269400269417%_))))
                      (_%$%g269399269413%_ _%$%g269400269417%_)))))
          (_%$%g269398269454%_ _%$stx269395%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx269458%_)
        (let* ((_%$%g269462269484%_
                (lambda (_%$%g269463269480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269463269480%_))))
               (_%$%g269461269553%_
                (lambda (_%$%g269463269488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269463269488%_))
                      (let ((_%$%e269467269491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269463269488%_))))
                        (let ((_%$%hd269468269495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269467269491%_)))
                              (_%$%tl269469269498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269467269491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269469269498%_))
                              (let ((_%$%e269470269501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269469269498%_))))
                                (let ((_%$%hd269471269505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269470269501%_)))
                                      (_%$%tl269472269508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269470269501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269472269508%_))
                                      (let ((_%$%e269473269511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269472269508%_))))
                                        (let ((_%$%hd269474269515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269473269511%_)))
                                              (_%$%tl269475269518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269473269511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269475269518%_))
                                              (let ((_%$%e269476269521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269475269518%_))))
                                                (let ((_%$%hd269477269525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269476269521%_)))
                                                      (_%$%tl269478269528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269476269521%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269478269528%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd269471269505%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd269474269515%_ '()))
                                (cons _%$%hd269477269525%_ '()))))
              (_%$%g269462269484%_ _%$%g269463269488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269462269484%_
                                               _%$%g269463269488%_))))
                                      (_%$%g269462269484%_
                                       _%$%g269463269488%_))))
                              (_%$%g269462269484%_ _%$%g269463269488%_))))
                      (_%$%g269462269484%_ _%$%g269463269488%_)))))
          (_%$%g269461269553%_ _%$stx269458%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx269557%_)
        (let* ((_%$%g269561269583%_
                (lambda (_%$%g269562269579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269562269579%_))))
               (_%$%g269560269652%_
                (lambda (_%$%g269562269587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269562269587%_))
                      (let ((_%$%e269566269590%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269562269587%_))))
                        (let ((_%$%hd269567269594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269566269590%_)))
                              (_%$%tl269568269597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269566269590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269568269597%_))
                              (let ((_%$%e269569269600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269568269597%_))))
                                (let ((_%$%hd269570269604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269569269600%_)))
                                      (_%$%tl269571269607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269569269600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269571269607%_))
                                      (let ((_%$%e269572269610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269571269607%_))))
                                        (let ((_%$%hd269573269614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269572269610%_)))
                                              (_%$%tl269574269617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269572269610%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269574269617%_))
                                              (let ((_%$%e269575269620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269574269617%_))))
                                                (let ((_%$%hd269576269624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269575269620%_)))
                                                      (_%$%tl269577269627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269575269620%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269577269627%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd269570269604%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd269573269614%_ '()))
                                (cons _%$%hd269576269624%_ '()))))
              (_%$%g269561269583%_ _%$%g269562269587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269561269583%_
                                               _%$%g269562269587%_))))
                                      (_%$%g269561269583%_
                                       _%$%g269562269587%_))))
                              (_%$%g269561269583%_ _%$%g269562269587%_))))
                      (_%$%g269561269583%_ _%$%g269562269587%_)))))
          (_%$%g269560269652%_ _%$stx269557%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx269656%_)
        (let* ((_%$%g269660269674%_
                (lambda (_%$%g269661269670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269661269670%_))))
               (_%$%g269659269715%_
                (lambda (_%$%g269661269678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269661269678%_))
                      (let ((_%$%e269663269681%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269661269678%_))))
                        (let ((_%$%hd269664269685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269663269681%_)))
                              (_%$%tl269665269688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269663269681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269665269688%_))
                              (let ((_%$%e269666269691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269665269688%_))))
                                (let ((_%$%hd269667269695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269666269691%_)))
                                      (_%$%tl269668269698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269666269691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269668269698%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269667269695%_
                                                              '()))
                                                  '()))
                                      (_%$%g269660269674%_
                                       _%$%g269661269678%_))))
                              (_%$%g269660269674%_ _%$%g269661269678%_))))
                      (_%$%g269660269674%_ _%$%g269661269678%_)))))
          (_%$%g269659269715%_ _%$stx269656%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx269719%_)
        (let* ((_%$%g269723269741%_
                (lambda (_%$%g269724269737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269724269737%_))))
               (_%$%g269722269796%_
                (lambda (_%$%g269724269745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269724269745%_))
                      (let ((_%$%e269727269748%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269724269745%_))))
                        (let ((_%$%hd269728269752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269727269748%_)))
                              (_%$%tl269729269755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269727269748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269729269755%_))
                              (let ((_%$%e269730269758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269729269755%_))))
                                (let ((_%$%hd269731269762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269730269758%_)))
                                      (_%$%tl269732269765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269730269758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269732269765%_))
                                      (let ((_%$%e269733269768%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269732269765%_))))
                                        (let ((_%$%hd269734269772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269733269768%_)))
                                              (_%$%tl269735269775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269733269768%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269735269775%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd269731269762%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd269734269772%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269723269741%_
                                               _%$%g269724269745%_))))
                                      (_%$%g269723269741%_
                                       _%$%g269724269745%_))))
                              (_%$%g269723269741%_ _%$%g269724269745%_))))
                      (_%$%g269723269741%_ _%$%g269724269745%_)))))
          (_%$%g269722269796%_ _%$stx269719%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx269800%_)
        (let* ((_%__stx274116274117%_ _%$stx269800%_)
               (_%$%g269807269868%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274116274117%_)))))
          (let ((_%__kont274119274120%_
                 (lambda (_%$%g269809270106%_ _%$%g269810270108%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269810270108%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g269809270106%_ '()))
                                     '())))))
                (_%__kont274121274122%_
                 (lambda (_%$%g269820270045%_
                          _%$%g269821270047%_
                          _%$%g269822270048%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269822270048%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g269821270047%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%$%g269820270045%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont274123274124%_
                 (lambda (_%$%g269839269969%_ _%$%g269840269971%_)
                   (cons _%$%g269840269971%_
                         (cons _%$%g269839269969%_ (cons '#f '())))))
                (_%__kont274125274126%_
                 (lambda (_%$%g269847269919%_
                          _%$%g269848269921%_
                          _%$%g269849269922%_)
                   (cons _%$%g269849269922%_
                         (cons _%$%g269848269921%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g269847269919%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274116274117%_))
                (let ((_%$%e269811270076%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274116274117%_))))
                  (let ((_%$%tl269813270083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269811270076%_)))
                        (_%$%hd269812270080%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269811270076%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl269813270083%_))
                        (let ((_%$%e269814270086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl269813270083%_))))
                          (let ((_%$%tl269816270093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269814270086%_)))
                                (_%$%hd269815270090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269814270086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl269816270093%_))
                                (let ((_%$%e269817270096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl269816270093%_))))
                                  (let ((_%$%tl269819270103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269817270096%_)))
                                        (_%$%hd269818270100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269817270096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269819270103%_))
                                        (_%__kont274119274120%_
                                         _%$%hd269818270100%_
                                         _%$%hd269815270090%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl269819270103%_))
                                            (let ((_%$%e269832270021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl269819270103%_))))
                                              (let ((_%$%tl269834270028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e269832270021%_)))
                                                    (_%$%hd269833270025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e269832270021%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd269833270025%_))
                                                    (let ((_%$%e269835270031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd269833270025%_))))
                                                      (if (equal? _%$%e269835270031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269834270028%_))
                      (let ((_%$%e269836270035%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269834270028%_))))
                        (let ((_%$%tl269838270042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269836270035%_)))
                              (_%$%hd269837270039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269836270035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl269838270042%_))
                              (_%__kont274121274122%_
                               _%$%hd269837270039%_
                               _%$%hd269818270100%_
                               _%$%hd269815270090%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd269818270100%_))
                                  (let ((_%$%e269859269905%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd269818270100%_))))
                                    (declare (not safe))
                                    (_%$%g269807269868%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g269807269868%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd269818270100%_))
                          (let ((_%$%e269859269905%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd269818270100%_))))
                            (if (equal? _%$%e269859269905%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl269834270028%_))
                                    (_%__kont274125274126%_
                                     _%$%hd269833270025%_
                                     _%$%hd269815270090%_
                                     _%$%hd269812270080%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g269807269868%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269807269868%_))))
                          (let () (declare (not safe)) (_%$%g269807269868%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd269818270100%_))
                      (let ((_%$%e269859269905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd269818270100%_))))
                        (if (equal? _%$%e269859269905%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl269834270028%_))
                                (_%__kont274125274126%_
                                 _%$%hd269833270025%_
                                 _%$%hd269815270090%_
                                 _%$%hd269812270080%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269807269868%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g269807269868%_))))
                      (let () (declare (not safe)) (_%$%g269807269868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd269818270100%_))
                                                        (let ((_%$%e269859269905%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd269818270100%_))))
                  (if (equal? _%$%e269859269905%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl269834270028%_))
                          (_%__kont274125274126%_
                           _%$%hd269833270025%_
                           _%$%hd269815270090%_
                           _%$%hd269812270080%_)
                          (let () (declare (not safe)) (_%$%g269807269868%_)))
                      (let () (declare (not safe)) (_%$%g269807269868%_))))
                (let () (declare (not safe)) (_%$%g269807269868%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd269818270100%_))
                                                (let ((_%$%e269859269905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd269818270100%_))))
                                                  (declare (not safe))
                                                  (_%$%g269807269868%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g269807269868%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl269816270093%_))
                                    (_%__kont274123274124%_
                                     _%$%hd269815270090%_
                                     _%$%hd269812270080%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g269807269868%_))))))
                        (let () (declare (not safe)) (_%$%g269807269868%_)))))
                (let () (declare (not safe)) (_%$%g269807269868%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx270127%_)
        (let* ((_%$%g270131270160%_
                (lambda (_%$%g270132270156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270132270156%_))))
               (_%$%g270130270265%_
                (lambda (_%$%g270132270164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270132270164%_))
                      (let ((_%$%e270134270167%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270132270164%_))))
                        (let ((_%$%hd270135270171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270134270167%_)))
                              (_%$%tl270136270174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270134270167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270136270174%_))
                              (let ((_g274746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl270136270174%_
                                        '0))))
                                (begin
                                  (let ((_g274747_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274746_)
                                               (##values-length _g274746_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274747_ 2)))
                                        (error "Context expects 2 values"
                                               _g274747_)))
                                  (let ((_%$%target270137270177%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274746_ 0)))
                                        (_%$%tl270139270180%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274746_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270139270180%_))
                                        (letrec ((_%$%loop270140270183%_
                                                  (lambda (_%$%hd270138270187%_
                                                           _%$%clause270144270190%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270138270187%_))
                                                        (let ((_%$%e270141270192%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270138270187%_))))
                  (let ((_%$%lp-hd270142270196%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270141270192%_)))
                        (_%$%lp-tl270143270199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270141270192%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd270142270196%_))
                        (let ((_g274748_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd270142270196%_
                                  '0))))
                          (begin
                            (let ((_g274749_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g274748_)
                                         (##values-length _g274748_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g274749_ 2)))
                                  (error "Context expects 2 values"
                                         _g274749_)))
                            (let ((_%$%target270146270202%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g274748_ 0)))
                                  (_%$%tl270148270205%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g274748_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl270148270205%_))
                                  (letrec ((_%$%loop270149270208%_
                                            (lambda (_%$%hd270147270212%_
                                                     _%$%clause270153270215%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd270147270212%_))
                                                  (let ((_%$%e270150270217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd270147270212%_))))
                                                    (let ((_%$%lp-hd270151270221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270150270217%_)))
                                                          (_%$%lp-tl270152270224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270150270217%_))))
                                                      (_%$%loop270149270208%_
                                                       _%$%lp-tl270152270224%_
                                                       (cons _%$%lp-hd270151270221%_
                                                             _%$%clause270153270215%_))))
                                                  (let ((_%$%clause270154270227%_
                                                         (reverse _%$%clause270153270215%_)))
                                                    (_%$%loop270140270183%_
                                                     _%$%lp-tl270143270199%_
                                                     (cons _%$%clause270154270227%_
                                                           _%$%clause270144270190%_)))))))
                                    (_%$%loop270149270208%_
                                     _%$%target270146270202%_
                                     '()))
                                  (_%$%g270131270160%_ _%$%g270132270164%_)))))
                        (_%$%g270131270160%_ _%$%g270132270164%_))))
                (let ((_%$%clause270145270230%_
                       (reverse _%$%clause270144270190%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp274750
                                           (lambda (_%$%g270248270253%_
                                                    _%$%g270249270256%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp274751
                                                                (lambda (_%$%g270250270259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g270251270262%_)
                          (cons _%$%g270250270259%_ _%$%g270251270262%_))))
                   (declare (not safe))
                   (foldr__0 __tmp274751 '() _%$%g270248270253%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g270249270256%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp274750
                                       '()
                                       _%$%clause270145270230%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop270140270183%_
                                           _%$%target270137270177%_
                                           '()))
                                        (_%$%g270131270160%_
                                         _%$%g270132270164%_)))))
                              (_%$%g270131270160%_ _%$%g270132270164%_))))
                      (_%$%g270131270160%_ _%$%g270132270164%_)))))
          (_%$%g270130270265%_ _%$stx270127%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx270271%_)
        (let* ((_%$%g270275270293%_
                (lambda (_%$%g270276270289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270276270289%_))))
               (_%$%g270274270348%_
                (lambda (_%$%g270276270297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270276270297%_))
                      (let ((_%$%e270279270300%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270276270297%_))))
                        (let ((_%$%hd270280270304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270279270300%_)))
                              (_%$%tl270281270307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270279270300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270281270307%_))
                              (let ((_%$%e270282270310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270281270307%_))))
                                (let ((_%$%hd270283270314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270282270310%_)))
                                      (_%$%tl270284270317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270282270310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270284270317%_))
                                      (let ((_%$%e270285270320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270284270317%_))))
                                        (let ((_%$%hd270286270324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270285270320%_)))
                                              (_%$%tl270287270327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270285270320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270287270327%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd270283270314%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd270286270324%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270275270293%_
                                               _%$%g270276270297%_))))
                                      (_%$%g270275270293%_
                                       _%$%g270276270297%_))))
                              (_%$%g270275270293%_ _%$%g270276270297%_))))
                      (_%$%g270275270293%_ _%$%g270276270297%_)))))
          (_%$%g270274270348%_ _%$stx270271%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx270352%_)
        (let* ((_%$%g270356270374%_
                (lambda (_%$%g270357270370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270357270370%_))))
               (_%$%g270355270429%_
                (lambda (_%$%g270357270378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270357270378%_))
                      (let ((_%$%e270360270381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270357270378%_))))
                        (let ((_%$%hd270361270385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270360270381%_)))
                              (_%$%tl270362270388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270360270381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270362270388%_))
                              (let ((_%$%e270363270391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270362270388%_))))
                                (let ((_%$%hd270364270395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270363270391%_)))
                                      (_%$%tl270365270398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270363270391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270365270398%_))
                                      (let ((_%$%e270366270401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270365270398%_))))
                                        (let ((_%$%hd270367270405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270366270401%_)))
                                              (_%$%tl270368270408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270366270401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270368270408%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd270364270395%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd270367270405%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270356270374%_
                                               _%$%g270357270378%_))))
                                      (_%$%g270356270374%_
                                       _%$%g270357270378%_))))
                              (_%$%g270356270374%_ _%$%g270357270378%_))))
                      (_%$%g270356270374%_ _%$%g270357270378%_)))))
          (_%$%g270355270429%_ _%$stx270352%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx270433%_)
        (let* ((_%$%g270437270466%_
                (lambda (_%$%g270438270462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270438270462%_))))
               (_%$%g270436270562%_
                (lambda (_%$%g270438270470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270438270470%_))
                      (let ((_%$%e270441270473%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270438270470%_))))
                        (let ((_%$%hd270442270477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270441270473%_)))
                              (_%$%tl270443270480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270441270473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270443270480%_))
                              (let ((_g274752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl270443270480%_
                                        '0))))
                                (begin
                                  (let ((_g274753_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274752_)
                                               (##values-length _g274752_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274753_ 2)))
                                        (error "Context expects 2 values"
                                               _g274753_)))
                                  (let ((_%$%target270444270483%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274752_ 0)))
                                        (_%$%tl270446270486%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274752_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270446270486%_))
                                        (letrec ((_%$%loop270447270489%_
                                                  (lambda (_%$%hd270445270493%_
                                                           _%$%rule270451270496%_
                                                           _%$%proc270452270497%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270445270493%_))
                                                        (let ((_%$%e270448270499%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270445270493%_))))
                  (let ((_%$%lp-hd270449270503%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270448270499%_)))
                        (_%$%lp-tl270450270506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270448270499%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd270449270503%_))
                        (let ((_%$%e270455270509%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd270449270503%_))))
                          (let ((_%$%hd270456270513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270455270509%_)))
                                (_%$%tl270457270516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270455270509%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270457270516%_))
                                (let ((_%$%e270458270519%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270457270516%_))))
                                  (let ((_%$%hd270459270523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270458270519%_)))
                                        (_%$%tl270460270526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270458270519%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270460270526%_))
                                        (_%$%loop270447270489%_
                                         _%$%lp-tl270450270506%_
                                         (cons _%$%hd270459270523%_
                                               _%$%rule270451270496%_)
                                         (cons _%$%hd270456270513%_
                                               _%$%proc270452270497%_))
                                        (_%$%g270437270466%_
                                         _%$%g270438270470%_))))
                                (_%$%g270437270466%_ _%$%g270438270470%_))))
                        (_%$%g270437270466%_ _%$%g270438270470%_))))
                (let ((_%$%rule270453270529%_ (reverse _%$%rule270451270496%_))
                      (_%$%proc270454270531%_
                       (reverse _%$%proc270452270497%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule270453270529%_
                             _%$%proc270454270531%_))
                          (let ((__tmp274754
                                 (lambda (_%$%g270550270554%_
                                          _%$%g270551270557%_
                                          _%$%g270552270559%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g270551270557%_
                                                     (cons _%$%g270550270554%_
                                                           '())))
                                         _%$%g270552270559%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp274754
                             '()
                             _%$%rule270453270529%_
                             _%$%proc270454270531%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop270447270489%_
                                           _%$%target270444270483%_
                                           '()
                                           '()))
                                        (_%$%g270437270466%_
                                         _%$%g270438270470%_)))))
                              (_%$%g270437270466%_ _%$%g270438270470%_))))
                      (_%$%g270437270466%_ _%$%g270438270470%_)))))
          (_%$%g270436270562%_ _%$stx270433%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx270567%_)
        (let* ((_%$%g270571270589%_
                (lambda (_%$%g270572270585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270572270585%_))))
               (_%$%g270570270644%_
                (lambda (_%$%g270572270593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270572270593%_))
                      (let ((_%$%e270575270596%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270572270593%_))))
                        (let ((_%$%hd270576270600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270575270596%_)))
                              (_%$%tl270577270603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270575270596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270577270603%_))
                              (let ((_%$%e270578270606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270577270603%_))))
                                (let ((_%$%hd270579270610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270578270606%_)))
                                      (_%$%tl270580270613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270578270606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270580270613%_))
                                      (let ((_%$%e270581270616%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270580270613%_))))
                                        (let ((_%$%hd270582270620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270581270616%_)))
                                              (_%$%tl270583270623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270581270616%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270583270623%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'let))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'type))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'optimizer-lookup-type))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd270579270610%_
                                                      '()))
                                          '()))
                              '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'if))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             '!lambda?))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'type))
                                                '()))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'set!))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd270582270620%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'displayln))
                                                      (cons '"*** WARNING unknown procedure "
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd270579270610%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270571270589%_
                                               _%$%g270572270593%_))))
                                      (_%$%g270571270589%_
                                       _%$%g270572270593%_))))
                              (_%$%g270571270589%_ _%$%g270572270593%_))))
                      (_%$%g270571270589%_ _%$%g270572270593%_)))))
          (_%$%g270570270644%_ _%$stx270567%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx270648%_)
        (let* ((_%__stx274234274235%_ _%$stx270648%_)
               (_%$%g270653270678%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274234274235%_)))))
          (let ((_%__kont274237274238%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont274239274240%_
                 (lambda (_%$%g270658270725%_
                          _%$%g270659270727%_
                          _%$%g270660270728%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g270660270728%_
                                           (cons _%$%g270659270727%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g270658270725%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274234274235%_))
                (let ((_%$%e270655270754%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274234274235%_))))
                  (let ((_%$%tl270657270761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270655270754%_)))
                        (_%$%hd270656270758%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270655270754%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl270657270761%_))
                        (_%__kont274237274238%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl270657270761%_))
                            (let ((_%$%e270664270695%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl270657270761%_))))
                              (let ((_%$%tl270666270702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e270664270695%_)))
                                    (_%$%hd270665270699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e270664270695%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd270665270699%_))
                                    (let ((_%$%e270667270705%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd270665270699%_))))
                                      (let ((_%$%tl270669270712%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270667270705%_)))
                                            (_%$%hd270668270709%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270667270705%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270669270712%_))
                                            (let ((_%$%e270670270715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl270669270712%_))))
                                              (let ((_%$%tl270672270722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270670270715%_)))
                                                    (_%$%hd270671270719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270670270715%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270672270722%_))
                                                    (_%__kont274239274240%_
                                                     _%$%tl270666270702%_
                                                     _%$%hd270671270719%_
                                                     _%$%hd270668270709%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270653270678%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270653270678%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g270653270678%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g270653270678%_))))))
                (let () (declare (not safe)) (_%$%g270653270678%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx270772%_)
        (let* ((_%__stx274278274279%_ _%$stx270772%_)
               (_%$%g270777270808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274278274279%_)))))
          (let ((_%__kont274281274282%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont274283274284%_
                 (lambda (_%$%g270782270873%_
                          _%$%g270783270875%_
                          _%$%g270784270876%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g270784270876%_
                                           (let ((__tmp274755
                                                  (lambda (_%$%g270896270899%_
                                                           _%$%g270897270902%_)
                                                    (cons _%$%g270896270899%_
                                                          _%$%g270897270902%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp274755
                                              '()
                                              _%$%g270783270875%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g270782270873%_)
                                     '()))))))
            (let ((_%__match274321274322%_
                   (lambda (_%$%e270785270815%_
                            _%$%hd270786270819%_
                            _%$%tl270787270822%_
                            _%$%e270788270825%_
                            _%$%hd270789270829%_
                            _%$%tl270790270832%_
                            _%$%e270791270835%_
                            _%$%hd270792270839%_
                            _%$%tl270793270842%_
                            _%__splice274285274286%_
                            _%$%target270794270845%_
                            _%$%tl270796270848%_)
                     (letrec ((_%$%loop270797270851%_
                               (lambda (_%$%hd270795270855%_
                                        _%$%sig270801270858%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd270795270855%_))
                                     (let ((_%$%e270798270860%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd270795270855%_))))
                                       (let ((_%$%lp-tl270800270867%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e270798270860%_)))
                                             (_%$%lp-hd270799270864%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e270798270860%_))))
                                         (_%$%loop270797270851%_
                                          _%$%lp-tl270800270867%_
                                          (cons _%$%lp-hd270799270864%_
                                                _%$%sig270801270858%_))))
                                     (let ((_%$%sig270802270870%_
                                            (reverse _%$%sig270801270858%_)))
                                       (_%__kont274283274284%_
                                        _%$%tl270790270832%_
                                        _%$%sig270802270870%_
                                        _%$%hd270792270839%_))))))
                       (_%$%loop270797270851%_
                        _%$%target270794270845%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx274278274279%_))
                  (let ((_%$%e270779270912%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx274278274279%_))))
                    (let ((_%$%tl270781270919%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270779270912%_)))
                          (_%$%hd270780270916%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270779270912%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270781270919%_))
                          (_%__kont274281274282%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270781270919%_))
                              (let ((_%$%e270788270825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270781270919%_))))
                                (let ((_%$%tl270790270832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270788270825%_)))
                                      (_%$%hd270789270829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270788270825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270789270829%_))
                                      (let ((_%$%e270791270835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270789270829%_))))
                                        (let ((_%$%tl270793270842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270791270835%_)))
                                              (_%$%hd270792270839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270791270835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl270793270842%_))
                                              (let ((_%__splice274285274286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl270793270842%_
                                                        '0))))
                                                (let ((_%$%tl270796270848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice274285274286%_
                                                          '1)))
                                                      (_%$%target270794270845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice274285274286%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270796270848%_))
                                                      (_%__match274321274322%_
                                                       _%$%e270779270912%_
                                                       _%$%hd270780270916%_
                                                       _%$%tl270781270919%_
                                                       _%$%e270788270825%_
                                                       _%$%hd270789270829%_
                                                       _%$%tl270790270832%_
                                                       _%$%e270791270835%_
                                                       _%$%hd270792270839%_
                                                       _%$%tl270793270842%_
                                                       _%__splice274285274286%_
                                                       _%$%target270794270845%_
                                                       _%$%tl270796270848%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270777270808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270777270808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270777270808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g270777270808%_))))))
                  (let () (declare (not safe)) (_%$%g270777270808%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx270931%_)
        (let* ((_%__stx274324274325%_ _%$stx270931%_)
               (_%$%g270936270983%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274324274325%_)))))
          (let ((_%__kont274327274328%_
                 (lambda (_%$%g270938271141%_ _%$%g270939271143%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g270939271143%_
                               (let ((__tmp274756
                                      (lambda (_%$%g271163271166%_
                                               _%$%g271164271169%_)
                                        (cons _%$%g271163271166%_
                                              _%$%g271164271169%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp274756
                                  '()
                                  _%$%g270938271141%_))))))
                (_%__kont274331274332%_
                 (lambda (_%$%g270961271038%_ _%$%g270962271040%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g270962271040%_
                               (let ((__tmp274757
                                      (lambda (_%$%g271057271060%_
                                               _%$%g271058271063%_)
                                        (cons _%$%g271057271060%_
                                              _%$%g271058271063%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp274757
                                  '()
                                  _%$%g270961271038%_)))))))
            (let* ((_%__match274391274392%_
                    (lambda (_%$%e270963270990%_
                             _%$%hd270964270994%_
                             _%$%tl270965270997%_
                             _%$%e270966271000%_
                             _%$%hd270967271004%_
                             _%$%tl270968271007%_
                             _%__splice274333274334%_
                             _%$%target270969271010%_
                             _%$%tl270971271013%_)
                      (letrec ((_%$%loop270972271016%_
                                (lambda (_%$%hd270970271020%_
                                         _%$%sig270976271023%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270970271020%_))
                                      (let ((_%$%e270973271025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270970271020%_))))
                                        (let ((_%$%lp-tl270975271032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270973271025%_)))
                                              (_%$%lp-hd270974271029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270973271025%_))))
                                          (_%$%loop270972271016%_
                                           _%$%lp-tl270975271032%_
                                           (cons _%$%lp-hd270974271029%_
                                                 _%$%sig270976271023%_))))
                                      (let ((_%$%sig270977271035%_
                                             (reverse _%$%sig270976271023%_)))
                                        (_%__kont274331274332%_
                                         _%$%sig270977271035%_
                                         _%$%hd270967271004%_))))))
                        (_%$%loop270972271016%_
                         _%$%target270969271010%_
                         '()))))
                   (_%__match274383274384%_
                    (lambda (_%$%e270963270990%_
                             _%$%hd270964270994%_
                             _%$%tl270965270997%_
                             _%$%e270966271000%_
                             _%$%hd270967271004%_
                             _%$%tl270968271007%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl270968271007%_))
                          (let ((_%__splice274333274334%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl270968271007%_
                                    '0))))
                            (let ((_%$%tl270971271013%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice274333274334%_
                                      '1)))
                                  (_%$%target270969271010%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice274333274334%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl270971271013%_))
                                  (_%__match274391274392%_
                                   _%$%e270963270990%_
                                   _%$%hd270964270994%_
                                   _%$%tl270965270997%_
                                   _%$%e270966271000%_
                                   _%$%hd270967271004%_
                                   _%$%tl270968271007%_
                                   _%__splice274333274334%_
                                   _%$%target270969271010%_
                                   _%$%tl270971271013%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g270936270983%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270936270983%_)))))
                   (_%__match274371274372%_
                    (lambda (_%$%e270940271073%_
                             _%$%hd270941271077%_
                             _%$%tl270942271080%_
                             _%$%e270943271083%_
                             _%$%hd270944271087%_
                             _%$%tl270945271090%_
                             _%$%e270946271093%_
                             _%$%hd270947271097%_
                             _%$%tl270948271100%_
                             _%$%e270949271103%_
                             _%$%hd270950271107%_
                             _%$%tl270951271110%_
                             _%__splice274329274330%_
                             _%$%target270952271113%_
                             _%$%tl270954271116%_)
                      (letrec ((_%$%loop270955271119%_
                                (lambda (_%$%hd270953271123%_
                                         _%$%sig270959271126%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270953271123%_))
                                      (let ((_%$%e270956271128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270953271123%_))))
                                        (let ((_%$%lp-tl270958271135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270956271128%_)))
                                              (_%$%lp-hd270957271132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270956271128%_))))
                                          (_%$%loop270955271119%_
                                           _%$%lp-tl270958271135%_
                                           (cons _%$%lp-hd270957271132%_
                                                 _%$%sig270959271126%_))))
                                      (let ((_%$%sig270960271138%_
                                             (reverse _%$%sig270959271126%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270948271100%_))
                                            (_%__kont274327274328%_
                                             _%$%sig270960271138%_
                                             _%$%hd270944271087%_)
                                            (_%__match274383274384%_
                                             _%$%e270940271073%_
                                             _%$%hd270941271077%_
                                             _%$%tl270942271080%_
                                             _%$%e270943271083%_
                                             _%$%hd270944271087%_
                                             _%$%tl270945271090%_)))))))
                        (_%$%loop270955271119%_
                         _%$%target270952271113%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx274324274325%_))
                  (let ((_%$%e270940271073%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx274324274325%_))))
                    (let ((_%$%tl270942271080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270940271073%_)))
                          (_%$%hd270941271077%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270940271073%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270942271080%_))
                          (let ((_%$%e270943271083%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl270942271080%_))))
                            (let ((_%$%tl270945271090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270943271083%_)))
                                  (_%$%hd270944271087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270943271083%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270945271090%_))
                                  (let ((_%$%e270946271093%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl270945271090%_))))
                                    (let ((_%$%tl270948271100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270946271093%_)))
                                          (_%$%hd270947271097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270946271093%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd270947271097%_))
                                          (let ((_%$%e270949271103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd270947271097%_))))
                                            (let ((_%$%tl270951271110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270949271103%_)))
                                                  (_%$%hd270950271107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270949271103%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270950271107%_))
                                                  (if (let ((__tmp274758
                                                             |gxc[1]#_g274759_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp274758
                                                         _%$%hd270950271107%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl270951271110%_))
                                                          (let ((_%__splice274329274330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl270951271110%_
                            '0))))
                    (let ((_%$%tl270954271116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice274329274330%_ '1)))
                          (_%$%target270952271113%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice274329274330%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270954271116%_))
                          (_%__match274371274372%_
                           _%$%e270940271073%_
                           _%$%hd270941271077%_
                           _%$%tl270942271080%_
                           _%$%e270943271083%_
                           _%$%hd270944271087%_
                           _%$%tl270945271090%_
                           _%$%e270946271093%_
                           _%$%hd270947271097%_
                           _%$%tl270948271100%_
                           _%$%e270949271103%_
                           _%$%hd270950271107%_
                           _%$%tl270951271110%_
                           _%__splice274329274330%_
                           _%$%target270952271113%_
                           _%$%tl270954271116%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270945271090%_))
                              (let ((_%__splice274333274334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl270945271090%_
                                        '0))))
                                (let ((_%$%tl270971271013%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice274333274334%_
                                          '1)))
                                      (_%$%target270969271010%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice274333274334%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl270971271013%_))
                                      (_%__match274391274392%_
                                       _%$%e270940271073%_
                                       _%$%hd270941271077%_
                                       _%$%tl270942271080%_
                                       _%$%e270943271083%_
                                       _%$%hd270944271087%_
                                       _%$%tl270945271090%_
                                       _%__splice274333274334%_
                                       _%$%target270969271010%_
                                       _%$%tl270971271013%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270936270983%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g270936270983%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl270945271090%_))
                      (let ((_%__splice274333274334%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl270945271090%_
                                '0))))
                        (let ((_%$%tl270971271013%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice274333274334%_ '1)))
                              (_%$%target270969271010%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice274333274334%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl270971271013%_))
                              (_%__match274391274392%_
                               _%$%e270940271073%_
                               _%$%hd270941271077%_
                               _%$%tl270942271080%_
                               _%$%e270943271083%_
                               _%$%hd270944271087%_
                               _%$%tl270945271090%_
                               _%__splice274333274334%_
                               _%$%target270969271010%_
                               _%$%tl270971271013%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g270936270983%_)))))
                      (let () (declare (not safe)) (_%$%g270936270983%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl270945271090%_))
                  (let ((_%__splice274333274334%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl270945271090%_
                            '0))))
                    (let ((_%$%tl270971271013%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice274333274334%_ '1)))
                          (_%$%target270969271010%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice274333274334%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270971271013%_))
                          (_%__match274391274392%_
                           _%$%e270940271073%_
                           _%$%hd270941271077%_
                           _%$%tl270942271080%_
                           _%$%e270943271083%_
                           _%$%hd270944271087%_
                           _%$%tl270945271090%_
                           _%__splice274333274334%_
                           _%$%target270969271010%_
                           _%$%tl270971271013%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g270936270983%_)))))
                  (let () (declare (not safe)) (_%$%g270936270983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl270945271090%_))
                                                      (let ((_%__splice274333274334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl270945271090%_
                        '0))))
                (let ((_%$%tl270971271013%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice274333274334%_ '1)))
                      (_%$%target270969271010%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice274333274334%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl270971271013%_))
                      (_%__match274391274392%_
                       _%$%e270940271073%_
                       _%$%hd270941271077%_
                       _%$%tl270942271080%_
                       _%$%e270943271083%_
                       _%$%hd270944271087%_
                       _%$%tl270945271090%_
                       _%__splice274333274334%_
                       _%$%target270969271010%_
                       _%$%tl270971271013%_)
                      (let () (declare (not safe)) (_%$%g270936270983%_)))))
              (let () (declare (not safe)) (_%$%g270936270983%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl270945271090%_))
                                              (let ((_%__splice274333274334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl270945271090%_
                                                        '0))))
                                                (let ((_%$%tl270971271013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice274333274334%_
                                                          '1)))
                                                      (_%$%target270969271010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice274333274334%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270971271013%_))
                                                      (_%__match274391274392%_
                                                       _%$%e270940271073%_
                                                       _%$%hd270941271077%_
                                                       _%$%tl270942271080%_
                                                       _%$%e270943271083%_
                                                       _%$%hd270944271087%_
                                                       _%$%tl270945271090%_
                                                       _%__splice274333274334%_
                                                       _%$%target270969271010%_
                                                       _%$%tl270971271013%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270936270983%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270936270983%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl270945271090%_))
                                      (let ((_%__splice274333274334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl270945271090%_
                                                '0))))
                                        (let ((_%$%tl270971271013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice274333274334%_
                                                  '1)))
                                              (_%$%target270969271010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice274333274334%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270971271013%_))
                                              (_%__match274391274392%_
                                               _%$%e270940271073%_
                                               _%$%hd270941271077%_
                                               _%$%tl270942271080%_
                                               _%$%e270943271083%_
                                               _%$%hd270944271087%_
                                               _%$%tl270945271090%_
                                               _%__splice274333274334%_
                                               _%$%target270969271010%_
                                               _%$%tl270971271013%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270936270983%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270936270983%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270936270983%_)))))
                  (let () (declare (not safe)) (_%$%g270936270983%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx272326%_ _%id272328%_)
        (let ((_%proc272332%_
               (let ((__tmp274760
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id272328%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp274760))))
          (if (procedure? _%proc272332%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx272326%_
                 _%id272328%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx272317%_ _%id272319%_)
        (let ((_%klass272323%_
               (let ((__tmp274761
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id272319%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp274761))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass272323%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx272317%_
                 _%id272319%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx271567%_ _%proc271569%_ _%sig271570%_)
        (letrec ((_%signature-arity271572%_
                  (lambda (_%args272249%_)
                    (let _%loop272252%_ ((_%rest272255%_ _%args272249%_)
                                         (_%count272257%_ '0))
                      (let* ((_%$%rest272258272269%_ _%rest272255%_)
                             (_%$%E272262272275%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest272258272269%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K272265272306%_
                               (lambda (_%rest272303%_)
                                 (_%loop272252%_
                                  _%rest272303%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count272257%_ '1)))))
                              (_%$%K272264272295%_ (lambda () _%count272257%_))
                              (_%$%K272263272283%_
                               (lambda () (cons _%count272257%_ '()))))
                          (let ((_%$%try-match272260272299%_
                                 (lambda ()
                                   (if (null? _%$%rest272258272269%_)
                                       (_%$%K272264272295%_)
                                       (_%$%K272263272283%_)))))
                            (if (pair? _%$%rest272258272269%_)
                                (let* ((_%$%tl272267272310%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest272258272269%_)))
                                       (_%rest272314%_ _%$%tl272267272310%_))
                                  (_%$%K272265272306%_ _%rest272314%_))
                                (_%$%try-match272260272299%_))))))))
                 (_%make-signature271574%_
                  (lambda (_%args272131%_
                           _%return272133%_
                           _%effect272134%_
                           _%unchecked272135%_)
                    (let ((__tmp274762
                           (lambda (_%$%g272136272138%_)
                             (|gxc[1]#verify-class!|
                              _%ctx271567%_
                              _%$%g272136272138%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp274762 _%args272131%_))
                    (|gxc[1]#verify-class!| _%ctx271567%_ _%return272133%_)
                    (if _%unchecked272135%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx271567%_
                         _%unchecked272135%_)
                        '#!void)
                    (let ((_%arity272142%_
                           (_%signature-arity271572%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args272131%_)))))
                      (if _%effect272134%_
                          (let ((_%effect272145%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect272134%_))))
                            (if (and (list? _%effect272145%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect272145%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx271567%_
                                   _%proc271569%_
                                   _%effect272145%_))))
                          '#!void)
                      (cons _%arity272142%_
                            (cons (let* ((_%$%g272148272171%_
                                          (lambda (_%$%g272149272167%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g272149272167%_))))
                                         (_%$%g272147272245%_
                                          (lambda (_%$%g272149272175%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g272149272175%_))
                                                (let ((_%$%e272154272178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g272149272175%_))))
                                                  (let ((_%$%hd272155272182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272154272178%_)))
                                                        (_%$%tl272156272185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272154272178%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl272156272185%_))
                                                        (let ((_%$%e272157272188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl272156272185%_))))
                  (let ((_%$%hd272158272192%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272157272188%_)))
                        (_%$%tl272159272195%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272157272188%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272159272195%_))
                        (let ((_%$%e272160272198%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl272159272195%_))))
                          (let ((_%$%hd272161272202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272160272198%_)))
                                (_%$%tl272162272205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272160272198%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl272162272205%_))
                                (let ((_%$%e272163272208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl272162272205%_))))
                                  (let ((_%$%hd272164272212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272163272208%_)))
                                        (_%$%tl272165272215%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272163272208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272165272215%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!signature))
                                              (cons 'arguments:
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272155272182%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd272158272192%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd272161272202%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd272164272212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g272148272171%_
                                         _%$%g272149272175%_))))
                                (_%$%g272148272171%_ _%$%g272149272175%_))))
                        (_%$%g272148272171%_ _%$%g272149272175%_))))
                (_%$%g272148272171%_ _%$%g272149272175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g272148272171%_
                                                 _%$%g272149272175%_)))))
                                    (_%$%g272147272245%_
                                     (list _%args272131%_
                                           _%return272133%_
                                           _%effect272134%_
                                           _%unchecked272135%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx271567%_ _%proc271569%_)
          (let* ((_%__stx274402274403%_ _%sig271570%_)
                 (_%$%g271581271684%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx274402274403%_)))))
            (let ((_%__kont274405274406%_
                   (lambda (_%$%g271583272112%_ _%$%g271584272114%_)
                     (_%make-signature271574%_
                      _%$%g271584272114%_
                      _%$%g271583272112%_
                      '#f
                      '#f)))
                  (_%__kont274407274408%_
                   (lambda (_%$%g271591272063%_
                            _%$%g271592272065%_
                            _%$%g271593272066%_)
                     (_%make-signature271574%_
                      _%$%g271593272066%_
                      _%$%g271592272065%_
                      _%$%g271591272063%_
                      '#f)))
                  (_%__kont274409274410%_
                   (lambda (_%$%g271607271987%_
                            _%$%g271608271989%_
                            _%$%g271609271990%_)
                     (_%make-signature271574%_
                      _%$%g271609271990%_
                      _%$%g271608271989%_
                      _%$%g271607271987%_
                      (let ((__tmp274763
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc271569%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp274763)))))
                  (_%__kont274411274412%_
                   (lambda (_%$%g271627271893%_
                            _%$%g271628271895%_
                            _%$%g271629271896%_
                            _%$%g271630271897%_)
                     (_%make-signature271574%_
                      _%$%g271630271897%_
                      _%$%g271629271896%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g271627271893%_)))))
                  (_%__kont274413274414%_
                   (lambda (_%$%g271651271800%_ _%$%g271652271802%_)
                     (_%make-signature271574%_
                      _%$%g271652271802%_
                      _%$%g271651271800%_
                      '#f
                      (let ((__tmp274764
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc271569%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp274764)))))
                  (_%__kont274415274416%_
                   (lambda (_%$%g271663271735%_
                            _%$%g271664271737%_
                            _%$%g271665271738%_)
                     (_%make-signature271574%_
                      _%$%g271665271738%_
                      _%$%g271664271737%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g271663271735%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx274402274403%_))
                  (let ((_%$%e271585272092%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx274402274403%_))))
                    (let ((_%$%tl271587272099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271585272092%_)))
                          (_%$%hd271586272096%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271585272092%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl271587272099%_))
                          (let ((_%$%e271588272102%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl271587272099%_))))
                            (let ((_%$%tl271590272109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e271588272102%_)))
                                  (_%$%hd271589272106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e271588272102%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl271590272109%_))
                                  (_%__kont274405274406%_
                                   _%$%hd271589272106%_
                                   _%$%hd271586272096%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271590272109%_))
                                      (let ((_%$%e271600272039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271590272109%_))))
                                        (let ((_%$%tl271602272046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271600272039%_)))
                                              (_%$%hd271601272043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271600272039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd271601272043%_))
                                              (let ((_%$%e271603272049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd271601272043%_))))
                                                (if (equal? _%$%e271603272049%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl271602272046%_))
                                                        (let ((_%$%e271604272053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl271602272046%_))))
                  (let ((_%$%tl271606272060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271604272053%_)))
                        (_%$%hd271605272057%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271604272053%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl271606272060%_))
                        (_%__kont274407274408%_
                         _%$%hd271605272057%_
                         _%$%hd271589272106%_
                         _%$%hd271586272096%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271606272060%_))
                            (let ((_%$%e271623271973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl271606272060%_))))
                              (let ((_%$%tl271625271980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271623271973%_)))
                                    (_%$%hd271624271977%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271623271973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd271624271977%_))
                                    (let ((_%$%e271626271983%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd271624271977%_))))
                                      (if (equal? _%$%e271626271983%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl271625271980%_))
                                              (_%__kont274409274410%_
                                               _%$%hd271605272057%_
                                               _%$%hd271589272106%_
                                               _%$%hd271586272096%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271625271980%_))
                                                  (let ((_%$%e271648271883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271625271980%_))))
                                                    (let ((_%$%tl271650271890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271648271883%_)))
                                                          (_%$%hd271649271887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271648271883%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl271650271890%_))
                                                          (_%__kont274411274412%_
                                                           _%$%hd271649271887%_
                                                           _%$%hd271605272057%_
                                                           _%$%hd271589272106%_
                                                           _%$%hd271586272096%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g271581271684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g271581271684%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g271581271684%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g271581271684%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g271581271684%_))))))
                (let () (declare (not safe)) (_%$%g271581271684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e271603272049%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl271602272046%_))
                                                            (_%__kont274413274414%_
                                                             _%$%hd271589272106%_
                                                             _%$%hd271586272096%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271602272046%_))
                        (let ((_%$%e271676271725%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271602272046%_))))
                          (let ((_%$%tl271678271732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271676271725%_)))
                                (_%$%hd271677271729%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271676271725%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl271678271732%_))
                                (_%__kont274415274416%_
                                 _%$%hd271677271729%_
                                 _%$%hd271589272106%_
                                 _%$%hd271586272096%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g271581271684%_)))))
                        (let () (declare (not safe)) (_%$%g271581271684%_))))
                (let () (declare (not safe)) (_%$%g271581271684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g271581271684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g271581271684%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g271581271684%_)))))
                  (let () (declare (not safe)) (_%$%g271581271684%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig271178%_)
        (let* ((_%$%g271181271261%_
                (lambda (_%$%g271182271257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271182271257%_))))
               (_%$%g271180271563%_
                (lambda (_%$%g271182271265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271182271265%_))
                      (let ((_%$%e271188271268%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271182271265%_))))
                        (let ((_%$%hd271189271272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271188271268%_)))
                              (_%$%tl271190271275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271188271268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271190271275%_))
                              (let ((_%$%e271191271278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271190271275%_))))
                                (let ((_%$%hd271192271282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271191271278%_)))
                                      (_%$%tl271193271285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271191271278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd271192271282%_))
                                      (let ((_%$%e271194271288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd271192271282%_))))
                                        (if (equal? _%$%e271194271288%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl271193271285%_))
                                                (let ((_%$%e271195271292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl271193271285%_))))
                                                  (let ((_%$%hd271196271296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271195271292%_)))
                                                        (_%$%tl271197271299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271195271292%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd271196271296%_))
                                                        (let ((_%$%e271198271302%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd271196271296%_))))
                  (let ((_%$%hd271199271306%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271198271302%_)))
                        (_%$%tl271200271309%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271198271302%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd271199271306%_))
                        (if (let ((__tmp274765 |gxc[1]#_g274766_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp274765
                               _%$%hd271199271306%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl271200271309%_))
                                (let ((_%$%e271201271312%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl271200271309%_))))
                                  (let ((_%$%hd271202271316%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271201271312%_)))
                                        (_%$%tl271203271319%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271201271312%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl271203271319%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl271197271299%_))
                                            (let ((_%$%e271204271322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl271197271299%_))))
                                              (let ((_%$%hd271205271326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e271204271322%_)))
                                                    (_%$%tl271206271329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e271204271322%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd271205271326%_))
                                                    (let ((_%$%e271207271332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd271205271326%_))))
                                                      (if (equal? _%$%e271207271332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271206271329%_))
                      (let ((_%$%e271208271336%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271206271329%_))))
                        (let ((_%$%hd271209271340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271208271336%_)))
                              (_%$%tl271210271343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271208271336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd271209271340%_))
                              (let ((_%$%e271211271346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd271209271340%_))))
                                (let ((_%$%hd271212271350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271211271346%_)))
                                      (_%$%tl271213271353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271211271346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd271212271350%_))
                                      (if (let ((__tmp274767
                                                 |gxc[1]#_g274768_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp274767
                                             _%$%hd271212271350%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271213271353%_))
                                              (let ((_%$%e271214271356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271213271353%_))))
                                                (let ((_%$%hd271215271360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271214271356%_)))
                                                      (_%$%tl271216271363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271214271356%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl271216271363%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl271210271343%_))
                                                          (let ((_%$%e271217271366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl271210271343%_))))
                    (let ((_%$%hd271218271370%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271217271366%_)))
                          (_%$%tl271219271373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271217271366%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd271218271370%_))
                          (let ((_%$%e271220271376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd271218271370%_))))
                            (if (equal? _%$%e271220271376%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl271219271373%_))
                                    (let ((_%$%e271221271380%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl271219271373%_))))
                                      (let ((_%$%hd271222271384%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271221271380%_)))
                                            (_%$%tl271223271387%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271221271380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd271222271384%_))
                                            (let ((_%$%e271224271390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd271222271384%_))))
                                              (let ((_%$%hd271225271394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e271224271390%_)))
                                                    (_%$%tl271226271397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e271224271390%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd271225271394%_))
                                                    (if (let ((__tmp274769
                                                               |gxc[1]#_g274770_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp274769
                                                           _%$%hd271225271394%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl271226271397%_))
                                                            (let ((_%$%e271227271400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl271226271397%_))))
                      (let ((_%$%hd271228271404%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e271227271400%_)))
                            (_%$%tl271229271407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e271227271400%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl271229271407%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl271223271387%_))
                                (let ((_%$%e271230271410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl271223271387%_))))
                                  (let ((_%$%hd271231271414%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271230271410%_)))
                                        (_%$%tl271232271417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271230271410%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd271231271414%_))
                                        (let ((_%$%e271233271420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd271231271414%_))))
                                          (if (equal? _%$%e271233271420%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271232271417%_))
                                                  (let ((_%$%e271234271424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271232271417%_))))
                                                    (let ((_%$%hd271235271428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271234271424%_)))
                                                          (_%$%tl271236271431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271234271424%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd271235271428%_))
                                                          (let ((_%$%e271237271434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd271235271428%_))))
                    (let ((_%$%hd271238271438%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271237271434%_)))
                          (_%$%tl271239271441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271237271434%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd271238271438%_))
                          (if (let ((__tmp274771 |gxc[1]#_g274772_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp274771
                                 _%$%hd271238271438%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl271239271441%_))
                                  (let ((_%$%e271240271444%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl271239271441%_))))
                                    (let ((_%$%hd271241271448%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e271240271444%_)))
                                          (_%$%tl271242271451%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e271240271444%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl271242271451%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271236271431%_))
                                              (let ((_%$%e271243271454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271236271431%_))))
                                                (let ((_%$%hd271244271458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271243271454%_)))
                                                      (_%$%tl271245271461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271243271454%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd271244271458%_))
                                                      (let ((_%$%e271246271464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd271244271458%_))))
                (if (equal? _%$%e271246271464%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271245271461%_))
                        (let ((_%$%e271247271468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271245271461%_))))
                          (let ((_%$%hd271248271472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271247271468%_)))
                                (_%$%tl271249271475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271247271468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd271248271472%_))
                                (let ((_%$%e271250271478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd271248271472%_))))
                                  (let ((_%$%hd271251271482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271250271478%_)))
                                        (_%$%tl271252271485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271250271478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd271251271482%_))
                                        (if (let ((__tmp274773
                                                   |gxc[1]#_g274774_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp274773
                                               _%$%hd271251271482%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl271252271485%_))
                                                (let ((_%$%e271253271488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl271252271485%_))))
                                                  (let ((_%$%hd271254271492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271253271488%_)))
                                                        (_%$%tl271255271495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271253271488%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271255271495%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl271249271475%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd271241271448%_))
                        (cons _%$%hd271241271448%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd271215271360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd271254271492%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g271181271261%_ _%$%g271182271265%_))
                (_%$%g271181271261%_ _%$%g271182271265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g271181271261%_
                                                 _%$%g271182271265%_))
                                            (_%$%g271181271261%_
                                             _%$%g271182271265%_))
                                        (_%$%g271181271261%_
                                         _%$%g271182271265%_))))
                                (_%$%g271181271261%_ _%$%g271182271265%_))))
                        (_%$%g271181271261%_ _%$%g271182271265%_))
                    (_%$%g271181271261%_ _%$%g271182271265%_)))
              (_%$%g271181271261%_ _%$%g271182271265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271181271261%_
                                               _%$%g271182271265%_))
                                          (_%$%g271181271261%_
                                           _%$%g271182271265%_))))
                                  (_%$%g271181271261%_ _%$%g271182271265%_))
                              (_%$%g271181271261%_ _%$%g271182271265%_))
                          (_%$%g271181271261%_ _%$%g271182271265%_))))
                  (_%$%g271181271261%_ _%$%g271182271265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g271181271261%_
                                                   _%$%g271182271265%_))
                                              (_%$%g271181271261%_
                                               _%$%g271182271265%_)))
                                        (_%$%g271181271261%_
                                         _%$%g271182271265%_))))
                                (_%$%g271181271261%_ _%$%g271182271265%_))
                            (_%$%g271181271261%_ _%$%g271182271265%_))))
                    (_%$%g271181271261%_ _%$%g271182271265%_))
                (_%$%g271181271261%_ _%$%g271182271265%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271181271261%_
                                                     _%$%g271182271265%_))))
                                            (_%$%g271181271261%_
                                             _%$%g271182271265%_))))
                                    (_%$%g271181271261%_ _%$%g271182271265%_))
                                (_%$%g271181271261%_ _%$%g271182271265%_)))
                          (_%$%g271181271261%_ _%$%g271182271265%_))))
                  (_%$%g271181271261%_ _%$%g271182271265%_))
              (_%$%g271181271261%_ _%$%g271182271265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271181271261%_
                                               _%$%g271182271265%_))
                                          (_%$%g271181271261%_
                                           _%$%g271182271265%_))
                                      (_%$%g271181271261%_
                                       _%$%g271182271265%_))))
                              (_%$%g271181271261%_ _%$%g271182271265%_))))
                      (_%$%g271181271261%_ _%$%g271182271265%_))
                  (_%$%g271181271261%_ _%$%g271182271265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271181271261%_
                                                     _%$%g271182271265%_))))
                                            (_%$%g271181271261%_
                                             _%$%g271182271265%_))
                                        (_%$%g271181271261%_
                                         _%$%g271182271265%_))))
                                (_%$%g271181271261%_ _%$%g271182271265%_))
                            (_%$%g271181271261%_ _%$%g271182271265%_))
                        (_%$%g271181271261%_ _%$%g271182271265%_))))
                (_%$%g271181271261%_ _%$%g271182271265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g271181271261%_
                                                 _%$%g271182271265%_))
                                            (_%$%g271181271261%_
                                             _%$%g271182271265%_)))
                                      (_%$%g271181271261%_
                                       _%$%g271182271265%_))))
                              (_%$%g271181271261%_ _%$%g271182271265%_))))
                      (_%$%g271181271261%_ _%$%g271182271265%_)))))
          (_%$%g271180271563%_ _%sig271178%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx272335%_)
        (let* ((_%$%g272338272356%_
                (lambda (_%$%g272339272352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272339272352%_))))
               (_%$%g272337272411%_
                (lambda (_%$%g272339272360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272339272360%_))
                      (let ((_%$%e272342272363%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272339272360%_))))
                        (let ((_%$%hd272343272367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272342272363%_)))
                              (_%$%tl272344272370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272342272363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272344272370%_))
                              (let ((_%$%e272345272373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272344272370%_))))
                                (let ((_%$%hd272346272377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272345272373%_)))
                                      (_%$%tl272347272380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272345272373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272347272380%_))
                                      (let ((_%$%e272348272383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272347272380%_))))
                                        (let ((_%$%hd272349272387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272348272383%_)))
                                              (_%$%tl272350272390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272348272383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272350272390%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd272346272377%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd272349272387%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx272335%_
                                                     _%$%hd272346272377%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx272335%_
                                                     _%$%hd272349272387%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd272346272377%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd272349272387%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g272338272356%_
                                                   _%$%g272339272360%_))
                                              (_%$%g272338272356%_
                                               _%$%g272339272360%_))))
                                      (_%$%g272338272356%_
                                       _%$%g272339272360%_))))
                              (_%$%g272338272356%_ _%$%g272339272360%_))))
                      (_%$%g272338272356%_ _%$%g272339272360%_)))))
          (_%$%g272337272411%_ _%stx272335%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx272415%_)
        (let* ((_%$%g272418272442%_
                (lambda (_%$%g272419272438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272419272438%_))))
               (_%$%g272417272723%_
                (lambda (_%$%g272419272446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272419272446%_))
                      (let ((_%$%e272422272449%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272419272446%_))))
                        (let ((_%$%hd272423272453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272422272449%_)))
                              (_%$%tl272424272456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272422272449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272424272456%_))
                              (let ((_%$%e272425272459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272424272456%_))))
                                (let ((_%$%hd272426272463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272425272459%_)))
                                      (_%$%tl272427272466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272425272459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl272427272466%_))
                                      (let ((_g274775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl272427272466%_
                                                '0))))
                                        (begin
                                          (let ((_g274776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274775_)
                                                       (##values-length
                                                        _g274775_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274776_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274776_)))
                                          (let ((_%$%target272428272469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274775_ 0)))
                                                (_%$%tl272430272472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274775_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272430272472%_))
                                                (letrec ((_%$%loop272431272475%_
                                                          (lambda (_%$%hd272429272479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature272435272482%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd272429272479%_))
                        (let ((_%$%e272432272484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd272429272479%_))))
                          (let ((_%$%lp-hd272433272488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272432272484%_)))
                                (_%$%lp-tl272434272491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272432272484%_))))
                            (_%$%loop272431272475%_
                             _%$%lp-tl272434272491%_
                             (cons _%$%lp-hd272433272488%_
                                   _%$%signature272435272482%_))))
                        (let ((_%$%signature272436272494%_
                               (reverse _%$%signature272435272482%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272426272463%_))
                              (let* ((_%$%g272517272532%_
                                      (lambda (_%$%g272518272528%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g272518272528%_))))
                                     (_%$%g272516272711%_
                                      (lambda (_%$%g272518272536%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g272518272536%_))
                                            (let ((_%$%e272521272539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g272518272536%_))))
                                              (let ((_%$%hd272522272543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272521272539%_)))
                                                    (_%$%tl272523272546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272521272539%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl272523272546%_))
                                                    (let ((_%$%e272524272549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl272523272546%_))))
                                                      (let ((_%$%hd272525272553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e272524272549%_)))
                    (_%$%tl272526272556%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e272524272549%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl272526272556%_))
                    (let* ((_%$%g272577272585%_
                            (lambda (_%$%g272578272581%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g272578272581%_))))
                           (_%$%g272576272707%_
                            (lambda (_%$%g272578272589%_)
                              (let* ((_%unchecked272605%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd272525272553%_))
                                     (_%$%g272608272616%_
                                      (lambda (_%$%g272609272612%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g272609272612%_))))
                                     (_%$%g272607272639%_
                                      (lambda (_%$%g272609272620%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g272578272589%_
                                                    (cons _%$%g272609272620%_
                                                          '()))))))
                                (_%$%g272607272639%_
                                 (if _%unchecked272605%_
                                     (let* ((_%$%g272643272658%_
                                             (lambda (_%$%g272644272654%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g272644272654%_))))
                                            (_%$%g272642272703%_
                                             (lambda (_%$%g272644272662%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g272644272662%_))
                                                   (let ((_%$%e272647272665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g272644272662%_))))
                                                     (let ((_%$%hd272648272669%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e272647272665%_)))
                                                           (_%$%tl272649272672%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e272647272665%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl272649272672%_))
                                                           (let ((_%$%e272650272675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl272649272672%_))))
                     (let ((_%$%hd272651272679%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e272650272675%_)))
                           (_%$%tl272652272682%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e272650272675%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl272652272682%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd272648272669%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd272522272543%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd272651272679%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g272643272658%_ _%$%g272644272662%_))))
                   (_%$%g272643272658%_ _%$%g272644272662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g272643272658%_
                                                    _%$%g272644272662%_)))))
                                       (_%$%g272642272703%_
                                        _%unchecked272605%_))
                                     '(begin)))))))
                      (_%$%g272576272707%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd272426272463%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd272522272543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd272525272553%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g272517272532%_ _%$%g272518272536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g272517272532%_
                                                     _%$%g272518272536%_))))
                                            (_%$%g272517272532%_
                                             _%$%g272518272536%_)))))
                                (_%$%g272516272711%_
                                 (|gxc[1]#parse-signature|
                                  _%stx272415%_
                                  _%$%hd272426272463%_
                                  (let ((__tmp274777
                                         (lambda (_%$%g272714272717%_
                                                  _%$%g272715272720%_)
                                           (cons _%$%g272714272717%_
                                                 _%$%g272715272720%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp274777
                                     '()
                                     _%$%signature272436272494%_)))))
                              (_%$%g272418272442%_ _%$%g272419272446%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop272431272475%_
                                                   _%$%target272428272469%_
                                                   '()))
                                                (_%$%g272418272442%_
                                                 _%$%g272419272446%_)))))
                                      (_%$%g272418272442%_
                                       _%$%g272419272446%_))))
                              (_%$%g272418272442%_ _%$%g272419272446%_))))
                      (_%$%g272418272442%_ _%$%g272419272446%_)))))
          (_%$%g272417272723%_ _%stx272415%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx272728%_)
        (let* ((_%$%g272731272755%_
                (lambda (_%$%g272732272751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272732272751%_))))
               (_%$%g272730273630%_
                (lambda (_%$%g272732272759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272732272759%_))
                      (let ((_%$%e272735272762%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272732272759%_))))
                        (let ((_%$%hd272736272766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272735272762%_)))
                              (_%$%tl272737272769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272735272762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272737272769%_))
                              (let ((_%$%e272738272772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272737272769%_))))
                                (let ((_%$%hd272739272776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272738272772%_)))
                                      (_%$%tl272740272779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272738272772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl272740272779%_))
                                      (let ((_g274778_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl272740272779%_
                                                '0))))
                                        (begin
                                          (let ((_g274779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274778_)
                                                       (##values-length
                                                        _g274778_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274779_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274779_)))
                                          (let ((_%$%target272741272782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274778_ 0)))
                                                (_%$%tl272743272785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274778_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272743272785%_))
                                                (letrec ((_%$%loop272744272788%_
                                                          (lambda (_%$%hd272742272792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature272748272795%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd272742272792%_))
                        (let ((_%$%e272745272797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd272742272792%_))))
                          (let ((_%$%lp-hd272746272801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272745272797%_)))
                                (_%$%lp-tl272747272804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272745272797%_))))
                            (_%$%loop272744272788%_
                             _%$%lp-tl272747272804%_
                             (cons _%$%lp-hd272746272801%_
                                   _%$%case-signature272748272795%_))))
                        (let ((_%$%case-signature272749272807%_
                               (reverse _%$%case-signature272748272795%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272739272776%_))
                              (let* ((_%signatures272843%_
                                      (map (lambda (_%$%g272829272831%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx272728%_
                                              _%$%hd272739272776%_
                                              _%$%g272829272831%_))
                                           (let ((__tmp274780
                                                  (lambda (_%$%g272834272837%_
                                                           _%$%g272835272840%_)
                                                    (cons _%$%g272834272837%_
                                                          _%$%g272835272840%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp274780
                                              '()
                                              _%$%case-signature272749272807%_))))
                                     (_%$%g272846272872%_
                                      (lambda (_%$%g272847272868%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g272847272868%_))))
                                     (_%$%g272845273626%_
                                      (lambda (_%$%g272847272876%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g272847272876%_))
                                            (let ((_g274781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g272847272876%_
                                                      '0))))
                                              (begin
                                                (let ((_g274782_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g274781_)
                                                             (##values-length
                                                              _g274781_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g274782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g274782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target272850272879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g274781_
                                                          0)))
                                                      (_%$%tl272852272882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g274781_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272852272882%_))
                                                      (letrec ((_%$%loop272853272885%_
                                                                (lambda (_%$%hd272851272889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig272857272892%_
                                 _%$%arity272858272893%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd272851272889%_))
                              (let ((_%$%e272854272895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd272851272889%_))))
                                (let ((_%$%lp-hd272855272899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272854272895%_)))
                                      (_%$%lp-tl272856272902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272854272895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd272855272899%_))
                                      (let ((_%$%e272861272905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd272855272899%_))))
                                        (let ((_%$%hd272862272909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272861272905%_)))
                                              (_%$%tl272863272912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272861272905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272863272912%_))
                                              (let ((_%$%e272864272915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl272863272912%_))))
                                                (let ((_%$%hd272865272919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272864272915%_)))
                                                      (_%$%tl272866272922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272864272915%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272866272922%_))
                                                      (_%$%loop272853272885%_
                                                       _%$%lp-tl272856272902%_
                                                       (cons _%$%hd272865272919%_
                                                             _%$%sig272857272892%_)
                                                       (cons _%$%hd272862272909%_
                                                             _%$%arity272858272893%_))
                                                      (_%$%g272846272872%_
                                                       _%$%g272847272876%_))))
                                              (_%$%g272846272872%_
                                               _%$%g272847272876%_))))
                                      (_%$%g272846272872%_
                                       _%$%g272847272876%_))))
                              (let ((_%$%sig272859272925%_
                                     (reverse _%$%sig272857272892%_))
                                    (_%$%arity272860272927%_
                                     (reverse _%$%arity272858272893%_)))
                                (let* ((_%$%g272948272956%_
                                        (lambda (_%$%g272949272952%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g272949272952%_))))
                                       (_%$%g272947273611%_
                                        (lambda (_%$%g272949272960%_)
                                          (let* ((_%$%g272976272984%_
                                                  (lambda (_%$%g272977272980%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g272977272980%_))))
                                                 (_%$%g272975273006%_
                                                  (lambda (_%$%g272977272988%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g272949272960%_
                                                                (cons _%$%g272977272988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g272975273006%_
                                             (let ((_g274783_
                                                    (let _%loop273010%_ ((_%rest273013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures272843%_)
                                 (_%unchecked-proc273015%_ '#f)
                                 (_%unchecked-clauses273016%_ '()))
              (let* ((_%$%rest273017273025%_ _%rest273013%_)
                     (_%$%else273019273037%_
                      (lambda ()
                        (values _%unchecked-proc273015%_
                                (reverse! _%unchecked-clauses273016%_))))
                     (_%$%K273021273478%_
                      (lambda (_%rest273041%_ _%hd273043%_)
                        (let* ((_%$%g273045273132%_
                                (lambda (_%$%g273046273128%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g273046273128%_))))
                               (_%$%g273044273474%_
                                (lambda (_%$%g273046273136%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g273046273136%_))
                                      (let ((_%$%e273053273139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g273046273136%_))))
                                        (let ((_%$%hd273054273143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273053273139%_)))
                                              (_%$%tl273055273146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273053273139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273055273146%_))
                                              (let ((_%$%e273056273149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273055273146%_))))
                                                (let ((_%$%hd273057273153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273056273149%_)))
                                                      (_%$%tl273058273156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273056273149%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd273057273153%_))
                                                      (let ((_%$%e273059273159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd273057273153%_))))
                (let ((_%$%hd273060273163%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e273059273159%_)))
                      (_%$%tl273061273166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e273059273159%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl273061273166%_))
                      (let ((_%$%e273062273169%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl273061273166%_))))
                        (let ((_%$%hd273063273173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273062273169%_)))
                              (_%$%tl273064273176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273062273169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd273063273173%_))
                              (let ((_%$%e273065273179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd273063273173%_))))
                                (if (equal? _%$%e273065273179%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl273064273176%_))
                                        (let ((_%$%e273066273183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl273064273176%_))))
                                          (let ((_%$%hd273067273187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e273066273183%_)))
                                                (_%$%tl273068273190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e273066273183%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd273067273187%_))
                                                (let ((_%$%e273069273193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd273067273187%_))))
                                                  (let ((_%$%hd273070273197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273069273193%_)))
                                                        (_%$%tl273071273200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273069273193%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd273070273197%_))
                                                        (if (let ((__tmp274785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g274786_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp274785 _%$%hd273070273197%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273071273200%_))
                        (let ((_%$%e273072273203%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273071273200%_))))
                          (let ((_%$%hd273073273207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273072273203%_)))
                                (_%$%tl273074273210%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273072273203%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl273074273210%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl273068273190%_))
                                    (let ((_%$%e273075273213%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl273068273190%_))))
                                      (let ((_%$%hd273076273217%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273075273213%_)))
                                            (_%$%tl273077273220%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273075273213%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd273076273217%_))
                                            (let ((_%$%e273078273223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd273076273217%_))))
                                              (if (equal? _%$%e273078273223%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl273077273220%_))
                                                      (let ((_%$%e273079273227%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl273077273220%_))))
                (let ((_%$%hd273080273231%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e273079273227%_)))
                      (_%$%tl273081273234%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e273079273227%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd273080273231%_))
                      (let ((_%$%e273082273237%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd273080273231%_))))
                        (let ((_%$%hd273083273241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273082273237%_)))
                              (_%$%tl273084273244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273082273237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd273083273241%_))
                              (if (let ((__tmp274787 |gxc[1]#_g274788_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp274787
                                     _%$%hd273083273241%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl273084273244%_))
                                      (let ((_%$%e273085273247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl273084273244%_))))
                                        (let ((_%$%hd273086273251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273085273247%_)))
                                              (_%$%tl273087273254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273085273247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl273087273254%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273081273234%_))
                                                  (let ((_%$%e273088273257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273081273234%_))))
                                                    (let ((_%$%hd273089273261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273088273257%_)))
                                                          (_%$%tl273090273264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273088273257%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd273089273261%_))
                                                          (let ((_%$%e273091273267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd273089273261%_))))
                    (if (equal? _%$%e273091273267%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273090273264%_))
                            (let ((_%$%e273092273271%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl273090273264%_))))
                              (let ((_%$%hd273093273275%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273092273271%_)))
                                    (_%$%tl273094273278%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273092273271%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd273093273275%_))
                                    (let ((_%$%e273095273281%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd273093273275%_))))
                                      (let ((_%$%hd273096273285%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273095273281%_)))
                                            (_%$%tl273097273288%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273095273281%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd273096273285%_))
                                            (if (let ((__tmp274789
                                                       |gxc[1]#_g274790_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp274789
                                                   _%$%hd273096273285%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl273097273288%_))
                                                    (let ((_%$%e273098273291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl273097273288%_))))
                                                      (let ((_%$%hd273099273295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e273098273291%_)))
                    (_%$%tl273100273298%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e273098273291%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl273100273298%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273094273278%_))
                        (let ((_%$%e273101273301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273094273278%_))))
                          (let ((_%$%hd273102273305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273101273301%_)))
                                (_%$%tl273103273308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273101273301%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd273102273305%_))
                                (let ((_%$%e273104273311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd273102273305%_))))
                                  (if (equal? _%$%e273104273311%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl273103273308%_))
                                          (let ((_%$%e273105273315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl273103273308%_))))
                                            (let ((_%$%hd273106273319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e273105273315%_)))
                                                  (_%$%tl273107273322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e273105273315%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd273106273319%_))
                                                  (let ((_%$%e273108273325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd273106273319%_))))
                                                    (let ((_%$%hd273109273329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273108273325%_)))
                                                          (_%$%tl273110273332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273108273325%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd273109273329%_))
                                                          (if (let ((__tmp274791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g274792_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp274791
                         _%$%hd273109273329%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273110273332%_))
                          (let ((_%$%e273111273335%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273110273332%_))))
                            (let ((_%$%hd273112273339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273111273335%_)))
                                  (_%$%tl273113273342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273111273335%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273113273342%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl273107273322%_))
                                      (let ((_%$%e273114273345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl273107273322%_))))
                                        (let ((_%$%hd273115273349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273114273345%_)))
                                              (_%$%tl273116273352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273114273345%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd273115273349%_))
                                              (let ((_%$%e273117273355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd273115273349%_))))
                                                (if (equal? _%$%e273117273355%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl273116273352%_))
                                                        (let ((_%$%e273118273359%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl273116273352%_))))
                  (let ((_%$%hd273119273363%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273118273359%_)))
                        (_%$%tl273120273366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273118273359%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd273119273363%_))
                        (let ((_%$%e273121273369%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd273119273363%_))))
                          (let ((_%$%hd273122273373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273121273369%_)))
                                (_%$%tl273123273376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273121273369%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd273122273373%_))
                                (if (let ((__tmp274793 |gxc[1]#_g274794_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp274793
                                       _%$%hd273122273373%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl273123273376%_))
                                        (let ((_%$%e273124273379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl273123273376%_))))
                                          (let ((_%$%hd273125273383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e273124273379%_)))
                                                (_%$%tl273126273386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e273124273379%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl273126273386%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl273120273366%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273058273156%_))
                                                        (let ((_%clause273466%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd273054273143%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd273086273251%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd273125273383%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked273468%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd273112273339%_))))
                  (_%loop273010%_
                   _%rest273041%_
                   (let ((_%$e273470%_ _%unchecked273468%_))
                     (if _%$e273470%_ _%$e273470%_ _%unchecked-proc273015%_))
                   (cons _%clause273466%_ _%unchecked-clauses273016%_)))
                (_%$%g273045273132%_ _%$%g273046273136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273045273132%_
                                                     _%$%g273046273136%_))
                                                (_%$%g273045273132%_
                                                 _%$%g273046273136%_))))
                                        (_%$%g273045273132%_
                                         _%$%g273046273136%_))
                                    (_%$%g273045273132%_ _%$%g273046273136%_))
                                (_%$%g273045273132%_ _%$%g273046273136%_))))
                        (_%$%g273045273132%_ _%$%g273046273136%_))))
                (_%$%g273045273132%_ _%$%g273046273136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273045273132%_
                                                     _%$%g273046273136%_)))
                                              (_%$%g273045273132%_
                                               _%$%g273046273136%_))))
                                      (_%$%g273045273132%_
                                       _%$%g273046273136%_))
                                  (_%$%g273045273132%_ _%$%g273046273136%_))))
                          (_%$%g273045273132%_ _%$%g273046273136%_))
                      (_%$%g273045273132%_ _%$%g273046273136%_))
                  (_%$%g273045273132%_ _%$%g273046273136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g273045273132%_
                                                   _%$%g273046273136%_))))
                                          (_%$%g273045273132%_
                                           _%$%g273046273136%_))
                                      (_%$%g273045273132%_
                                       _%$%g273046273136%_)))
                                (_%$%g273045273132%_ _%$%g273046273136%_))))
                        (_%$%g273045273132%_ _%$%g273046273136%_))
                    (_%$%g273045273132%_ _%$%g273046273136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273045273132%_
                                                     _%$%g273046273136%_))
                                                (_%$%g273045273132%_
                                                 _%$%g273046273136%_))
                                            (_%$%g273045273132%_
                                             _%$%g273046273136%_))))
                                    (_%$%g273045273132%_
                                     _%$%g273046273136%_))))
                            (_%$%g273045273132%_ _%$%g273046273136%_))
                        (_%$%g273045273132%_ _%$%g273046273136%_)))
                  (_%$%g273045273132%_ _%$%g273046273136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g273045273132%_
                                                   _%$%g273046273136%_))
                                              (_%$%g273045273132%_
                                               _%$%g273046273136%_))))
                                      (_%$%g273045273132%_
                                       _%$%g273046273136%_))
                                  (_%$%g273045273132%_ _%$%g273046273136%_))
                              (_%$%g273045273132%_ _%$%g273046273136%_))))
                      (_%$%g273045273132%_ _%$%g273046273136%_))))
              (_%$%g273045273132%_ _%$%g273046273136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g273045273132%_
                                                   _%$%g273046273136%_)))
                                            (_%$%g273045273132%_
                                             _%$%g273046273136%_))))
                                    (_%$%g273045273132%_ _%$%g273046273136%_))
                                (_%$%g273045273132%_ _%$%g273046273136%_))))
                        (_%$%g273045273132%_ _%$%g273046273136%_))
                    (_%$%g273045273132%_ _%$%g273046273136%_))
                (_%$%g273045273132%_ _%$%g273046273136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g273045273132%_
                                                 _%$%g273046273136%_))))
                                        (_%$%g273045273132%_
                                         _%$%g273046273136%_))
                                    (_%$%g273045273132%_ _%$%g273046273136%_)))
                              (_%$%g273045273132%_ _%$%g273046273136%_))))
                      (_%$%g273045273132%_ _%$%g273046273136%_))))
              (_%$%g273045273132%_ _%$%g273046273136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g273045273132%_
                                               _%$%g273046273136%_))))
                                      (_%$%g273045273132%_
                                       _%$%g273046273136%_)))))
                          (_%$%g273044273474%_ _%hd273043%_)))))
                (if (pair? _%$%rest273017273025%_)
                    (let ((_%$%hd273022273482%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest273017273025%_)))
                          (_%$%tl273023273485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest273017273025%_))))
                      (let* ((_%hd273488%_ _%$%hd273022273482%_)
                             (_%rest273491%_ _%$%tl273023273485%_))
                        (_%$%K273021273478%_ _%rest273491%_ _%hd273488%_)))
                    (_%$%else273019273037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g274784_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g274783_)
                                                              (##values-length
                                                               _g274783_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g274784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g274784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc273494%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274783_
                                                           0)))
                                                       (_%unchecked-clauses273496%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274783_
                                                           1))))
                                                   (if _%unchecked-proc273494%_
                                                       (let* ((_%$%g273498273522%_
                                                               (lambda (_%$%g273499273518%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g273499273518%_))))
                      (_%$%g273497273607%_
                       (lambda (_%$%g273499273526%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g273499273526%_))
                             (let ((_%$%e273502273529%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g273499273526%_))))
                               (let ((_%$%hd273503273533%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e273502273529%_)))
                                     (_%$%tl273504273536%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e273502273529%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl273504273536%_))
                                     (let ((_%$%e273505273539%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl273504273536%_))))
                                       (let ((_%$%hd273506273543%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e273505273539%_)))
                                             (_%$%tl273507273546%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e273505273539%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd273506273543%_))
                                             (let ((_g274795_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd273506273543%_
                                                       '0))))
                                               (begin
                                                 (let ((_g274796_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g274795_)
                                                              (##values-length
                                                               _g274795_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g274796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g274796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target273508273549%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274795_
                                                           0)))
                                                       (_%$%tl273510273552%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274795_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl273510273552%_))
                                                       (letrec ((_%$%loop273511273555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd273509273559%_
                                  _%$%clause273515273562%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd273509273559%_))
                               (let ((_%$%e273512273564%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd273509273559%_))))
                                 (let ((_%$%lp-hd273513273568%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e273512273564%_)))
                                       (_%$%lp-tl273514273571%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e273512273564%_))))
                                   (_%$%loop273511273555%_
                                    _%$%lp-tl273514273571%_
                                    (cons _%$%lp-hd273513273568%_
                                          _%$%clause273515273562%_))))
                               (let ((_%$%clause273516273574%_
                                      (reverse _%$%clause273515273562%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl273507273546%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd273503273533%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp274797
                                        (lambda (_%$%g273598273601%_
                                                 _%$%g273599273604%_)
                                          (cons _%$%g273598273601%_
                                                _%$%g273599273604%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp274797
                                    '()
                                    _%$%clause273516273574%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g273498273522%_
                                      _%$%g273499273526%_)))))))
                 (_%$%loop273511273555%_ _%$%target273508273549%_ '()))
               (_%$%g273498273522%_ _%$%g273499273526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g273498273522%_
                                              _%$%g273499273526%_))))
                                     (_%$%g273498273522%_
                                      _%$%g273499273526%_))))
                             (_%$%g273498273522%_ _%$%g273499273526%_)))))
                 (_%$%g273497273607%_
                  (list _%unchecked-proc273494%_ _%unchecked-clauses273496%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g272947273611%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd272739272776%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig272859272925%_
                                    _%$%arity272860272927%_))
                                 (let ((__tmp274798
                                        (lambda (_%$%g273614273618%_
                                                 _%$%g273615273621%_
                                                 _%$%g273616273623%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g273615273621%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g273614273618%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g273616273623%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp274798
                                    '()
                                    _%$%sig272859272925%_
                                    _%$%arity272860272927%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop272853272885%_ _%$%target272850272879%_ '() '()))
              (_%$%g272846272872%_ _%$%g272847272876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g272846272872%_
                                             _%$%g272847272876%_)))))
                                (_%$%g272845273626%_ _%signatures272843%_))
                              (_%$%g272731272755%_ _%$%g272732272759%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop272744272788%_
                                                   _%$%target272741272782%_
                                                   '()))
                                                (_%$%g272731272755%_
                                                 _%$%g272732272759%_)))))
                                      (_%$%g272731272755%_
                                       _%$%g272732272759%_))))
                              (_%$%g272731272755%_ _%$%g272732272759%_))))
                      (_%$%g272731272755%_ _%$%g272732272759%_)))))
          (_%$%g272730273630%_ _%stx272728%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx273638%_)
        (let* ((_%__stx274618274619%_ _%$stx273638%_)
               (_%$%g273644273704%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274618274619%_)))))
          (let ((_%__kont274621274622%_
                 (lambda (_%$%g273646273926%_ _%$%g273647273928%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273647273928%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273647273928%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273646273926%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont274623274624%_
                 (lambda (_%$%g273661273851%_
                          _%$%g273662273853%_
                          _%$%g273663273854%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273663273854%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273663273854%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273662273853%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g273661273851%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont274625274626%_
                 (lambda (_%$%g273680273765%_
                          _%$%g273681273767%_
                          _%$%g273682273768%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273682273768%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273682273768%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273681273767%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g273680273765%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274618274619%_))
                (let ((_%$%e273648273882%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274618274619%_))))
                  (let ((_%$%tl273650273889%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273648273882%_)))
                        (_%$%hd273649273886%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273648273882%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273650273889%_))
                        (let ((_%$%e273651273892%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273650273889%_))))
                          (let ((_%$%tl273653273899%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273651273892%_)))
                                (_%$%hd273652273896%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273651273892%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd273652273896%_))
                                (let ((_%$%e273654273902%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd273652273896%_))))
                                  (if (equal? _%$%e273654273902%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl273653273899%_))
                                          (let ((_%$%e273655273906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl273653273899%_))))
                                            (let ((_%$%tl273657273913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e273655273906%_)))
                                                  (_%$%hd273656273910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e273655273906%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273657273913%_))
                                                  (let ((_%$%e273658273916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273657273913%_))))
                                                    (let ((_%$%tl273660273923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273658273916%_)))
                                                          (_%$%hd273659273920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273658273916%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl273660273923%_))
                                                          (_%__kont274621274622%_
                                                           _%$%hd273659273920%_
                                                           _%$%hd273656273910%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g273644273704%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273644273704%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g273644273704%_)))
                                      (if (equal? _%$%e273654273902%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273653273899%_))
                                              (let ((_%$%e273671273821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273653273899%_))))
                                                (let ((_%$%tl273673273828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273671273821%_)))
                                                      (_%$%hd273672273825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273671273821%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl273673273828%_))
                                                      (let ((_%$%e273674273831%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl273673273828%_))))
                (let ((_%$%tl273676273838%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e273674273831%_)))
                      (_%$%hd273675273835%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e273674273831%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl273676273838%_))
                      (let ((_%$%e273677273841%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl273676273838%_))))
                        (let ((_%$%tl273679273848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273677273841%_)))
                              (_%$%hd273678273845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273677273841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl273679273848%_))
                              (_%__kont274623274624%_
                               _%$%hd273678273845%_
                               _%$%hd273675273835%_
                               _%$%hd273672273825%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g273644273704%_)))))
                      (let () (declare (not safe)) (_%$%g273644273704%_)))))
              (let () (declare (not safe)) (_%$%g273644273704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273644273704%_)))
                                          (if (equal? _%$%e273654273902%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273653273899%_))
                                                  (let ((_%$%e273690273735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273653273899%_))))
                                                    (let ((_%$%tl273692273742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273690273735%_)))
                                                          (_%$%hd273691273739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273690273735%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl273692273742%_))
                                                          (let ((_%$%e273693273745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl273692273742%_))))
                    (let ((_%$%tl273695273752%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273693273745%_)))
                          (_%$%hd273694273749%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273693273745%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273695273752%_))
                          (let ((_%$%e273696273755%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273695273752%_))))
                            (let ((_%$%tl273698273762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273696273755%_)))
                                  (_%$%hd273697273759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273696273755%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273698273762%_))
                                  (_%__kont274625274626%_
                                   _%$%hd273697273759%_
                                   _%$%hd273694273749%_
                                   _%$%hd273691273739%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g273644273704%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273644273704%_)))))
                  (let () (declare (not safe)) (_%$%g273644273704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273644273704%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273644273704%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g273644273704%_)))))
                        (let () (declare (not safe)) (_%$%g273644273704%_)))))
                (let () (declare (not safe)) (_%$%g273644273704%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx273950%_)
        (let* ((_%$%g273954273974%_
                (lambda (_%$%g273955273970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273955273970%_))))
               (_%$%g273953274043%_
                (lambda (_%$%g273955273978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273955273978%_))
                      (let ((_%$%e273957273981%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g273955273978%_))))
                        (let ((_%$%hd273958273985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273957273981%_)))
                              (_%$%tl273959273988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273957273981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl273959273988%_))
                              (let ((_g274799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl273959273988%_
                                        '0))))
                                (begin
                                  (let ((_g274800_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274799_)
                                               (##values-length _g274799_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274800_ 2)))
                                        (error "Context expects 2 values"
                                               _g274800_)))
                                  (let ((_%$%target273960273991%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274799_ 0)))
                                        (_%$%tl273962273994%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274799_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl273962273994%_))
                                        (letrec ((_%$%loop273963273997%_
                                                  (lambda (_%$%hd273961274001%_
                                                           _%$%decl273967274004%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd273961274001%_))
                                                        (let ((_%$%e273964274006%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd273961274001%_))))
                  (let ((_%$%lp-hd273965274010%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273964274006%_)))
                        (_%$%lp-tl273966274013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273964274006%_))))
                    (_%$%loop273963273997%_
                     _%$%lp-tl273966274013%_
                     (cons _%$%lp-hd273965274010%_ _%$%decl273967274004%_))))
                (let ((_%$%decl273968274016%_
                       (reverse _%$%decl273967274004%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp274801
                               (lambda (_%$%g274034274037%_
                                        _%$%g274035274040%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g274034274037%_)
                                       _%$%g274035274040%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp274801
                           '()
                           _%$%decl273968274016%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop273963273997%_
                                           _%$%target273960273991%_
                                           '()))
                                        (_%$%g273954273974%_
                                         _%$%g273955273978%_)))))
                              (_%$%g273954273974%_ _%$%g273955273978%_))))
                      (_%$%g273954273974%_ _%$%g273955273978%_)))))
          (_%$%g273953274043%_ _%$stx273950%_))))))
