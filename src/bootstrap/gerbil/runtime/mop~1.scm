(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx109704%_)
      (let* ((_%__stx116636116637%_ _%$stx109704%_)
             (_%g109709109738%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx116636116637%_))))
        (let ((_%__kont116639116640%_
               (lambda (_%g109711109831%_ _%g109712109833%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g109712109833%_
                                         (cons _%g109711109831%_ '())))
                             (cons _%g109711109831%_ '())))))
              (_%__kont116641116642%_
               (lambda (_%g109722109775%_ _%g109723109777%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g109722109775%_
                                   (cons _%g109722109775%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g109723109777%_
                                                           (cons _%g109722109775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g109722109775%_ '())))
                                   '()))))))
          (let ((_%__match116663116664%_
                 (lambda (_%e109713109801%_
                          _%hd109714109805%_
                          _%tl109715109808%_
                          _%e109716109811%_
                          _%hd109717109815%_
                          _%tl109718109818%_
                          _%e109719109821%_
                          _%hd109720109825%_
                          _%tl109721109828%_)
                   (let ((_%g109711109831%_ _%hd109720109825%_)
                         (_%g109712109833%_ _%hd109717109815%_))
                     (if (or (gx#identifier? _%g109711109831%_)
                             (gx#stx-fixnum? _%g109711109831%_))
                         (_%__kont116639116640%_
                          _%g109711109831%_
                          _%g109712109833%_)
                         (_%__kont116641116642%_
                          _%hd109720109825%_
                          _%hd109717109815%_))))))
            (if (gx#stx-pair? _%__stx116636116637%_)
                (let ((_%e109713109801%_ (gx#syntax-e _%__stx116636116637%_)))
                  (let ((_%tl109715109808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e109713109801%_)))
                        (_%hd109714109805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e109713109801%_))))
                    (if (gx#stx-pair? _%tl109715109808%_)
                        (let ((_%e109716109811%_
                               (gx#syntax-e _%tl109715109808%_)))
                          (let ((_%tl109718109818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e109716109811%_)))
                                (_%hd109717109815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e109716109811%_))))
                            (if (gx#stx-pair? _%tl109718109818%_)
                                (let ((_%e109719109821%_
                                       (gx#syntax-e _%tl109718109818%_)))
                                  (let ((_%tl109721109828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e109719109821%_)))
                                        (_%hd109720109825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e109719109821%_))))
                                    (if (gx#stx-null? _%tl109721109828%_)
                                        (_%__match116663116664%_
                                         _%e109713109801%_
                                         _%hd109714109805%_
                                         _%tl109715109808%_
                                         _%e109716109811%_
                                         _%hd109717109815%_
                                         _%tl109718109818%_
                                         _%e109719109821%_
                                         _%hd109720109825%_
                                         _%tl109721109828%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g109709109738%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g109709109738%_)))))
                        (let () (declare (not safe)) (_%g109709109738%_)))))
                (let () (declare (not safe)) (_%g109709109738%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx109856%_)
      (let* ((_%__stx116686116687%_ _%$stx109856%_)
             (_%g109861109890%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx116686116687%_))))
        (let ((_%__kont116689116690%_
               (lambda (_%g109863109982%_ _%g109864109984%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g109864109984%_
                                         (cons _%g109863109982%_ '())))
                             (cons '0 '())))))
              (_%__kont116691116692%_
               (lambda (_%g109874109927%_ _%g109875109929%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g109874109927%_
                                   (cons _%g109874109927%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g109875109929%_
                                                           (cons _%g109874109927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match116713116714%_
                 (lambda (_%e109865109952%_
                          _%hd109866109956%_
                          _%tl109867109959%_
                          _%e109868109962%_
                          _%hd109869109966%_
                          _%tl109870109969%_
                          _%e109871109972%_
                          _%hd109872109976%_
                          _%tl109873109979%_)
                   (let ((_%g109863109982%_ _%hd109872109976%_)
                         (_%g109864109984%_ _%hd109869109966%_))
                     (if (or (gx#identifier? _%g109863109982%_)
                             (gx#stx-fixnum? _%g109863109982%_))
                         (_%__kont116689116690%_
                          _%g109863109982%_
                          _%g109864109984%_)
                         (_%__kont116691116692%_
                          _%hd109872109976%_
                          _%hd109869109966%_))))))
            (if (gx#stx-pair? _%__stx116686116687%_)
                (let ((_%e109865109952%_ (gx#syntax-e _%__stx116686116687%_)))
                  (let ((_%tl109867109959%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e109865109952%_)))
                        (_%hd109866109956%_
                         (let ()
                           (declare (not safe))
                           (##car _%e109865109952%_))))
                    (if (gx#stx-pair? _%tl109867109959%_)
                        (let ((_%e109868109962%_
                               (gx#syntax-e _%tl109867109959%_)))
                          (let ((_%tl109870109969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e109868109962%_)))
                                (_%hd109869109966%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e109868109962%_))))
                            (if (gx#stx-pair? _%tl109870109969%_)
                                (let ((_%e109871109972%_
                                       (gx#syntax-e _%tl109870109969%_)))
                                  (let ((_%tl109873109979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e109871109972%_)))
                                        (_%hd109872109976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e109871109972%_))))
                                    (if (gx#stx-null? _%tl109873109979%_)
                                        (_%__match116713116714%_
                                         _%e109865109952%_
                                         _%hd109866109956%_
                                         _%tl109867109959%_
                                         _%e109868109962%_
                                         _%hd109869109966%_
                                         _%tl109870109969%_
                                         _%e109871109972%_
                                         _%hd109872109976%_
                                         _%tl109873109979%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g109861109890%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g109861109890%_)))))
                        (let () (declare (not safe)) (_%g109861109890%_)))))
                (let () (declare (not safe)) (_%g109861109890%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx110007%_)
      (let* ((_%g110010110031%_
              (lambda (_%g110011110027%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g110011110027%_)))
             (_%g110009110259%_
              (lambda (_%g110011110035%_)
                (if (gx#stx-pair? _%g110011110035%_)
                    (let ((_%e110014110038%_ (gx#syntax-e _%g110011110035%_)))
                      (let ((_%hd110015110042%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110014110038%_)))
                            (_%tl110016110045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110014110038%_))))
                        (if (gx#stx-pair? _%tl110016110045%_)
                            (let ((_%e110017110048%_
                                   (gx#syntax-e _%tl110016110045%_)))
                              (let ((_%hd110018110052%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e110017110048%_)))
                                    (_%tl110019110055%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e110017110048%_))))
                                (if (gx#stx-pair? _%hd110018110052%_)
                                    (let ((_%e110020110058%_
                                           (gx#syntax-e _%hd110018110052%_)))
                                      (let ((_%hd110021110062%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e110020110058%_)))
                                            (_%tl110022110065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e110020110058%_))))
                                        (if (gx#stx-pair? _%tl110022110065%_)
                                            (let ((_%e110023110068%_
                                                   (gx#syntax-e
                                                    _%tl110022110065%_)))
                                              (let ((_%hd110024110072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e110023110068%_)))
                                                    (_%tl110025110075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e110023110068%_))))
                                                (if (gx#stx-null?
                                                     _%tl110025110075%_)
                                                    (if (gx#stx-null?
                                                         _%tl110019110055%_)
                                                        ((lambda (_%g110012110078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g110013110080%_)
                   (let* ((_%g110098110106%_
                           (lambda (_%g110099110102%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g110099110102%_)))
                          (_%g110097110255%_
                           (lambda (_%g110099110110%_)
                             ((lambda (_%g110100110113%_)
                                (let* ((_%g110125110133%_
                                        (lambda (_%g110126110129%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g110126110129%_)))
                                       (_%g110124110251%_
                                        (lambda (_%g110126110137%_)
                                          ((lambda (_%g110127110140%_)
                                             (let* ((_%g110153110161%_
                                                     (lambda (_%g110154110157%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g110154110157%_)))
                                                    (_%g110152110247%_
                                                     (lambda (_%g110154110165%_)
                                                       ((lambda (_%g110155110168%_)
                                                          (let* ((_%g110181110189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g110182110185%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g110182110185%_)))
                         (_%g110180110243%_
                          (lambda (_%g110182110193%_)
                            ((lambda (_%g110183110196%_)
                               (let* ((_%g110209110217%_
                                       (lambda (_%g110210110213%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g110210110213%_)))
                                      (_%g110208110239%_
                                       (lambda (_%g110210110221%_)
                                         ((lambda (_%g110211110224%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%g110127110140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%g110100110113%_
                                                          (cons _%g110013110080%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%g110012110078%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%g110013110080%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%g110155110168%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%g110100110113%_
                                                                (cons _%g110013110080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%g110012110078%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g110013110080%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%g110183110196%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%g110100110113%_
                              (cons _%g110013110080%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%g110012110078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g110013110080%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%g110211110224%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%g110100110113%_
                                    (cons _%g110013110080%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%g110012110078%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g110013110080%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g110210110221%_))))
                                 (_%g110208110239%_
                                  (gx#stx-identifier
                                   _%g110013110080%_
                                   '"&"
                                   _%g110183110196%_))))
                             _%g110182110193%_))))
                    (_%g110180110243%_
                     (gx#stx-identifier
                      _%g110013110080%_
                      _%g110127110140%_
                      '"-set!"))))
                _%g110154110165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g110152110247%_
                                                (gx#stx-identifier
                                                 _%g110013110080%_
                                                 '"&"
                                                 _%g110127110140%_))))
                                           _%g110126110137%_))))
                                  (_%g110124110251%_
                                   (gx#stx-identifier
                                    _%g110013110080%_
                                    '"class-type-"
                                    _%g110013110080%_))))
                              _%g110099110110%_))))
                     (_%g110097110255%_ (gx#core-quote-syntax 'class::t))))
                 _%hd110024110072%_
                 _%hd110021110062%_)
                (_%g110010110031%_ _%g110011110035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g110010110031%_
                                                     _%g110011110035%_))))
                                            (_%g110010110031%_
                                             _%g110011110035%_))))
                                    (_%g110010110031%_ _%g110011110035%_))))
                            (_%g110010110031%_ _%g110011110035%_))))
                    (_%g110010110031%_ _%g110011110035%_)))))
        (_%g110009110259%_ _%stx110007%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx110263%_)
      (let* ((_%g110267110296%_
              (lambda (_%g110268110292%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g110268110292%_)))
             (_%g110266110392%_
              (lambda (_%g110268110300%_)
                (if (gx#stx-pair? _%g110268110300%_)
                    (let ((_%e110271110303%_ (gx#syntax-e _%g110268110300%_)))
                      (let ((_%hd110272110307%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110271110303%_)))
                            (_%tl110273110310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110271110303%_))))
                        (if (gx#stx-pair/null? _%tl110273110310%_)
                            (let ((_g117056_
                                   (gx#syntax-split-splice
                                    _%tl110273110310%_
                                    '0)))
                              (begin
                                (let ((_g117057_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g117056_)
                                             (##values-length _g117056_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g117057_ 2)))
                                      (error "Context expects 2 values"
                                             _g117057_)))
                                (let ((_%target110274110313%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g117056_ 0)))
                                      (_%tl110276110316%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g117056_ 1))))
                                  (if (gx#stx-null? _%tl110276110316%_)
                                      (letrec ((_%loop110277110319%_
                                                (lambda (_%hd110275110323%_
                                                         _%field110281110326%_
                                                         _%slot110282110327%_)
                                                  (if (gx#stx-pair?
                                                       _%hd110275110323%_)
                                                      (let ((_%e110278110329%_
                                                             (gx#syntax-e
                                                              _%hd110275110323%_)))
                                                        (let ((_%lp-hd110279110333%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e110278110329%_)))
                      (_%lp-tl110280110336%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e110278110329%_))))
                  (if (gx#stx-pair? _%lp-hd110279110333%_)
                      (let ((_%e110285110339%_
                             (gx#syntax-e _%lp-hd110279110333%_)))
                        (let ((_%hd110286110343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e110285110339%_)))
                              (_%tl110287110346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e110285110339%_))))
                          (if (gx#stx-pair? _%tl110287110346%_)
                              (let ((_%e110288110349%_
                                     (gx#syntax-e _%tl110287110346%_)))
                                (let ((_%hd110289110353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e110288110349%_)))
                                      (_%tl110290110356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e110288110349%_))))
                                  (if (gx#stx-null? _%tl110290110356%_)
                                      (_%loop110277110319%_
                                       _%lp-tl110280110336%_
                                       (cons _%hd110289110353%_
                                             _%field110281110326%_)
                                       (cons _%hd110286110343%_
                                             _%slot110282110327%_))
                                      (_%g110267110296%_ _%g110268110300%_))))
                              (_%g110267110296%_ _%g110268110300%_))))
                      (_%g110267110296%_ _%g110268110300%_))))
              (let ((_%field110283110359%_ (reverse _%field110281110326%_))
                    (_%slot110284110361%_ (reverse _%slot110282110327%_)))
                ((lambda (_%g110269110363%_ _%g110270110365%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g110269110363%_
                            _%g110270110365%_)
                           (let ((__tmp117058
                                  (lambda (_%g110380110384%_
                                           _%g110381110387%_
                                           _%g110382110389%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g110381110387%_
                                                            (cons _%g110380110384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g110382110389%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp117058
                              '()
                              _%g110269110363%_
                              _%g110270110365%_)))))
                 _%field110283110359%_
                 _%slot110284110361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop110277110319%_
                                         _%target110274110313%_
                                         '()
                                         '()))
                                      (_%g110267110296%_ _%g110268110300%_)))))
                            (_%g110267110296%_ _%g110268110300%_))))
                    (_%g110267110296%_ _%g110268110300%_)))))
        (_%g110266110392%_ _%$stx110263%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx110397%_)
      (let* ((_%g110401110435%_
              (lambda (_%g110402110431%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g110402110431%_)))
             (_%g110400110546%_
              (lambda (_%g110402110439%_)
                (if (gx#stx-pair? _%g110402110439%_)
                    (let ((_%e110409110442%_ (gx#syntax-e _%g110402110439%_)))
                      (let ((_%hd110410110446%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110409110442%_)))
                            (_%tl110411110449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110409110442%_))))
                        (if (gx#stx-pair? _%tl110411110449%_)
                            (let ((_%e110412110452%_
                                   (gx#syntax-e _%tl110411110449%_)))
                              (let ((_%hd110413110456%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e110412110452%_)))
                                    (_%tl110414110459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e110412110452%_))))
                                (if (gx#stx-pair? _%tl110414110459%_)
                                    (let ((_%e110415110462%_
                                           (gx#syntax-e _%tl110414110459%_)))
                                      (let ((_%hd110416110466%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e110415110462%_)))
                                            (_%tl110417110469%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e110415110462%_))))
                                        (if (gx#stx-pair? _%tl110417110469%_)
                                            (let ((_%e110418110472%_
                                                   (gx#syntax-e
                                                    _%tl110417110469%_)))
                                              (let ((_%hd110419110476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e110418110472%_)))
                                                    (_%tl110420110479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e110418110472%_))))
                                                (if (gx#stx-pair?
                                                     _%tl110420110479%_)
                                                    (let ((_%e110421110482%_
                                                           (gx#syntax-e
                                                            _%tl110420110479%_)))
                                                      (let ((_%hd110422110486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e110421110482%_)))
                    (_%tl110423110489%_
                     (let () (declare (not safe)) (##cdr _%e110421110482%_))))
                (if (gx#stx-pair? _%tl110423110489%_)
                    (let ((_%e110424110492%_ (gx#syntax-e _%tl110423110489%_)))
                      (let ((_%hd110425110496%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110424110492%_)))
                            (_%tl110426110499%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110424110492%_))))
                        (if (gx#stx-pair? _%tl110426110499%_)
                            (let ((_%e110427110502%_
                                   (gx#syntax-e _%tl110426110499%_)))
                              (let ((_%hd110428110506%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e110427110502%_)))
                                    (_%tl110429110509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e110427110502%_))))
                                (if (gx#stx-null? _%tl110429110509%_)
                                    ((lambda (_%g110403110512%_
                                              _%g110404110514%_
                                              _%g110405110515%_
                                              _%g110406110516%_
                                              _%g110407110517%_
                                              _%g110408110518%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%g110408110518%_ '()))
                                   (cons _%g110407110517%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%g110408110518%_
                                     (cons 'slot:
                                           (cons _%g110407110517%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%g110408110518%_ '()))
                                         (cons (cons _%g110406110516%_
                                                     (cons _%g110408110518%_
                                                           (cons _%g110407110517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%g110408110518%_
                                                           '()))
                                               (cons (cons _%g110405110515%_
                                                           (cons _%g110408110518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g110407110517%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%g110408110518%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%g110404110514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g110408110518%_
                               (cons _%g110407110517%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%g110403110512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g110408110518%_
                                     (cons _%g110407110517%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd110428110506%_
                                     _%hd110425110496%_
                                     _%hd110422110486%_
                                     _%hd110419110476%_
                                     _%hd110416110466%_
                                     _%hd110413110456%_)
                                    (_%g110401110435%_ _%g110402110439%_))))
                            (_%g110401110435%_ _%g110402110439%_))))
                    (_%g110401110435%_ _%g110402110439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g110401110435%_
                                                     _%g110402110439%_))))
                                            (_%g110401110435%_
                                             _%g110402110439%_))))
                                    (_%g110401110435%_ _%g110402110439%_))))
                            (_%g110401110435%_ _%g110402110439%_))))
                    (_%g110401110435%_ _%g110402110439%_)))))
        (_%g110400110546%_ _%$stx110397%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx110550%_)
      (let* ((_%g110554110580%_
              (lambda (_%g110555110576%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g110555110576%_)))
             (_%g110553110663%_
              (lambda (_%g110555110584%_)
                (if (gx#stx-pair? _%g110555110584%_)
                    (let ((_%e110560110587%_ (gx#syntax-e _%g110555110584%_)))
                      (let ((_%hd110561110591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110560110587%_)))
                            (_%tl110562110594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110560110587%_))))
                        (if (gx#stx-pair? _%tl110562110594%_)
                            (let ((_%e110563110597%_
                                   (gx#syntax-e _%tl110562110594%_)))
                              (let ((_%hd110564110601%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e110563110597%_)))
                                    (_%tl110565110604%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e110563110597%_))))
                                (if (gx#stx-pair? _%tl110565110604%_)
                                    (let ((_%e110566110607%_
                                           (gx#syntax-e _%tl110565110604%_)))
                                      (let ((_%hd110567110611%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e110566110607%_)))
                                            (_%tl110568110614%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e110566110607%_))))
                                        (if (gx#stx-pair? _%tl110568110614%_)
                                            (let ((_%e110569110617%_
                                                   (gx#syntax-e
                                                    _%tl110568110614%_)))
                                              (let ((_%hd110570110621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e110569110617%_)))
                                                    (_%tl110571110624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e110569110617%_))))
                                                (if (gx#stx-pair?
                                                     _%tl110571110624%_)
                                                    (let ((_%e110572110627%_
                                                           (gx#syntax-e
                                                            _%tl110571110624%_)))
                                                      (let ((_%hd110573110631%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e110572110627%_)))
                    (_%tl110574110634%_
                     (let () (declare (not safe)) (##cdr _%e110572110627%_))))
                (if (gx#stx-null? _%tl110574110634%_)
                    ((lambda (_%g110556110637%_
                              _%g110557110639%_
                              _%g110558110640%_
                              _%g110559110641%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%g110559110641%_
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%g110558110640%_ '())))
                   (cons (gx#datum->syntax '#f '=>)
                         (cons _%g110557110639%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%g110556110637%_
                                     (cons _%g110559110641%_
                                           (cons _%g110558110640%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd110573110631%_
                     _%hd110570110621%_
                     _%hd110567110611%_
                     _%hd110564110601%_)
                    (_%g110554110580%_ _%g110555110584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g110554110580%_
                                                     _%g110555110584%_))))
                                            (_%g110554110580%_
                                             _%g110555110584%_))))
                                    (_%g110554110580%_ _%g110555110584%_))))
                            (_%g110554110580%_ _%g110555110584%_))))
                    (_%g110554110580%_ _%g110555110584%_)))))
        (_%g110553110663%_ _%$stx110550%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx110667%_)
      (let* ((_%g110671110700%_
              (lambda (_%g110672110696%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g110672110696%_)))
             (_%g110670110796%_
              (lambda (_%g110672110704%_)
                (if (gx#stx-pair? _%g110672110704%_)
                    (let ((_%e110675110707%_ (gx#syntax-e _%g110672110704%_)))
                      (let ((_%hd110676110711%_
                             (let ()
                               (declare (not safe))
                               (##car _%e110675110707%_)))
                            (_%tl110677110714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e110675110707%_))))
                        (if (gx#stx-pair/null? _%tl110677110714%_)
                            (let ((_g117059_
                                   (gx#syntax-split-splice
                                    _%tl110677110714%_
                                    '0)))
                              (begin
                                (let ((_g117060_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g117059_)
                                             (##values-length _g117059_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g117060_ 2)))
                                      (error "Context expects 2 values"
                                             _g117060_)))
                                (let ((_%target110678110717%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g117059_ 0)))
                                      (_%tl110680110720%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g117059_ 1))))
                                  (if (gx#stx-null? _%tl110680110720%_)
                                      (letrec ((_%loop110681110723%_
                                                (lambda (_%hd110679110727%_
                                                         _%name110685110730%_
                                                         _%t110686110731%_)
                                                  (if (gx#stx-pair?
                                                       _%hd110679110727%_)
                                                      (let ((_%e110682110733%_
                                                             (gx#syntax-e
                                                              _%hd110679110727%_)))
                                                        (let ((_%lp-hd110683110737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e110682110733%_)))
                      (_%lp-tl110684110740%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e110682110733%_))))
                  (if (gx#stx-pair? _%lp-hd110683110737%_)
                      (let ((_%e110689110743%_
                             (gx#syntax-e _%lp-hd110683110737%_)))
                        (let ((_%hd110690110747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e110689110743%_)))
                              (_%tl110691110750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e110689110743%_))))
                          (if (gx#stx-pair? _%tl110691110750%_)
                              (let ((_%e110692110753%_
                                     (gx#syntax-e _%tl110691110750%_)))
                                (let ((_%hd110693110757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e110692110753%_)))
                                      (_%tl110694110760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e110692110753%_))))
                                  (if (gx#stx-null? _%tl110694110760%_)
                                      (_%loop110681110723%_
                                       _%lp-tl110684110740%_
                                       (cons _%hd110693110757%_
                                             _%name110685110730%_)
                                       (cons _%hd110690110747%_
                                             _%t110686110731%_))
                                      (_%g110671110700%_ _%g110672110704%_))))
                              (_%g110671110700%_ _%g110672110704%_))))
                      (_%g110671110700%_ _%g110672110704%_))))
              (let ((_%name110687110763%_ (reverse _%name110685110730%_))
                    (_%t110688110765%_ (reverse _%t110686110731%_)))
                ((lambda (_%g110673110767%_ _%g110674110769%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g110673110767%_
                            _%g110674110769%_)
                           (let ((__tmp117061
                                  (lambda (_%g110784110788%_
                                           _%g110785110791%_
                                           _%g110786110793%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g110785110791%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g110784110788%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g110786110793%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp117061
                              '()
                              _%g110673110767%_
                              _%g110674110769%_)))))
                 _%name110687110763%_
                 _%t110688110765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop110681110723%_
                                         _%target110678110717%_
                                         '()
                                         '()))
                                      (_%g110671110700%_ _%g110672110704%_)))))
                            (_%g110671110700%_ _%g110672110704%_))))
                    (_%g110671110700%_ _%g110672110704%_)))))
        (_%g110670110796%_ _%$stx110667%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx110801%_)
      (let* ((_%__stx116761116762%_ _%$stx110801%_)
             (_%g110806110865%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx116761116762%_))))
        (let ((_%__kont116764116765%_
               (lambda (_%g110808111059%_
                        _%g110809111061%_
                        _%g110810111062%_
                        _%g110811111063%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g110811111063%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g110810111062%_
                                                           (cons (let ((__tmp117062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g111087111092%_ _%g111088111095%_)
                                  (cons _%g111087111092%_ _%g111088111095%_))))
                           (declare (not safe))
                           (__foldr1 __tmp117062 '() _%g110809111061%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__make-system-class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%g110810111062%_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (let ((__tmp117063
                                            (lambda (_%g111089111098%_
                                                     _%g111090111101%_)
                                              (cons _%g111089111098%_
                                                    _%g111090111101%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp117063
                                        '()
                                        _%g110809111061%_)))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g110808111059%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont116768116769%_
               (lambda (_%g110836110940%_ _%g110837110942%_ _%g110838110943%_)
                 (cons (gx#datum->syntax '#f 'defsystem-class)
                       (cons _%g110838110943%_
                             (cons _%g110837110942%_
                                   (cons (let ((__tmp117064
                                                (lambda (_%g110965110968%_
                                                         _%g110966110971%_)
                                                  (cons _%g110965110968%_
                                                        _%g110966110971%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp117064
                                            '()
                                            _%g110836110940%_))
                                         (cons '() '()))))))))
          (let* ((_%__match116836116837%_
                  (lambda (_%e110839110872%_
                           _%hd110840110876%_
                           _%tl110841110879%_
                           _%e110842110882%_
                           _%hd110843110886%_
                           _%tl110844110889%_
                           _%e110845110892%_
                           _%hd110846110896%_
                           _%tl110847110899%_
                           _%e110848110902%_
                           _%hd110849110906%_
                           _%tl110850110909%_
                           _%__splice116770116771%_
                           _%target110851110912%_
                           _%tl110853110915%_)
                    (letrec ((_%loop110854110918%_
                              (lambda (_%hd110852110922%_
                                       _%super110858110925%_)
                                (if (gx#stx-pair? _%hd110852110922%_)
                                    (let ((_%e110855110927%_
                                           (gx#syntax-e _%hd110852110922%_)))
                                      (let ((_%lp-tl110857110934%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e110855110927%_)))
                                            (_%lp-hd110856110931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e110855110927%_))))
                                        (_%loop110854110918%_
                                         _%lp-tl110857110934%_
                                         (cons _%lp-hd110856110931%_
                                               _%super110858110925%_))))
                                    (let ((_%super110859110937%_
                                           (reverse _%super110858110925%_)))
                                      (if (gx#stx-null? _%tl110850110909%_)
                                          (_%__kont116768116769%_
                                           _%super110859110937%_
                                           _%hd110846110896%_
                                           _%hd110843110886%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g110806110865%_))))))))
                      (_%loop110854110918%_ _%target110851110912%_ '()))))
                 (_%__match116804116805%_
                  (lambda (_%e110812110981%_
                           _%hd110813110985%_
                           _%tl110814110988%_
                           _%e110815110991%_
                           _%hd110816110995%_
                           _%tl110817110998%_
                           _%e110818111001%_
                           _%hd110819111005%_
                           _%tl110820111008%_
                           _%e110821111011%_
                           _%hd110822111015%_
                           _%tl110823111018%_
                           _%__splice116766116767%_
                           _%target110824111021%_
                           _%tl110826111024%_)
                    (letrec ((_%loop110827111027%_
                              (lambda (_%hd110825111031%_
                                       _%super110831111034%_)
                                (if (gx#stx-pair? _%hd110825111031%_)
                                    (let ((_%e110828111036%_
                                           (gx#syntax-e _%hd110825111031%_)))
                                      (let ((_%lp-tl110830111043%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e110828111036%_)))
                                            (_%lp-hd110829111040%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e110828111036%_))))
                                        (_%loop110827111027%_
                                         _%lp-tl110830111043%_
                                         (cons _%lp-hd110829111040%_
                                               _%super110831111034%_))))
                                    (let ((_%super110832111046%_
                                           (reverse _%super110831111034%_)))
                                      (if (gx#stx-pair? _%tl110823111018%_)
                                          (let ((_%e110833111049%_
                                                 (gx#syntax-e
                                                  _%tl110823111018%_)))
                                            (let ((_%tl110835111056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e110833111049%_)))
                                                  (_%hd110834111053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e110833111049%_))))
                                              (if (gx#stx-null?
                                                   _%tl110835111056%_)
                                                  (_%__kont116764116765%_
                                                   _%hd110834111053%_
                                                   _%super110832111046%_
                                                   _%hd110819111005%_
                                                   _%hd110816110995%_)
                                                  (_%__match116836116837%_
                                                   _%e110812110981%_
                                                   _%hd110813110985%_
                                                   _%tl110814110988%_
                                                   _%e110815110991%_
                                                   _%hd110816110995%_
                                                   _%tl110817110998%_
                                                   _%e110818111001%_
                                                   _%hd110819111005%_
                                                   _%tl110820111008%_
                                                   _%e110821111011%_
                                                   _%hd110822111015%_
                                                   _%tl110823111018%_
                                                   _%__splice116766116767%_
                                                   _%target110824111021%_
                                                   _%tl110826111024%_))))
                                          (_%__match116836116837%_
                                           _%e110812110981%_
                                           _%hd110813110985%_
                                           _%tl110814110988%_
                                           _%e110815110991%_
                                           _%hd110816110995%_
                                           _%tl110817110998%_
                                           _%e110818111001%_
                                           _%hd110819111005%_
                                           _%tl110820111008%_
                                           _%e110821111011%_
                                           _%hd110822111015%_
                                           _%tl110823111018%_
                                           _%__splice116766116767%_
                                           _%target110824111021%_
                                           _%tl110826111024%_)))))))
                      (_%loop110827111027%_ _%target110824111021%_ '())))))
            (if (gx#stx-pair? _%__stx116761116762%_)
                (let ((_%e110812110981%_ (gx#syntax-e _%__stx116761116762%_)))
                  (let ((_%tl110814110988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e110812110981%_)))
                        (_%hd110813110985%_
                         (let ()
                           (declare (not safe))
                           (##car _%e110812110981%_))))
                    (if (gx#stx-pair? _%tl110814110988%_)
                        (let ((_%e110815110991%_
                               (gx#syntax-e _%tl110814110988%_)))
                          (let ((_%tl110817110998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e110815110991%_)))
                                (_%hd110816110995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e110815110991%_))))
                            (if (gx#stx-pair? _%tl110817110998%_)
                                (let ((_%e110818111001%_
                                       (gx#syntax-e _%tl110817110998%_)))
                                  (let ((_%tl110820111008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e110818111001%_)))
                                        (_%hd110819111005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e110818111001%_))))
                                    (if (gx#stx-pair? _%tl110820111008%_)
                                        (let ((_%e110821111011%_
                                               (gx#syntax-e
                                                _%tl110820111008%_)))
                                          (let ((_%tl110823111018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e110821111011%_)))
                                                (_%hd110822111015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e110821111011%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd110822111015%_)
                                                (let ((_%__splice116766116767%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd110822111015%_
                                                        '0)))
                                                  (let ((_%tl110826111024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice116766116767%_
                                                            '1)))
                                                        (_%target110824111021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice116766116767%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl110826111024%_)
                                                        (_%__match116804116805%_
                                                         _%e110812110981%_
                                                         _%hd110813110985%_
                                                         _%tl110814110988%_
                                                         _%e110815110991%_
                                                         _%hd110816110995%_
                                                         _%tl110817110998%_
                                                         _%e110818111001%_
                                                         _%hd110819111005%_
                                                         _%tl110820111008%_
                                                         _%e110821111011%_
                                                         _%hd110822111015%_
                                                         _%tl110823111018%_
                                                         _%__splice116766116767%_
                                                         _%target110824111021%_
                                                         _%tl110826111024%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g110806110865%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g110806110865%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g110806110865%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g110806110865%_)))))
                        (let () (declare (not safe)) (_%g110806110865%_)))))
                (let () (declare (not safe)) (_%g110806110865%_))))))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx111110%_)
      (let* ((_%__stx116839116840%_ _%$stx111110%_)
             (_%g111115111174%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx116839116840%_))))
        (let ((_%__kont116842116843%_
               (lambda (_%g111117111368%_
                        _%g111118111370%_
                        _%g111119111371%_
                        _%g111120111372%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g111120111372%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g111120111372%_
                                                           (cons (let ((__tmp117065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g111396111399%_ _%g111397111402%_)
                                  (cons _%g111396111399%_ _%g111397111402%_))))
                           (declare (not safe))
                           (__foldr1 __tmp117065 '() _%g111119111371%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__shadow-class)
                                                           (cons _%g111118111370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g111117111368%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont116846116847%_
               (lambda (_%g111145111249%_ _%g111146111251%_ _%g111147111252%_)
                 (cons (gx#datum->syntax '#f 'defshadow-class)
                       (cons _%g111147111252%_
                             (cons (let ((__tmp117066
                                          (lambda (_%g111274111277%_
                                                   _%g111275111280%_)
                                            (cons _%g111274111277%_
                                                  _%g111275111280%_))))
                                     (declare (not safe))
                                     (__foldr1
                                      __tmp117066
                                      '()
                                      _%g111146111251%_))
                                   (cons _%g111145111249%_
                                         (cons '() '()))))))))
          (let* ((_%__match116902116903%_
                  (lambda (_%e111148111181%_
                           _%hd111149111185%_
                           _%tl111150111188%_
                           _%e111151111191%_
                           _%hd111152111195%_
                           _%tl111153111198%_
                           _%e111154111201%_
                           _%hd111155111205%_
                           _%tl111156111208%_
                           _%__splice116848116849%_
                           _%target111157111211%_
                           _%tl111159111214%_)
                    (letrec ((_%loop111160111217%_
                              (lambda (_%hd111158111221%_
                                       _%super111164111224%_)
                                (if (gx#stx-pair? _%hd111158111221%_)
                                    (let ((_%e111161111226%_
                                           (gx#syntax-e _%hd111158111221%_)))
                                      (let ((_%lp-tl111163111233%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111161111226%_)))
                                            (_%lp-hd111162111230%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111161111226%_))))
                                        (_%loop111160111217%_
                                         _%lp-tl111163111233%_
                                         (cons _%lp-hd111162111230%_
                                               _%super111164111224%_))))
                                    (let ((_%super111165111236%_
                                           (reverse _%super111164111224%_)))
                                      (if (gx#stx-pair? _%tl111156111208%_)
                                          (let ((_%e111166111239%_
                                                 (gx#syntax-e
                                                  _%tl111156111208%_)))
                                            (let ((_%tl111168111246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111166111239%_)))
                                                  (_%hd111167111243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111166111239%_))))
                                              (if (gx#stx-null?
                                                   _%tl111168111246%_)
                                                  (_%__kont116846116847%_
                                                   _%hd111167111243%_
                                                   _%super111165111236%_
                                                   _%hd111152111195%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g111115111174%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g111115111174%_))))))))
                      (_%loop111160111217%_ _%target111157111211%_ '()))))
                 (_%__match116876116877%_
                  (lambda (_%e111121111290%_
                           _%hd111122111294%_
                           _%tl111123111297%_
                           _%e111124111300%_
                           _%hd111125111304%_
                           _%tl111126111307%_
                           _%e111127111310%_
                           _%hd111128111314%_
                           _%tl111129111317%_
                           _%__splice116844116845%_
                           _%target111130111320%_
                           _%tl111132111323%_)
                    (letrec ((_%loop111133111326%_
                              (lambda (_%hd111131111330%_
                                       _%super111137111333%_)
                                (if (gx#stx-pair? _%hd111131111330%_)
                                    (let ((_%e111134111335%_
                                           (gx#syntax-e _%hd111131111330%_)))
                                      (let ((_%lp-tl111136111342%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e111134111335%_)))
                                            (_%lp-hd111135111339%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e111134111335%_))))
                                        (_%loop111133111326%_
                                         _%lp-tl111136111342%_
                                         (cons _%lp-hd111135111339%_
                                               _%super111137111333%_))))
                                    (let ((_%super111138111345%_
                                           (reverse _%super111137111333%_)))
                                      (if (gx#stx-pair? _%tl111129111317%_)
                                          (let ((_%e111139111348%_
                                                 (gx#syntax-e
                                                  _%tl111129111317%_)))
                                            (let ((_%tl111141111355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111139111348%_)))
                                                  (_%hd111140111352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111139111348%_))))
                                              (if (gx#stx-pair?
                                                   _%tl111141111355%_)
                                                  (let ((_%e111142111358%_
                                                         (gx#syntax-e
                                                          _%tl111141111355%_)))
                                                    (let ((_%tl111144111365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e111142111358%_)))
                                                          (_%hd111143111362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e111142111358%_))))
                                                      (if (gx#stx-null?
                                                           _%tl111144111365%_)
                                                          (_%__kont116842116843%_
                                                           _%hd111143111362%_
                                                           _%hd111140111352%_
                                                           _%super111138111345%_
                                                           _%hd111125111304%_)
                                                          (_%__match116902116903%_
                                                           _%e111121111290%_
                                                           _%hd111122111294%_
                                                           _%tl111123111297%_
                                                           _%e111124111300%_
                                                           _%hd111125111304%_
                                                           _%tl111126111307%_
                                                           _%e111127111310%_
                                                           _%hd111128111314%_
                                                           _%tl111129111317%_
                                                           _%__splice116844116845%_
                                                           _%target111130111320%_
                                                           _%tl111132111323%_))))
                                                  (_%__match116902116903%_
                                                   _%e111121111290%_
                                                   _%hd111122111294%_
                                                   _%tl111123111297%_
                                                   _%e111124111300%_
                                                   _%hd111125111304%_
                                                   _%tl111126111307%_
                                                   _%e111127111310%_
                                                   _%hd111128111314%_
                                                   _%tl111129111317%_
                                                   _%__splice116844116845%_
                                                   _%target111130111320%_
                                                   _%tl111132111323%_))))
                                          (_%__match116902116903%_
                                           _%e111121111290%_
                                           _%hd111122111294%_
                                           _%tl111123111297%_
                                           _%e111124111300%_
                                           _%hd111125111304%_
                                           _%tl111126111307%_
                                           _%e111127111310%_
                                           _%hd111128111314%_
                                           _%tl111129111317%_
                                           _%__splice116844116845%_
                                           _%target111130111320%_
                                           _%tl111132111323%_)))))))
                      (_%loop111133111326%_ _%target111130111320%_ '())))))
            (if (gx#stx-pair? _%__stx116839116840%_)
                (let ((_%e111121111290%_ (gx#syntax-e _%__stx116839116840%_)))
                  (let ((_%tl111123111297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e111121111290%_)))
                        (_%hd111122111294%_
                         (let ()
                           (declare (not safe))
                           (##car _%e111121111290%_))))
                    (if (gx#stx-pair? _%tl111123111297%_)
                        (let ((_%e111124111300%_
                               (gx#syntax-e _%tl111123111297%_)))
                          (let ((_%tl111126111307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111124111300%_)))
                                (_%hd111125111304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111124111300%_))))
                            (if (gx#stx-pair? _%tl111126111307%_)
                                (let ((_%e111127111310%_
                                       (gx#syntax-e _%tl111126111307%_)))
                                  (let ((_%tl111129111317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111127111310%_)))
                                        (_%hd111128111314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111127111310%_))))
                                    (if (gx#stx-pair/null? _%hd111128111314%_)
                                        (let ((_%__splice116844116845%_
                                               (gx#syntax-split-splice->vector
                                                _%hd111128111314%_
                                                '0)))
                                          (let ((_%tl111132111323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice116844116845%_
                                                    '1)))
                                                (_%target111130111320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice116844116845%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%tl111132111323%_)
                                                (_%__match116876116877%_
                                                 _%e111121111290%_
                                                 _%hd111122111294%_
                                                 _%tl111123111297%_
                                                 _%e111124111300%_
                                                 _%hd111125111304%_
                                                 _%tl111126111307%_
                                                 _%e111127111310%_
                                                 _%hd111128111314%_
                                                 _%tl111129111317%_
                                                 _%__splice116844116845%_
                                                 _%target111130111320%_
                                                 _%tl111132111323%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g111115111174%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g111115111174%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g111115111174%_)))))
                        (let () (declare (not safe)) (_%g111115111174%_)))))
                (let () (declare (not safe)) (_%g111115111174%_)))))))))
